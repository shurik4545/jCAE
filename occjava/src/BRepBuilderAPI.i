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
 * (C) Copyright 2005, by EADS CRC
 */

%{
#include <BRepBuilderAPI.hxx>
#include <BRepBuilderAPI_Copy.hxx>
#include <BRepBuilderAPI_FindPlane.hxx>
#include <BRepBuilderAPI_GTransform.hxx>
#include <BRepBuilderAPI_MakeEdge.hxx>
#include <BRepBuilderAPI_MakeFace.hxx>
#include <BRepBuilderAPI_MakePolygon.hxx>
#include <BRepBuilderAPI_MakeShape.hxx>
#include <BRepBuilderAPI_MakeShell.hxx>
#include <BRepBuilderAPI_MakeSolid.hxx>
#include <BRepBuilderAPI_MakeVertex.hxx>
#include <BRepBuilderAPI_MakeWire.hxx>
#include <BRepBuilderAPI_ModifyShape.hxx>
#include <BRepBuilderAPI_NurbsConvert.hxx>
#include <BRepBuilderAPI_Sewing.hxx>
#include <BRepBuilderAPI_Transform.hxx>
%}

class BRepBuilderAPI
{
	public:
	void Plane(const Handle_Geom_Plane& P);
	const Handle_Geom_Plane& Plane();
	void Precision(const Standard_Real P);
	Standard_Real Precision();
};

class BRepBuilderAPI_MakeShape
{
	BRepBuilderAPI_MakeShape()=0;
	public:
	void Delete();
	void Build();
	const TopoDS_Shape& Shape() const;
	Standard_Boolean IsDeleted(const TopoDS_Shape& S);
};

class BRepBuilderAPI_ModifyShape : public BRepBuilderAPI_MakeShape
{
	BRepBuilderAPI_ModifyShape()=0;
	public:
	const TopTools_ListOfShape& Modified(const TopoDS_Shape& S);
	const TopoDS_Shape& ModifiedShape(const TopoDS_Shape& S) const;
};

class BRepBuilderAPI_Copy  : public BRepBuilderAPI_ModifyShape
{
	public:
	BRepBuilderAPI_Copy();
	BRepBuilderAPI_Copy(const TopoDS_Shape& S,const Standard_Boolean copyGeom = Standard_True);
	void Perform(const TopoDS_Shape& S,const Standard_Boolean copyGeom = Standard_True);
};

class BRepBuilderAPI_FindPlane
{
	public:
	BRepBuilderAPI_FindPlane();
	BRepBuilderAPI_FindPlane(const TopoDS_Shape& S,const Standard_Real Tol = -1);
	void Init(const TopoDS_Shape& S,const Standard_Real Tol = -1);
	Standard_Boolean Found() const;
	Handle_Geom_Plane Plane() const;
};

class BRepBuilderAPI_GTransform  : public BRepBuilderAPI_ModifyShape
{
	public:
	BRepBuilderAPI_GTransform(const gp_GTrsf& T);
	BRepBuilderAPI_GTransform(const TopoDS_Shape& S,const gp_GTrsf& T,const Standard_Boolean Copy = Standard_False);
	void Perform(const TopoDS_Shape& S,const Standard_Boolean Copy = Standard_False);
	const TopTools_ListOfShape& Modified(const TopoDS_Shape& S);
	const TopoDS_Shape& ModifiedShape(const TopoDS_Shape& S) const;
};

