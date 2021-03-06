/*
 * Project Info:  http://jcae.sourceforge.net
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software Foundation, Inc.,
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307, USA.
 *
 * (C) Copyright 2008, by EADS France
 */

package org.jcae.vtk;

import java.awt.Color;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import org.jcae.opencascade.jni.TopoDS_Edge;
import org.jcae.opencascade.jni.TopoDS_Face;
import org.jcae.opencascade.jni.TopoDS_Shape;
import org.jcae.opencascade.jni.TopoDS_Vertex;
import org.jcae.vtk.AbstractNode.ActorCustomiser;
import vtk.vtkActor;
import vtk.vtkProperty;

/**
 *
 * @author Julian Ibarz
 */
public class ViewableCAD extends Viewable
{
	private final OCCMeshExtractor meshExtractor;
	/** Specify which type of object is selectable */
	private ShapeType shapeTypeSelection = ShapeType.FACE;
	private final Color frontFaceColor = new Color(255 / 2, 255 / 2, 255);
	private final Color backFaceColor = Color.LIGHT_GRAY;//new Color(255 / 2, 255, 255 / 2);
	private final Color vertexColor = Color.BLUE;
	private Color edgeColor = Color.WHITE;
	private Color freeEdgeColor = Color.GREEN;
	private final HashMap<TopoDS_Vertex, LeafNode> topoToNodeVertex = new HashMap<TopoDS_Vertex, LeafNode>();
	private final HashMap<TopoDS_Edge, LeafNode> topoToNodeEdge = new HashMap<TopoDS_Edge, LeafNode>();
	private final HashMap<TopoDS_Face, LeafNode> topoToNodeFaceFront = new HashMap<TopoDS_Face, LeafNode>();
	private final HashMap<TopoDS_Face, LeafNode> topoToNodeFaceBack = new HashMap<TopoDS_Face, LeafNode>();
	private final HashMap<LeafNode, TopoDS_Shape> nodeToTopo = new HashMap<LeafNode, TopoDS_Shape>();
	private Node faces = null;
	private Node edges = null;
	private Node vertices = null;
	private int vertexSize = 4;
	private int edgeSize = 2;
	private boolean onlyFreeEdges = false;
	private Node facesFront, facesBack;
	
	public enum ShapeType
	{
		VERTEX,
		EDGE,
		FACE
	}
			
	private ViewableCAD(OCCMeshExtractor meshExtractor, boolean onlyFreeEdges)
	{
		this.meshExtractor = meshExtractor;
		this.onlyFreeEdges = onlyFreeEdges;
		
		computeNodes();
		rootNode.refresh();
		setShapeTypeSelection(shapeTypeSelection);
	}

	public void refresh()
	{
		rootNode.removeAllChildren();
		computeNodes();
		rootNode.refresh();
		render();
	}
	
	public ViewableCAD(TopoDS_Shape shape)
	{
		this(new OCCMeshExtractor(shape), false);
	}
	
	public ViewableCAD(TopoDS_Shape shape, boolean onlyFreeEdges)
	{
		this(new OCCMeshExtractor(shape), onlyFreeEdges);
	}
	
	public ViewableCAD(String filename)
	{
		this(new OCCMeshExtractor(filename), false);
	}

	public Color getEdgeColor()
	{
		return edgeColor;
	}

	public void setEdgeColor(Color edgeColor)
	{
		this.edgeColor = edgeColor;
		for(LeafNode edge : topoToNodeEdge.values())
			edge.setColor(edgeColor);
		
		edges.refresh();
	}

	public int getEdgeSize()
	{
		return edgeSize;
	}

	public void setEdgeSize(int edgeSize)
	{
		this.edgeSize = edgeSize;
		// Calling setActorCustomiser() forces edges Node to be refreshed
		edges.setActorCustomiser(new AbstractNode.ActorCustomiser()
		{
			public void customiseActor(vtkActor actor)
			{
				actor.GetProperty().SetLineWidth(ViewableCAD.this.edgeSize);
			}
		});
		edges.refresh();
	}

	protected void testDataChange()
	{
		int i = 0;
		for(LeafNode leaf : rootNode.getLeaves())
		{
			LeafNode.DataProvider data = new LeafNode.DataProvider();
			data.setNodes(new float[] {i,0,0,i+1,0,0} );
			i+=2;
			data.setLines(new int[]{2,0,1});
			leaf.setDataProvider(data);
		}
		rootNode.refresh();
	}
	
