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
 * (C) Copyright 2011, by EADS France
 */

%{
#include <BRepFill.hxx>
#include <BRepFill_Draft.hxx>
#include <BRepFill_Evolved.hxx>
#include <BRepFill_Filling.hxx>
#include <BRepFill_Generator.hxx>
#include <BRepFill_OffsetWire.hxx>
#include <BRepFill_OffsetAncestors.hxx>
#include <BRepFill_Pipe.hxx>
#include <BRepFill_PipeShell.hxx>
#include <BRepFill_Section.hxx>
%}

class BRepFill  
{
	public:
	TopoDS_Face Face(const TopoDS_Edge& Edge1,const TopoDS_Edge& Edge2);
	TopoDS_Shell Shell(const TopoDS_Wire& Wire1,const TopoDS_Wire& Wire2);
	void Axe(const TopoDS_Shape& Spine,const TopoDS_Wire& Profile,gp_Ax3& AxeProf,Standard_Boolean ProfOnSpine,const Standard_Real Tol);
	void ComputeACR(const TopoDS_Wire& wire,TColStd_Array1OfReal& ACR);
	TopoDS_Wire InsertACR(const TopoDS_Wire& wire,const TColStd_Array1OfReal& ACRcuts,const Standard_Real prec);
};

class BRepFill_Draft  
{
	public:
	BRepFill_Draft(const TopoDS_Shape& Shape,const gp_Dir& Dir,const Standard_Real Angle);
	void SetOptions(const BRepFill_TransitionStyle Style = BRepFill_Right,const Standard_Real AngleMin = 0.01,const Standard_Real AngleMax = 3.0);
	void SetDraft(const Standard_Boolean IsInternal = Standard_False);
	void Perform(const Standard_Real LengthMax);
	void Perform(const Handle_Geom_Surface& Surface,const Standard_Boolean KeepInsideSurface = Standard_True);
	void Perform(const TopoDS_Shape& StopShape,const Standard_Boolean KeepOutSide = Standard_True);
	Standard_Boolean IsDone() const;
	TopoDS_Shell Shell() const;
	const TopTools_ListOfShape& Generated(const TopoDS_Shape& S);
	TopoDS_Shape Shape() const;
};

class BRepFill_Evolved  
{
	public:
	BRepFill_Evolved();
	BRepFill_Evolved(const TopoDS_Wire& Spine,const TopoDS_Wire& Profile,const gp_Ax3& AxeProf,const GeomAbs_JoinType Join = GeomAbs_Arc,const Standard_Boolean Solid = Standard_False);
	BRepFill_Evolved(const TopoDS_Face& Spine,const TopoDS_Wire& Profile,const gp_Ax3& AxeProf,const GeomAbs_JoinType Join = GeomAbs_Arc,const Standard_Boolean Solid = Standard_False);
	void Perform(const TopoDS_Wire& Spine,const TopoDS_Wire& Profile,const gp_Ax3& AxeProf,const GeomAbs_JoinType Join = GeomAbs_Arc,const Standard_Boolean Solid = Standard_False);
	void Perform(const TopoDS_Face& Spine,const TopoDS_Wire& Profile,const gp_Ax3& AxeProf,const GeomAbs_JoinType Join = GeomAbs_Arc,const Standard_Boolean Solid = Standard_False);
	Standard_Boolean IsDone() const;
	const TopoDS_Shape& Shape() const;
	const TopTools_ListOfShape& GeneratedShapes(const TopoDS_Shape& SpineShape,const TopoDS_Shape& ProfShape) const;
	GeomAbs_JoinType JoinType() const;
	const TopoDS_Shape& Top() const;
	const TopoDS_Shape& Bottom() const;
};