class BRepBuilderAPI_MakeEdge : public BRepBuilderAPI_MakeShape
{
	public:
	BRepBuilderAPI_MakeEdge();
	BRepBuilderAPI_MakeEdge(const TopoDS_Vertex& V1,const TopoDS_Vertex& V2);
	BRepBuilderAPI_MakeEdge(const gp_Pnt& P1,const gp_Pnt& P2);
	BRepBuilderAPI_MakeEdge(const gp_Lin& L);
	BRepBuilderAPI_MakeEdge(const gp_Lin& L,const Standard_Real p1,const Standard_Real p2);
	BRepBuilderAPI_MakeEdge(const gp_Lin& L,const gp_Pnt& P1,const gp_Pnt& P2);
	BRepBuilderAPI_MakeEdge(const gp_Lin& L,const TopoDS_Vertex& V1,const TopoDS_Vertex& V2);
    BRepBuilderAPI_MakeEdge(const gp_Circ& L);
    BRepBuilderAPI_MakeEdge(const gp_Circ& L,const Standard_Real p1,const Standard_Real p2);
    BRepBuilderAPI_MakeEdge(const gp_Circ& L,const gp_Pnt& P1,const gp_Pnt& P2);
    BRepBuilderAPI_MakeEdge(const gp_Circ& L,const TopoDS_Vertex& V1,const TopoDS_Vertex& V2);
    BRepBuilderAPI_MakeEdge(const gp_Elips& L);
    BRepBuilderAPI_MakeEdge(const gp_Elips& L,const Standard_Real p1,const Standard_Real p2);
    BRepBuilderAPI_MakeEdge(const gp_Elips& L,const gp_Pnt& P1,const gp_Pnt& P2);
    BRepBuilderAPI_MakeEdge(const gp_Elips& L,const TopoDS_Vertex& V1,const TopoDS_Vertex& V2);
    BRepBuilderAPI_MakeEdge(const gp_Hypr& L);
    BRepBuilderAPI_MakeEdge(const gp_Hypr& L,const Standard_Real p1,const Standard_Real p2); 
    BRepBuilderAPI_MakeEdge(const gp_Hypr& L,const gp_Pnt& P1,const gp_Pnt& P2);
    BRepBuilderAPI_MakeEdge(const gp_Hypr& L,const TopoDS_Vertex& V1,const TopoDS_Vertex& V2);
    BRepBuilderAPI_MakeEdge(const gp_Parab& L);
    BRepBuilderAPI_MakeEdge(const gp_Parab& L,const Standard_Real p1,const Standard_Real p2);
	BRepBuilderAPI_MakeEdge(const gp_Parab& L,const gp_Pnt& P1,const gp_Pnt& P2);
    BRepBuilderAPI_MakeEdge(const gp_Parab& L,const TopoDS_Vertex& V1,const TopoDS_Vertex& V2);
	BRepBuilderAPI_MakeEdge(const Handle_Geom_Curve& L);
	BRepBuilderAPI_MakeEdge(const Handle_Geom_Curve& L,const Standard_Real p1,const Standard_Real p2);
	BRepBuilderAPI_MakeEdge(const Handle_Geom_Curve& L,const gp_Pnt& P1,const gp_Pnt& P2);
	BRepBuilderAPI_MakeEdge(const Handle_Geom_Curve& L,const TopoDS_Vertex& V1,const TopoDS_Vertex& V2);
	BRepBuilderAPI_MakeEdge(const Handle_Geom_Curve& L,const gp_Pnt& P1,const gp_Pnt& P2,const Standard_Real p1,const Standard_Real p2);
	BRepBuilderAPI_MakeEdge(const Handle_Geom_Curve& L,const TopoDS_Vertex& V1,const TopoDS_Vertex& V2,const Standard_Real p1,const Standard_Real p2);
	BRepBuilderAPI_MakeEdge(const Handle_Geom2d_Curve& L,const Handle_Geom_Surface& S);
	BRepBuilderAPI_MakeEdge(const Handle_Geom2d_Curve& L,const Handle_Geom_Surface& S,const Standard_Real p1,const Standard_Real p2);
	BRepBuilderAPI_MakeEdge(const Handle_Geom2d_Curve& L,const Handle_Geom_Surface& S,const gp_Pnt& P1,const gp_Pnt& P2);
	BRepBuilderAPI_MakeEdge(const Handle_Geom2d_Curve& L,const Handle_Geom_Surface& S,const TopoDS_Vertex& V1,const TopoDS_Vertex& V2);
	BRepBuilderAPI_MakeEdge(const Handle_Geom2d_Curve& L,const Handle_Geom_Surface& S,const gp_Pnt& P1,const gp_Pnt& P2,const Standard_Real p1,const Standard_Real p2);
	BRepBuilderAPI_MakeEdge(const Handle_Geom2d_Curve& L,const Handle_Geom_Surface& S,const TopoDS_Vertex& V1,const TopoDS_Vertex& V2,const Standard_Real p1,const Standard_Real p2);
	void Init(const Handle_Geom_Curve& C);
	void Init(const Handle_Geom_Curve& C,const Standard_Real p1,const Standard_Real p2);
	void Init(const Handle_Geom_Curve& C,const gp_Pnt& P1,const gp_Pnt& P2);
	void Init(const Handle_Geom_Curve& C,const TopoDS_Vertex& V1,const TopoDS_Vertex& V2);
	void Init(const Handle_Geom_Curve& C,const gp_Pnt& P1,const gp_Pnt& P2,const Standard_Real p1,const Standard_Real p2);
	void Init(const Handle_Geom_Curve& C,const TopoDS_Vertex& V1,const TopoDS_Vertex& V2,const Standard_Real p1,const Standard_Real p2);
	void Init(const Handle_Geom2d_Curve& C,const Handle_Geom_Surface& S);
	void Init(const Handle_Geom2d_Curve& C,const Handle_Geom_Surface& S,const Standard_Real p1,const Standard_Real p2);
	void Init(const Handle_Geom2d_Curve& C,const Handle_Geom_Surface& S,const gp_Pnt& P1,const gp_Pnt& P2);
	void Init(const Handle_Geom2d_Curve& C,const Handle_Geom_Surface& S,const TopoDS_Vertex& V1,const TopoDS_Vertex& V2);
	void Init(const Handle_Geom2d_Curve& C,const Handle_Geom_Surface& S,const gp_Pnt& P1,const gp_Pnt& P2,const Standard_Real p1,const Standard_Real p2);
	void Init(const Handle_Geom2d_Curve& C,const Handle_Geom_Surface& S,const TopoDS_Vertex& V1,const TopoDS_Vertex& V2,const Standard_Real p1,const Standard_Real p2);
	Standard_Boolean IsDone() const;
	const TopoDS_Edge& Edge() const;
	const TopoDS_Vertex& Vertex1() const;
	const TopoDS_Vertex& Vertex2() const;
};

