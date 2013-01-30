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
 * (C) Copyright 2007, by EADS France
 */
%{#include <BRepFilletAPI_LocalOperation.hxx>%}
%{#include <BRepFilletAPI_MakeChamfer.hxx>%}
%{#include <BRepFilletAPI_MakeFillet.hxx>%}
%{#include <BRepFilletAPI_MakeFillet2d.hxx>%}

class BRepFilletAPI_LocalOperation: public BRepBuilderAPI_MakeShape
{
	public:
	void Add(const TopoDS_Edge& E) = 0;
	void ResetContour(const Standard_Integer IC) = 0;
	Standard_Integer NbContours() const = 0;
	Standard_Integer Contour(const TopoDS_Edge& E) const = 0;
	Standard_Integer NbEdges(const Standard_Integer I) const = 0;
	const TopoDS_Edge& Edge(const Standard_Integer I,const Standard_Integer J) const = 0;
	void Remove(const TopoDS_Edge& E) = 0;
	Standard_Real Length(const Standard_Integer IC) const = 0;
	TopoDS_Vertex FirstVertex(const Standard_Integer IC) const = 0;
	TopoDS_Vertex LastVertex(const Standard_Integer IC) const = 0;
	Standard_Real Abscissa(const Standard_Integer IC,const TopoDS_Vertex& V) const = 0;
	Standard_Real RelativeAbscissa(const Standard_Integer IC,const TopoDS_Vertex& V) const = 0;
	Standard_Boolean ClosedAndTangent(const Standard_Integer IC) const = 0;
	Standard_Boolean Closed(const Standard_Integer IC) const = 0;
	void Reset() = 0;
	void Simulate(const Standard_Integer IC) = 0;
	Standard_Integer NbSurf(const Standard_Integer IC) const = 0;
};

class BRepFilletAPI_MakeChamfer: public BRepFilletAPI_LocalOperation
{
    public:
    BRepFilletAPI_MakeChamfer(const TopoDS_Shape& S);
	void Add(const TopoDS_Edge& E);
	void Add(const Standard_Real Dis,const TopoDS_Edge& E,const TopoDS_Face& F);
	void SetDist(const Standard_Real Dis,const Standard_Integer IC,const TopoDS_Face& F);
	void GetDist(const Standard_Integer IC,Standard_Real Dis) const;
	void Add(const Standard_Real Dis1,const Standard_Real Dis2,const TopoDS_Edge& E,const TopoDS_Face& F);
    void SetDists(const Standard_Real Dis1,const Standard_Real Dis2,const Standard_Integer IC,const TopoDS_Face& F);
	void Dists(const Standard_Integer IC,Standard_Real Dis1,Standard_Real Dis2) const;
	void AddDA(const Standard_Real Dis,const Standard_Real Angle,const TopoDS_Edge& E,const TopoDS_Face& F);
	void SetDistAngle(const Standard_Real Dis,const Standard_Real Angle,const Standard_Integer IC,const TopoDS_Face& F);
	void GetDistAngle(const Standard_Integer IC,Standard_Real Dis,Standard_Real Angle,Standard_Boolean DisOnFace1) const;
	Standard_Boolean IsSymetric(const Standard_Integer IC) const;
	Standard_Boolean IsTwoDistances(const Standard_Integer IC) const;
	Standard_Boolean IsDistanceAngle(const Standard_Integer IC) const;
	void ResetContour(const Standard_Integer IC);
	Standard_Integer NbContours() const;
	Standard_Integer Contour(const TopoDS_Edge& E) const;
	Standard_Integer NbEdges(const Standard_Integer I) const;
	const TopoDS_Edge& Edge(const Standard_Integer I,const Standard_Integer J) const;
	void Remove(const TopoDS_Edge& E);
	Standard_Real Length(const Standard_Integer IC) const;
	TopoDS_Vertex FirstVertex(const Standard_Integer IC) const;
	TopoDS_Vertex LastVertex(const Standard_Integer IC) const;
	Standard_Real Abscissa(const Standard_Integer IC,const TopoDS_Vertex& V) const;
	Standard_Real RelativeAbscissa(const Standard_Integer IC,const TopoDS_Vertex& V) const;
	Standard_Boolean ClosedAndTangent(const Standard_Integer IC) const;
	Standard_Boolean Closed(const Standard_Integer IC) const;
	void Build();
	void Reset();
	const TopTools_ListOfShape& Generated(const TopoDS_Shape& EorV);
	const TopTools_ListOfShape& Modified(const TopoDS_Shape& F);
	Standard_Boolean IsDeleted(const TopoDS_Shape& F);
	void Simulate(const Standard_Integer IC);
	Standard_Integer NbSurf(const Standard_Integer IC) const;
};

class BRepFilletAPI_MakeFillet: public BRepFilletAPI_LocalOperation
{ 
	public:
	BRepFilletAPI_MakeFillet(const TopoDS_Shape& S,const ChFi3d_FilletShape FShape = ChFi3d_Rational);
	void SetParams(const Standard_Real Tang,const Standard_Real Tesp,const Standard_Real T2d,const Standard_Real TApp3d,const Standard_Real TolApp2d,const Standard_Real Fleche);
	void SetContinuity(const GeomAbs_Shape InternalContinuity,const Standard_Real AngularTolerance);
	void Add(const TopoDS_Edge& E);
	void Add(const Standard_Real Radius,const TopoDS_Edge& E);
	void Add(const Standard_Real R1,const Standard_Real R2,const TopoDS_Edge& E);
	//void Add(const Handle_Law_Function& L,const TopoDS_Edge& E);
	//void Add(const TColgp_Array1OfPnt2d& UandR,const TopoDS_Edge& E);
	void SetRadius(const Standard_Real Radius,const Standard_Integer IC,const Standard_Integer IinC);
	void SetRadius(const Standard_Real R1,const Standard_Real R2,const Standard_Integer IC,const Standard_Integer IinC);
	//void SetRadius(const Handle_Law_Function& L,const Standard_Integer IC,const Standard_Integer IinC);
	//void SetRadius(const TColgp_Array1OfPnt2d& UandR,const Standard_Integer IC,const Standard_Integer IinC);
	void ResetContour(const Standard_Integer IC);
	Standard_Boolean IsConstant(const Standard_Integer IC);
	Standard_Real Radius(const Standard_Integer IC);
	Standard_Boolean IsConstant(const Standard_Integer IC,const TopoDS_Edge& E);
	Standard_Real Radius(const Standard_Integer IC,const TopoDS_Edge& E);
	void SetRadius(const Standard_Real Radius,const Standard_Integer IC,const TopoDS_Edge& E);
	void SetRadius(const Standard_Real Radius,const Standard_Integer IC,const TopoDS_Vertex& V);
	Standard_Boolean GetBounds(const Standard_Integer IC,const TopoDS_Edge& E,Standard_Real F,Standard_Real L);
	//Handle_Law_Function GetLaw(const Standard_Integer IC,const TopoDS_Edge& E);
	//void SetLaw(const Standard_Integer IC,const TopoDS_Edge& E,const Handle_Law_Function& L);
	void SetFilletShape(const ChFi3d_FilletShape FShape);
	ChFi3d_FilletShape GetFilletShape() const;
	Standard_Integer NbContours() const;
	Standard_Integer Contour(const TopoDS_Edge& E) const;
	Standard_Integer NbEdges(const Standard_Integer I) const;
	const TopoDS_Edge& Edge(const Standard_Integer I,const Standard_Integer J) const;
	void Remove(const TopoDS_Edge& E);
	Standard_Real Length(const Standard_Integer IC) const;
	TopoDS_Vertex FirstVertex(const Standard_Integer IC) const;
	TopoDS_Vertex LastVertex(const Standard_Integer IC) const;
	Standard_Real Abscissa(const Standard_Integer IC,const TopoDS_Vertex& V) const;
	Standard_Real RelativeAbscissa(const Standard_Integer IC,const TopoDS_Vertex& V) const;
	Standard_Boolean ClosedAndTangent(const Standard_Integer IC) const;
	Standard_Boolean Closed(const Standard_Integer IC) const;
	void Build();
	void Reset();
	const TopTools_ListOfShape& Generated(const TopoDS_Shape& EorV);
	const TopTools_ListOfShape& Modified(const TopoDS_Shape& F);
	Standard_Boolean IsDeleted(const TopoDS_Shape& F);
	Standard_Integer NbSurfaces() const;
	const TopTools_ListOfShape& NewFaces(const Standard_Integer I);
	void Simulate(const Standard_Integer IC);
	Standard_Integer NbSurf(const Standard_Integer IC) const;
	Standard_Integer NbFaultyContours() const;
	Standard_Integer FaultyContour(const Standard_Integer I) const;
	Standard_Integer NbComputedSurfaces(const Standard_Integer IC) const;
	Handle_Geom_Surface ComputedSurface(const Standard_Integer IC,const Standard_Integer IS) const;
	Standard_Integer NbFaultyVertices() const;
	TopoDS_Vertex FaultyVertex(const Standard_Integer IV) const;
	Standard_Boolean HasResult() const;
	TopoDS_Shape BadShape() const;
};

class BRepFilletAPI_MakeFillet2d: public BRepBuilderAPI_MakeShape
{ 
	public:
	BRepFilletAPI_MakeFillet2d();
	BRepFilletAPI_MakeFillet2d(const TopoDS_Face& F);
	void Init(const TopoDS_Face& F);
	void Init(const TopoDS_Face& RefFace,const TopoDS_Face& ModFace);
	TopoDS_Edge AddFillet(const TopoDS_Vertex& V,const Standard_Real Radius);
	TopoDS_Edge ModifyFillet(const TopoDS_Edge& Fillet,const Standard_Real Radius);
	TopoDS_Vertex RemoveFillet(const TopoDS_Edge& Fillet);
	TopoDS_Edge AddChamfer(const TopoDS_Edge& E1,const TopoDS_Edge& E2,const Standard_Real D1,const Standard_Real D2);
	TopoDS_Edge AddChamfer(const TopoDS_Edge& E,const TopoDS_Vertex& V,const Standard_Real D,const Standard_Real Ang);
	TopoDS_Edge ModifyChamfer(const TopoDS_Edge& Chamfer,const TopoDS_Edge& E1,const TopoDS_Edge& E2,const Standard_Real D1,const Standard_Real D2);
	TopoDS_Edge ModifyChamfer(const TopoDS_Edge& Chamfer,const TopoDS_Edge& E,const Standard_Real D,const Standard_Real Ang);
	TopoDS_Vertex RemoveChamfer(const TopoDS_Edge& Chamfer);
	Standard_Boolean IsModified(const TopoDS_Edge& E) const; 
	//const TopTools_SequenceOfShape& FilletEdges() const;
	Standard_Integer NbFillet() const;
	//const TopTools_SequenceOfShape& ChamferEdges() const;
	Standard_Integer NbChamfer() const;
	const TopTools_ListOfShape& Modified(const TopoDS_Shape& S);
	Standard_Integer NbCurves() const;
	const TopTools_ListOfShape& NewEdges(const Standard_Integer I);
	Standard_Boolean HasDescendant(const TopoDS_Edge& E) const;
	const TopoDS_Edge& DescendantEdge(const TopoDS_Edge& E) const;
	const TopoDS_Edge& BasisEdge(const TopoDS_Edge& E) const;
	void Build();
};

%{#include <ChFi3d_FilletShape.hxx>%}

enum ChFi3d_FilletShape {
ChFi3d_Rational,
ChFi3d_QuasiAngular,
ChFi3d_Polynomial
};