class BRepFill_Filling  
{
	public:
	BRepFill_Filling(const Standard_Integer Degree = 3,const Standard_Integer NbPtsOnCur = 15,const Standard_Integer NbIter = 2,const Standard_Boolean Anisotropie = Standard_False,const Standard_Real Tol2d = 0.00001,const Standard_Real Tol3d = 0.0001,const Standard_Real TolAng = 0.01,const Standard_Real TolCurv = 0.1,const Standard_Integer MaxDeg = 8,const Standard_Integer MaxSegments = 9);
	void SetConstrParam(const Standard_Real Tol2d = 0.00001,const Standard_Real Tol3d = 0.0001,const Standard_Real TolAng = 0.01,const Standard_Real TolCurv = 0.1);
	void SetResolParam(const Standard_Integer Degree = 3,const Standard_Integer NbPtsOnCur = 15,const Standard_Integer NbIter = 2,const Standard_Boolean Anisotropie = Standard_False);
	void SetApproxParam(const Standard_Integer MaxDeg = 8,const Standard_Integer MaxSegments = 9);
	void LoadInitSurface(const TopoDS_Face& aFace);
	Standard_Integer Add(const TopoDS_Edge& anEdge,const GeomAbs_Shape Order,const Standard_Boolean IsBound = Standard_True);
	Standard_Integer Add(const TopoDS_Edge& anEdge,const TopoDS_Face& Support,const GeomAbs_Shape Order,const Standard_Boolean IsBound = Standard_True);
	Standard_Integer Add(const TopoDS_Face& Support,const GeomAbs_Shape Order);
	Standard_Integer Add(const gp_Pnt& Point);
	Standard_Integer Add(const Standard_Real U,const Standard_Real V,const TopoDS_Face& Support,const GeomAbs_Shape Order);
	void Build();
	Standard_Boolean IsDone() const;
	TopoDS_Face Face() const;
	Standard_Real G0Error() const;
	Standard_Real G1Error() const;
	Standard_Real G2Error() const;
	Standard_Real G0Error(const Standard_Integer Index);
	Standard_Real G1Error(const Standard_Integer Index);
	Standard_Real G2Error(const Standard_Integer Index);
};

class BRepFill_Generator 
{
	public:
	BRepFill_Generator();
	void AddWire(const TopoDS_Wire& Wire);
	void Perform();
	const TopoDS_Shell& Shell() const;
	//const TopTools_DataMapOfShapeListOfShape& Generated() const;
	const TopTools_ListOfShape& GeneratedShapes(const TopoDS_Shape& SSection) const;
};

class BRepFill_OffsetWire  
{
	public:
	BRepFill_OffsetWire();
	BRepFill_OffsetWire(const TopoDS_Face& Spine,const GeomAbs_JoinType Join = GeomAbs_Arc);
	void Init(const TopoDS_Face& Spine,const GeomAbs_JoinType Join = GeomAbs_Arc);
	void Perform(const Standard_Real Offset,const Standard_Real Alt = 0.0);
	//void PerformWithBiLo(const TopoDS_Face& WSP,const Standard_Real Offset,const BRepMAT2d_BisectingLocus& Locus,BRepMAT2d_LinkTopoBilo& Link,const GeomAbs_JoinType Join = GeomAbs_Arc,const Standard_Real Alt = 0.0);
	Standard_Boolean IsDone() const;
	const TopoDS_Face& Spine() const;
	const TopoDS_Shape& Shape() const;
	const TopTools_ListOfShape& GeneratedShapes(const TopoDS_Shape& SpineShape);
	GeomAbs_JoinType JoinType() const;
};

class BRepFill_OffsetAncestors  
{
	public:
	BRepFill_OffsetAncestors();
	BRepFill_OffsetAncestors(BRepFill_OffsetWire& Paral);
	void Perform(BRepFill_OffsetWire& Paral);
	Standard_Boolean IsDone() const;
	Standard_Boolean HasAncestor(const TopoDS_Edge& S1) const;
	const TopoDS_Shape& Ancestor(const TopoDS_Edge& S1) const;
};