class BRepBuilderAPI_MakeFace  : public BRepBuilderAPI_MakeShape
{
	public:
	BRepBuilderAPI_MakeFace();
	BRepBuilderAPI_MakeFace(const TopoDS_Face& F);
	BRepBuilderAPI_MakeFace(const gp_Pln& P);
	BRepBuilderAPI_MakeFace(const gp_Cylinder& C);
	BRepBuilderAPI_MakeFace(const gp_Cone& C);
	BRepBuilderAPI_MakeFace(const gp_Sphere& S);
	BRepBuilderAPI_MakeFace(const gp_Torus& C);
	BRepBuilderAPI_MakeFace(const Handle_Geom_Surface& S,const Standard_Real TolDegen);
	BRepBuilderAPI_MakeFace(const gp_Pln& P,const Standard_Real UMin,const Standard_Real UMax,const Standard_Real VMin,const Standard_Real VMax);
	BRepBuilderAPI_MakeFace(const gp_Cylinder& C,const Standard_Real UMin,const Standard_Real UMax,const Standard_Real VMin,const Standard_Real VMax);
	BRepBuilderAPI_MakeFace(const gp_Cone& C,const Standard_Real UMin,const Standard_Real UMax,const Standard_Real VMin,const Standard_Real VMax);
	BRepBuilderAPI_MakeFace(const gp_Sphere& S,const Standard_Real UMin,const Standard_Real UMax,const Standard_Real VMin,const Standard_Real VMax);
	BRepBuilderAPI_MakeFace(const gp_Torus& C,const Standard_Real UMin,const Standard_Real UMax,const Standard_Real VMin,const Standard_Real VMax);
	BRepBuilderAPI_MakeFace(const Handle_Geom_Surface& S,const Standard_Real UMin,const Standard_Real UMax,const Standard_Real VMin,const Standard_Real VMax,const Standard_Real TolDegen);
	BRepBuilderAPI_MakeFace(const TopoDS_Wire& W,const Standard_Boolean OnlyPlane = Standard_False);
	BRepBuilderAPI_MakeFace(const gp_Pln& P,const TopoDS_Wire& W,const Standard_Boolean Inside = Standard_True);
	BRepBuilderAPI_MakeFace(const gp_Cylinder& C,const TopoDS_Wire& W,const Standard_Boolean Inside = Standard_True);
	BRepBuilderAPI_MakeFace(const gp_Cone& C,const TopoDS_Wire& W,const Standard_Boolean Inside = Standard_True);
	BRepBuilderAPI_MakeFace(const gp_Sphere& S,const TopoDS_Wire& W,const Standard_Boolean Inside = Standard_True);
	BRepBuilderAPI_MakeFace(const gp_Torus& C,const TopoDS_Wire& W,const Standard_Boolean Inside = Standard_True);
    BRepBuilderAPI_MakeFace(const Handle_Geom_Surface& S,const TopoDS_Wire& W,const Standard_Boolean Inside = Standard_True);
	BRepBuilderAPI_MakeFace(const TopoDS_Face& F,const TopoDS_Wire& W);
	void Init(const TopoDS_Face& F);
	void Init(const Handle_Geom_Surface& S,const Standard_Boolean Bound,const Standard_Real TolDegen);
	void Init(const Handle_Geom_Surface& S,const Standard_Real UMin,const Standard_Real UMax,const Standard_Real VMin,const Standard_Real VMax,const Standard_Real TolDegen);
	void Add(const TopoDS_Wire& W);
	Standard_Boolean IsDone() const;
	const TopoDS_Face& Face() const;
};

