/* jCAE stand for Java Computer Aided Engineering. Features are : Small CAD
   modeler, Finite element mesher, Plugin architecture.

    Copyright (C) 2005,2006 by EADS CRC
    Copyright (C) 2007,2008, by EADS France

    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public
    License as published by the Free Software Foundation; either
    version 2.1 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public
    License along with this library; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA */

package org.jcae.mesh.amibe.util;

import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * PAVL binary trees to store quality factors.
 * Main ideas come from Ben Pfaff's <a href="http://adtinfo.org/">GNU libavl</a>.
 * These trees are used to sort vertices, edges, or triangles according
 * to their quality factors, and to process them in increasing or decreasing
 * order after they have been sorted.  See examples in algorithms from
 * {@link org.jcae.mesh.amibe.algos3d}.
 */
public class PAVLSortedTree<E> extends QSortedTree<E>
{
	private static final long serialVersionUID = -8379296110137732906L;
	private static final Logger logger=Logger.getLogger(PAVLSortedTree.class.getName());
	
	private static class Node<E> extends QSortedTree.Node<E>
	{
		private static final long serialVersionUID = -5135595610942086763L;

		//  balanceFactor = height(rightSubTree) - height(leftSubTree)
		private int balanceFactor = 0;
		
		private Node(E o, double v)
		{
			super(o, v);
		}
		
		@SuppressWarnings("unchecked")
		@Override
		protected Node<E> [] newChilds()
		{
			return new Node[2];
		}

		@Override
		public void reset(double v)
		{
			super.reset(v);
			balanceFactor = 0;
		}
		
		/* Single left rotation
		    A                    B
		   / \      ------>     / \
		  T1  B                A   T3
		     / \              / \
		    T2 T3            T1 T2
		*/
		@Override
		public final Node<E> rotateL()
		{
			Node<E> right = (Node<E>) super.rotateL();
			if (right.balanceFactor != 0)
			{
				assert right.balanceFactor == 1;
				right.balanceFactor = 0;
				balanceFactor = 0;
			}
			else
			{
				// This case happens only when removing
				// a node below T1.
				right.balanceFactor = -1;
				balanceFactor = 1;
			}
			return right;
		}
		
		/* Single right rotation
		          B                    A
		         / \     ------->     / \
		        A  T3                T1  B
		       / \                      / \
		      T1 T2                    T2 T3
		*/
		@Override
		public final Node<E> rotateR()
		{
			Node<E> left = (Node<E>) super.rotateR();
			if (left.balanceFactor != 0)
			{
				assert left.balanceFactor == -1;
				left.balanceFactor = 0;
				balanceFactor = 0;
			}
			else
			{
				// This case happens only when removing
				// a node below T4.
				left.balanceFactor = 1;
				balanceFactor = -1;
			}
			return left;
		}
		
		/* Right+left rotation
		     A                      A                     B
		    / \      ------>       / \      ------>     /   \
		   T1  C                  T1  B                A     C
		      / \                    / \              / \   / \
		     B  T4                  T2  C            T1 T2 T3 T4
		    / \                        / \
		   T2 T3                      T3 T4
		*/
		@Override
		public final Node<E> rotateRL()
		{
			Node<E> newRoot = (Node<E>) super.rotateRL();
			assert balanceFactor == 2;
			if (newRoot.balanceFactor == 1)
			{
				// T2 is null, T3 != null
				newRoot.balanceFactor = 0;
				balanceFactor = -1;
				((Node<E>) newRoot.child[1]).balanceFactor = 0;
			}
			else if (newRoot.balanceFactor == -1)
			{
				// T3 is null, T2 != null
				newRoot.balanceFactor = 0;
				balanceFactor = 0;
				((Node<E>) newRoot.child[1]).balanceFactor = 1;
			}
			else
			{
				// T2 and T3 != null
				balanceFactor = 0;
				((Node<E>) newRoot.child[1]).balanceFactor = 0;
			}
			return newRoot;
		}
		
		/*  Left+right rotation
		      C                  C                    B
		     / \    ------>     / \    ------>      /   \
		    A  T4              B  T4               A     C
		   / \                / \                 / \   / \
		  T1  B              A  T3               T1 T2 T3 T4
		     / \            / \
		    T2 T3          T1 T2
		*/
		@Override
		public final Node<E> rotateLR()
		{
			Node<E> newRoot = (Node<E>) super.rotateLR();
			assert balanceFactor == -2;
			// Balance factors, T1 and T4 are not null,
			// and T2 and T3 cannot be both null.
			if (newRoot.balanceFactor == -1)
			{
				// T3 is null, T2 != null
				newRoot.balanceFactor = 0;
				balanceFactor = 1;
				((Node<E>) newRoot.child[0]).balanceFactor = 0;
			}
			else if (newRoot.balanceFactor == 1)
			{
				// T2 is null, T3 != null
				newRoot.balanceFactor = 0;
				balanceFactor = 0;
				((Node<E>) newRoot.child[0]).balanceFactor = -1;
			}
			else
			{
				// T2 and T3 != null
				balanceFactor = 0;
				((Node<E>) newRoot.child[0]).balanceFactor = 0;
			}
			return newRoot;
		}

		@Override
		public final String toString()
		{
			return super.toString()+" bal. "+balanceFactor;
		}
	}
	
	@Override
	final Node<E> newNode(E o, double v)
	{
		return new Node<E>(o, v);
	}