	private void computeNodes()
	{
		vertices = new Node(rootNode);
		vertices.setManager(true);
		vertices.setActorCustomiser(new AbstractNode.ActorCustomiser()
		{
			public void customiseActor(vtkActor actor)
			{
				vtkProperty p = actor.GetProperty();
				p.SetPointSize(vertexSize);
			}
		});
		
		vertices.setSelectionActorCustomiser(new Viewable.SelectionActorCustomiser()
		{
			@Override
			public void customiseActor(vtkActor actor)
			{
				super.customiseActor(actor);				
				actor.GetProperty().SetPointSize(vertexSize*2);
			}
		});
		
		edges = new Node(rootNode);
		edges.setManager(true);
		edges.setActorCustomiser(new AbstractNode.ActorCustomiser()
		{
			public void customiseActor(vtkActor actor)
			{
				vtkProperty p = actor.GetProperty();
				p.SetLineWidth(edgeSize);
			}
		});
		
		faces = new Node(rootNode);
		faces.setActorCustomiser(new AbstractNode.ActorCustomiser()
		{
			public void customiseActor(vtkActor actor)
			{
				vtkProperty p = actor.GetProperty();
				p.BackfaceCullingOn();
			}
		});
		
		facesFront = new Node(faces);
		facesBack = new Node(faces);
		facesFront.setManager(true);
		facesBack.setManager(true);

		// Add the edges
		Collection<TopoDS_Edge> freeEdges = meshExtractor.getFreeEdges();
		for (TopoDS_Edge edge : meshExtractor.getEdges())
		{
			Color color = edgeColor;
			if (freeEdges.contains(edge))
				color = freeEdgeColor;
			else if(onlyFreeEdges)
				continue;

			LeafNode edgeNode = new LeafNode(edges, new OCCMeshExtractor.EdgeData(edge), color);
			topoToNodeEdge.put(edge, edgeNode);
			nodeToTopo.put(edgeNode, edge);
		}

		if (!onlyFreeEdges)
		{
			// Add vertices
			for (TopoDS_Vertex vertex : meshExtractor.getVertices())
			{
				LeafNode vertexNode = new LeafNode(vertices, new OCCMeshExtractor.VertexData(vertex), this.vertexColor);				
				topoToNodeVertex.put(vertex, vertexNode);
				nodeToTopo.put(vertexNode, vertex);
			}

			// Add faces
			for (TopoDS_Face face : meshExtractor.getFaces())
			{
				LeafNode faceNode = new LeafNode(facesFront, new OCCMeshExtractor.FaceData(face, false), this.frontFaceColor);
				topoToNodeFaceFront.put(face, faceNode);
				nodeToTopo.put(faceNode, face);
				
				LeafNode backFaceNode = new LeafNode(facesBack, new OCCMeshExtractor.FaceData(face, true), this.backFaceColor);
				topoToNodeFaceBack.put(face, backFaceNode);
				nodeToTopo.put(backFaceNode, face);
			}
		}
	}

	public void setTriangleVisible(final boolean b)
	{
		ActorCustomiser ac = new AbstractNode.ActorCustomiser() {
			@Override
			public void customiseActor(vtkActor actor) {
				vtkProperty p = actor.GetProperty();
				p.LightingOff();
				p.SetEdgeVisibility(b ? 1 : 0);
				p.SetEdgeColor(0.2, 0.2, 0.2);
			}
		};

		facesBack.setActorCustomiser(ac);
		facesFront.setActorCustomiser(ac);
		facesBack.refresh();
		facesFront.refresh();
		render();
	}

	public Node getEdges()
	{
		return edges;
	}

	public Collection<TopoDS_Shape> getSelection()
	{
		HashSet<TopoDS_Shape> selection = new HashSet<TopoDS_Shape>(selectionNode.size());
		
		for(LeafNode leaf : selectionNode)
		{
			selection.add(nodeToTopo.get(leaf));
		}
		return selection;
	}

	public void selectSelectionNodes() {
		for (LeafNode n :rootNode.getLeaves())
			n.unselect();
		for (LeafNode n : selectionNode)
			if (n!=null)
				n.select();
	}

	/**
	 * Set the new selection.
	 * Be careful, the listeners of change selection will not  be informed.
	 * 
	 * @param selection 
	 */
	public void setSelection(Collection<TopoDS_Shape> selection)
	{
		selectionNode = new HashSet<LeafNode>(selection.size());
		
		for(TopoDS_Shape shape : selection)
		{
			if(shape instanceof TopoDS_Vertex)
			{
				selectionNode.add(topoToNodeVertex.get((TopoDS_Vertex)shape));
			}
			else if(shape instanceof TopoDS_Edge)
			{
				selectionNode.add(topoToNodeEdge.get((TopoDS_Edge)shape));
			}
			else if(shape instanceof TopoDS_Face)
			{
				selectionNode.add(topoToNodeFaceFront.get((TopoDS_Face)shape));
				selectionNode.add(topoToNodeFaceBack.get((TopoDS_Face)shape));
			}
		}
	}

	public OCCMeshExtractor getMeshExtractor()
	{
		return meshExtractor;
	}

	public ShapeType getShapeTypeSelection()
	{
		return shapeTypeSelection;
	}

	public void setShapeTypeSelection(ShapeType shapeTypeSelection)
	{
		this.shapeTypeSelection = shapeTypeSelection;

		vertices.setPickable(false);
		edges.setPickable(false);
		faces.setPickable(false);
		setPixelTolerance(0);
		
		switch(shapeTypeSelection)
		{
			case VERTEX:
				setPixelTolerance(3);
				vertices.setPickable(true);
				break;
			case EDGE:
				setPixelTolerance(3);
				edges.setPickable(true);
				break;
			case FACE:
				faces.setPickable(true);
				break;
			default:
				throw new IllegalStateException();
		}
	}
	
}