class BRepBuilderAPI_MakePolygon : public BRepBuilderAPI_MakeShape
{
	public:
	BRepBuilderAPI_MakePolygon();
	BRepBuilderAPI_MakePolygon(const gp_Pnt& P1,const gp_Pnt& P2);
	BRepBuilderAPI_MakePolygon(const gp_Pnt& P1,const gp_Pnt& P2,const gp_Pnt& P3,const Standard_Boolean Close = Standard_False);
	BRepBuilderAPI_MakePolygon(const gp_Pnt& P1,const gp_Pnt& P2,const gp_Pnt& P3,const gp_Pnt& P4,const Standard_Boolean Close = Standard_False);
	BRepBuilderAPI_MakePolygon(const TopoDS_Vertex& V1,const TopoDS_Vertex& V2);
	BRepBuilderAPI_MakePolygon(const TopoDS_Vertex& V1,const TopoDS_Vertex& V2,const TopoDS_Vertex& V3,const Standard_Boolean Close = Standard_False);
	BRepBuilderAPI_MakePolygon(const TopoDS_Vertex& V1,const TopoDS_Vertex& V2,const TopoDS_Vertex& V3,const TopoDS_Vertex& V4,const Standard_Boolean Close = Standard_False);
	void Add(const gp_Pnt& P);
	void Add(const TopoDS_Vertex& V);
	Standard_Boolean Added() const;
	void Close();
	const TopoDS_Vertex& FirstVertex() const;
	const TopoDS_Vertex& LastVertex() const;
	Standard_Boolean IsDone() const;
	const TopoDS_Edge& Edge() const;
	const TopoDS_Wire& Wire() const;
};

class BRepBuilderAPI_MakeShell : public BRepBuilderAPI_MakeShape
{
	public:
	BRepBuilderAPI_MakeShell();
	BRepBuilderAPI_MakeShell(const Handle_Geom_Surface& S,const Standard_Boolean Segment = Standard_False);
	BRepBuilderAPI_MakeShell(const Handle_Geom_Surface& S,const Standard_Real UMin,const Standard_Real UMax,const Standard_Real VMin,const Standard_Real VMax,const Standard_Boolean Segment = Standard_False);
	void Init(const Handle_Geom_Surface& S,const Standard_Real UMin,const Standard_Real UMax,const Standard_Real VMin,const Standard_Real VMax,const Standard_Boolean Segment = Standard_False);
	Standard_Boolean IsDone() const;
	const TopoDS_Shell& Shell() const;
};

class BRepBuilderAPI_MakeSolid: public BRepBuilderAPI_MakeShape
{
	public:
	BRepBuilderAPI_MakeSolid();
	BRepBuilderAPI_MakeSolid(const TopoDS_CompSolid& S);
	BRepBuilderAPI_MakeSolid(const TopoDS_Shell& S);
	BRepBuilderAPI_MakeSolid(const TopoDS_Shell& S1,const TopoDS_Shell& S2);
	BRepBuilderAPI_MakeSolid(const TopoDS_Shell& S1,const TopoDS_Shell& S2,const TopoDS_Shell& S3);
	BRepBuilderAPI_MakeSolid(const TopoDS_Solid& So);
	BRepBuilderAPI_MakeSolid(const TopoDS_Solid& So,const TopoDS_Shell& S);
	void Add(const TopoDS_Shell& S);
	Standard_Boolean IsDone() const;
	const TopoDS_Solid& Solid() const;
	Standard_Boolean IsDeleted(const TopoDS_Shape& S) ;
};

class BRepBuilderAPI_MakeVertex : public BRepBuilderAPI_MakeShape
{
	public:
	BRepBuilderAPI_MakeVertex(const gp_Pnt& P);
	const TopoDS_Vertex& Vertex() const;
};

class BRepBuilderAPI_MakeWire : public BRepBuilderAPI_MakeShape
{
	public:
	BRepBuilderAPI_MakeWire();
	BRepBuilderAPI_MakeWire(const TopoDS_Edge& E);
	BRepBuilderAPI_MakeWire(const TopoDS_Edge& E1,const TopoDS_Edge& E2);
	BRepBuilderAPI_MakeWire(const TopoDS_Edge& E1,const TopoDS_Edge& E2,const TopoDS_Edge& E3);
	BRepBuilderAPI_MakeWire(const TopoDS_Edge& E1,const TopoDS_Edge& E2,const TopoDS_Edge& E3,const TopoDS_Edge& E4);
	BRepBuilderAPI_MakeWire(const TopoDS_Wire& W);
	BRepBuilderAPI_MakeWire(const TopoDS_Wire& W,const TopoDS_Edge& E);
	void Add(const TopoDS_Edge& E) ;
	void Add(const TopoDS_Wire& W) ;
	void Add(const TopTools_ListOfShape& L);
	Standard_Boolean IsDone() const;
	const TopoDS_Wire& Wire() const;
	const TopoDS_Edge& Edge() const;
	const TopoDS_Vertex& Vertex() const;
};