class BRepFill_Pipe
{
	public:
	BRepFill_Pipe();
	BRepFill_Pipe(const TopoDS_Wire& Spine,const TopoDS_Shape& Profile,const Standard_Boolean GeneratePartCase = Standard_False);
	void Perform(const TopoDS_Wire& Spine,const TopoDS_Shape& Profile,const Standard_Boolean GeneratePartCase = Standard_False);
	const TopoDS_Shape& Spine() const;
	const TopoDS_Shape& Profile() const;
	const TopoDS_Shape& Shape() const;
	const TopoDS_Shape& FirstShape() const;
	const TopoDS_Shape& LastShape() const;
	TopoDS_Face Face(const TopoDS_Edge& ESpine,const TopoDS_Edge& EProfile);
	TopoDS_Edge Edge(const TopoDS_Edge& ESpine,const TopoDS_Vertex& VProfile);
	TopoDS_Shape Section(const TopoDS_Vertex& VSpine) const;
	TopoDS_Wire PipeLine(const gp_Pnt& Point) const;
};

class BRepFill_PipeShell
{
	public:
	BRepFill_PipeShell(const TopoDS_Wire& Spine);
	void Set(const Standard_Boolean Frenet = Standard_False);
	void Set(const gp_Ax2& Axe);
	//void Set(const gp_Dir& BiNormal);
	Standard_Boolean Set(const TopoDS_Shape& SpineSupport);
	void Set(const TopoDS_Wire& AuxiliarySpine,const Standard_Boolean CurvilinearEquivalence = Standard_True,const Standard_Boolean KeepContact = Standard_False);
	void Add(const TopoDS_Shape& Profile,const Standard_Boolean WithContact = Standard_False,const Standard_Boolean WithCorrection = Standard_False);
	void Add(const TopoDS_Shape& Profile,const TopoDS_Vertex& Location,const Standard_Boolean WithContact = Standard_False,const Standard_Boolean WithCorrection = Standard_False);
	//void SetLaw(const TopoDS_Shape& Profile,const Handle_Law_Function& L,const Standard_Boolean WithContact = Standard_False,const Standard_Boolean WithCorrection = Standard_False);
	//void SetLaw(const TopoDS_Shape& Profile,const Handle_Law_Function& L,const TopoDS_Vertex& Location,const Standard_Boolean WithContact = Standard_False,const Standard_Boolean WithCorrection = Standard_False);
	void Delete(const TopoDS_Shape& Profile);
	Standard_Boolean IsReady() const;
	GeomFill_PipeError GetStatus() const;
	void SetTolerance(const Standard_Real Tol3d = 1.0e-4,const Standard_Real BoundTol = 1.0e-4,const Standard_Real TolAngular = 1.0e-2);
	void SetTransition(const BRepFill_TransitionStyle Mode = BRepFill_Modified,const Standard_Real Angmin = 1.0e-2,const Standard_Real Angmax = 6.0);
	void Simulate(const Standard_Integer NumberOfSection,TopTools_ListOfShape& Sections);
	Standard_Boolean Build();
	Standard_Boolean MakeSolid();
	const TopoDS_Shape& Shape() const;
	const TopoDS_Shape& FirstShape() const;
	const TopoDS_Shape& LastShape() const;
	void Generated(const TopoDS_Shape& S,TopTools_ListOfShape& L);
};

class BRepFill_Section
{
	public:
	BRepFill_Section();
	BRepFill_Section(const TopoDS_Shape& Profile,const TopoDS_Vertex& V,const Standard_Boolean WithContact,const Standard_Boolean WithCorrection);
	void Set(const Standard_Boolean IsLaw);
	const TopoDS_Wire& Wire() const;
	const TopoDS_Vertex& Vertex() const;
	Standard_Boolean IsLaw() const;
	Standard_Boolean WithContact() const;
	Standard_Boolean WithCorrection() const;
};

%{#include <BRepFill_TransitionStyle.hxx>%}

enum BRepFill_TransitionStyle {
BRepFill_Modified,
BRepFill_Right,
BRepFill_Round
};

%{#include <GeomFill_PipeError.hxx>%}

enum GeomFill_PipeError {
GeomFill_PipeOk, 	
GeomFill_PipeNotOk, 	
GeomFill_PlaneNotIntersectGuide, 	
GeomFill_ImpossibleContact 
};