	@Override
	final boolean insertNode(QSortedTree.Node<E> o)
	{
		Node<E> node = (Node<E>) o;
		Node<E> current = (Node<E>) root.child[0];
		Node<E> parent = (Node<E>) root;
		Node<E> topNode = current;
		int lastDir = 0;
		while (current != null)
		{
			if (node.compareTo(current) < 0)
				lastDir = 0;
			else
				lastDir = 1;
			if (current.balanceFactor != 0)
				topNode = current;
			parent = current;
			current = (Node<E>) current.child[lastDir];
		}
		// Insert node
		parent.child[lastDir] = node;
		node.parent = parent;
		if (topNode == null)
			return true;
		// Update balance factors
		for (current = node; current != topNode; current = parent)
		{
			parent = (Node<E>) current.parent;
			if (parent.child[0] == current)
				parent.balanceFactor--;
			else
				parent.balanceFactor++;
		}
		parent = (Node<E>) topNode.parent;
		// Balance subtree
		Node<E> newRoot = null;
		if (topNode.balanceFactor == -2)
		{
			Node<E> left = (Node<E>) topNode.child[0];
			if (left.balanceFactor == -1)
				newRoot = topNode.rotateR();
			else
				newRoot = topNode.rotateLR();
		}
		else if (topNode.balanceFactor == 2)
		{
			Node<E> right = (Node<E>) topNode.child[1];
			if (right.balanceFactor == 1)
				newRoot = topNode.rotateL();
			else
				newRoot = topNode.rotateRL();
		}
		else
			return true;
		
		if (parent.child[0] == topNode)
			parent.child[0] = newRoot;
		else
			parent.child[1] = newRoot;
		return true;
	}
	
	@Override
	final Node<E> removeNode(QSortedTree.Node<E> o)
	{
		assert o != null;
		Node<E> p = (Node<E>) o;
		Node<E> ret = p;
		if (logger.isLoggable(Level.FINE))
			logger.fine("Value: "+ret);
		int lastDir = 0;
		Node<E> q = (Node<E>) p.parent;
		if (q.child[1] == p)
			lastDir = 1;
		if (p.child[1] == null)
		{
			/* Deletion of p
			    q                    q
			   / \      ------>     / \
			  T1  p                T1 T2
			     /
			    T2
			*/
			q.child[lastDir] = p.child[0];
			if (q.child[lastDir] != null)
				q.child[lastDir].parent = p.parent;
		}
		else if (p.child[0] == null)
		{
			/* Deletion of p
			    q                    q
			   / \      ------>     / \
			  T1  p                T1 T2
			       \
			       T2
			*/
			q.child[lastDir] = p.child[1];
			if (q.child[lastDir] != null)
				q.child[lastDir].parent = p.parent;
		}
		else
		{
			//  p has two children.
			Node<E> r = (Node<E>) p.child[1];
			if (r.child[0] == null)
			{
				/* Deletion of p
				    q                    q
				   / \      ------>     / \
				  T1  p                T1  r
				     / \                  / \
				    T2  r                T2 T3
				         \
				         T3
				*/
				r.child[0] = p.child[0];
				q.child[lastDir] = r;
				r.parent = q;
				r.child[0].parent = r;
				r.balanceFactor = p.balanceFactor;
				// Tree above r needs to be rebalanced
				q = r;
				lastDir = 1;
			}
			else
			{
				//  Swap p with its successor node in the tree,
				//  then delete p
				r = (Node<E>) r.child[0];
				while (r.child[0] != null)
					r = (Node<E>) r.child[0];
				Node<E> s = (Node<E>) r.parent;
				s.child[0] = r.child[1];
				if (s.child[0] != null)
					s.child[0].parent = s;
				r.child[0] = p.child[0];
				r.child[1] = p.child[1];
				q.child[lastDir] = r;
				r.child[0].parent = r;
				r.child[1].parent = r;
				r.parent = q;
				r.balanceFactor = p.balanceFactor;
				// Tree above s needs to be rebalanced
				q = s;
				lastDir = 0;
			}
		}
		// A node in the direction lastDir has been deleted from q,
		// so the nodes above may need to be updated.
		int dir = lastDir;
		while (q != root)
		{
			Node<E> y = q;
			q = (Node<E>) q.parent;
			lastDir = dir;
			if (q.child[0] == y)
				dir = 0;
			else
				dir = 1;
			if (lastDir == 0)
			{
				y.balanceFactor++;
				// A node had been deleted on the left
				// branch of q.  If the new balance is 0,
				// height tree has changed, so upper nodes
				// need to be checked too.  If it is 1,
				// its height had not changed and processing
				// can stop.  If it is 2, this node needs
				// to be rebalanced, and processing can stop
				// if its balance factor becomes 1.
				if (y.balanceFactor == 2)
				{
					if (((Node<E>) y.child[1]).balanceFactor == -1)
						q.child[dir] = y.rotateRL();
					else
						q.child[dir] = y.rotateL();
				}
				if (y.balanceFactor == 1)
					break;
			}
			else
			{
				y.balanceFactor--;
				if (y.balanceFactor == -2)
				{
					if (((Node<E>) y.child[0]).balanceFactor == 1)
						q.child[dir] = y.rotateLR();
					else
						q.child[dir] = y.rotateR();
				}
				if (y.balanceFactor == -1)
					break;
			}
		}
		return ret;
	}

}