class BRepBuilderAPI_NurbsConvert : public BRepBuilderAPI_ModifyShape
{
	public:
	BRepBuilderAPI_NurbsConvert();
	BRepBuilderAPI_NurbsConvert(const TopoDS_Shape& S,const Standard_Boolean Copy = Standard_False);
	void Perform(const TopoDS_Shape& S,const Standard_Boolean Copy = Standard_False);
};

class BRepBuilderAPI_Sewing
{
	public:
	BRepBuilderAPI_Sewing(const Standard_Real tolerance = 1.0e-06,const Standard_Boolean option = Standard_True,const Standard_Boolean cutting = Standard_True,const Standard_Boolean nonmanifold = Standard_False);
	void Init(const Standard_Real tolerance,const Standard_Boolean option = Standard_True,const Standard_Boolean cutting = Standard_True,const Standard_Boolean nonmanifold = Standard_False) ;
	void Load(const TopoDS_Shape& shape) ;
	void Add(const TopoDS_Shape& shape) ;
	void Perform() ;
	const TopoDS_Shape& SewedShape() const;
	Standard_Integer NbFreeEdges() const;
	const TopoDS_Edge& FreeEdge(const Standard_Integer index) const;
	Standard_Integer NbMultipleEdges() const;
	const TopoDS_Edge& MultipleEdge(const Standard_Integer index) const;
	Standard_Integer NbContigousEdges() const;
	const TopoDS_Edge& ContigousEdge(const Standard_Integer index) const;
	const TopTools_ListOfShape& ContigousEdgeCouple(const Standard_Integer index) const;
	Standard_Boolean IsSectionBound(const TopoDS_Edge& section) const;
	const TopoDS_Edge& SectionToBoundary(const TopoDS_Edge& section) const;
	Standard_Integer NbDegeneratedShapes() const;
	const TopoDS_Shape& DegeneratedShape(const Standard_Integer index) const;
	Standard_Boolean IsDegenerated(const TopoDS_Shape& shape) const;
	Standard_Boolean IsModified(const TopoDS_Shape& shape) const;
	const TopoDS_Shape& Modified(const TopoDS_Shape& shape) const;
	Standard_Boolean IsModifiedSubShape(const TopoDS_Shape& shape) const;
	TopoDS_Shape ModifiedSubShape(const TopoDS_Shape& shape) const;
	void Dump() const;
	Standard_Integer NbDeletedFaces() const;
	const TopoDS_Face& DeletedFace(const Standard_Integer index) const;
	TopoDS_Face WhichFace(const TopoDS_Edge& theEdg,const Standard_Integer index = 1) const;
	Standard_Boolean SameParameterMode() const;
	void SetSameParameterMode(const Standard_Boolean SameParameterMode);
	Standard_Real Tolerance() const;
	void SetTolerance(const Standard_Real theToler);
	Standard_Real MinTolerance() const;
	void SetMinTolerance(const Standard_Real theMinToler);
	Standard_Real MaxTolerance() const;
	void SetMaxTolerance(const Standard_Real theMaxToler);
	Standard_Boolean FaceMode() const;
	void SetFaceMode(const Standard_Boolean theFaceMode);
	Standard_Boolean FloatingEdgesMode() const;
	void SetFloatingEdgesMode(const Standard_Boolean theFloatingEdgesMode);
	Standard_Boolean LocalTolerancesMode() const;
	void SetLocalTolerancesMode(const Standard_Boolean theLocalTolerancesMode);
	void SetNonManifoldMode(const Standard_Boolean theNonManifoldMode);
	Standard_Boolean NonManifoldMode() const;
};

class BRepBuilderAPI_Transform : public BRepBuilderAPI_ModifyShape
{
	public:
	BRepBuilderAPI_Transform(const gp_Trsf& T);
	BRepBuilderAPI_Transform(const TopoDS_Shape& S,const gp_Trsf& T,const Standard_Boolean Copy = Standard_False);
	void Perform(const TopoDS_Shape& S,const Standard_Boolean Copy = Standard_False);
	const TopoDS_Shape& ModifiedShape(const TopoDS_Shape& S) const;
	const TopTools_ListOfShape& Modified(const TopoDS_Shape& S);
};
