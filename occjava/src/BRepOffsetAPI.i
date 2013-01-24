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
#include <BRepOffsetAPI_DraftAngle.hxx>
#include <BRepOffsetAPI_FindContigousEdges.hxx>
#include <BRepOffsetAPI_MakeDraft.hxx>
#include <BRepOffsetAPI_MakeEvolved.hxx>
#include <BRepOffsetAPI_MakeFilling.hxx>
#include <BRepOffsetAPI_MakeOffset.hxx>
#include <BRepOffsetAPI_MakeOffsetShape.hxx>
#include <BRepOffsetAPI_MakePipe.hxx>
#include <BRepOffsetAPI_MakePipeShell.hxx>
#include <BRepOffsetAPI_MakeThickSolid.hxx>
#include <BRepOffsetAPI_NormalProjection.hxx>
#include <BRepOffsetAPI_ThruSections.hxx>
%}
%include "BRepPrimAPI.i"

class BRepOffsetAPI_DraftAngle  : public BRepBuilderAPI_ModifyShape 
{
    public:
	BRepOffsetAPI_DraftAngle();
	BRepOffsetAPI_DraftAngle(const TopoDS_Shape& S);
	void Clear();
	void Init(const TopoDS_Shape& S);
	void Add(const TopoDS_Face& F,const gp_Dir& Direction,const Standard_Real Angle,const gp_Pln& NeutralPlane,const Standard_Boolean Flag = Standard_True);
	Standard_Boolean AddDone() const;
	void Remove(const TopoDS_Face& F);
	const TopoDS_Shape& ProblematicShape() const;
	const TopTools_ListOfShape& ConnectedFaces(const TopoDS_Face& F) const;
	const TopTools_ListOfShape& ModifiedFaces() const;
	void Build();
	void CorrectWires();
	const TopTools_ListOfShape& Generated(const TopoDS_Shape& S);
	const TopTools_ListOfShape& Modified(const TopoDS_Shape& S);
};

class BRepOffsetAPI_FindContigousEdges
{
    public:
	BRepOffsetAPI_FindContigousEdges(const Standard_Real tolerance = 1.0e-06,const Standard_Boolean option = Standard_True);
	void Init(const Standard_Real tolerance,const Standard_Boolean option);
	void Add(const TopoDS_Shape& shape);
	void Perform();
	//Standard_Integer NbEdges() const;
	Standard_Integer NbContigousEdges() const;
	const TopoDS_Edge& ContigousEdge(const Standard_Integer index) const;
	const TopTools_ListOfShape& ContigousEdgeCouple(const Standard_Integer index) const;
	const TopoDS_Edge& SectionToBoundary(const TopoDS_Edge& section) const;
	Standard_Integer NbDegeneratedShapes() const;
	const TopoDS_Shape& DegeneratedShape(const Standard_Integer index) const;
	Standard_Boolean IsDegenerated(const TopoDS_Shape& shape) const;
	Standard_Boolean IsModified(const TopoDS_Shape& shape) const;
	const TopoDS_Shape& Modified(const TopoDS_Shape& shape) const;
	void Dump() const;
};

class BRepOffsetAPI_MakeDraft  : public BRepBuilderAPI_MakeShape 
{
    public:
	BRepOffsetAPI_MakeDraft(const TopoDS_Shape& Shape,const gp_Dir& Dir,const Standard_Real Angle);
	void SetOptions(const BRepBuilderAPI_TransitionMode Style = BRepBuilderAPI_RightCorner,const Standard_Real AngleMin = 0.01,const Standard_Real AngleMax = 3.0);
	void SetDraft(const Standard_Boolean IsInternal = Standard_False);
	void Perform(const Standard_Real LengthMax);
	void Perform(const Handle_Geom_Surface& Surface,const Standard_Boolean KeepInsideSurface = Standard_True);
	void Perform(const TopoDS_Shape& StopShape,const Standard_Boolean KeepOutSide = Standard_True);
	TopoDS_Shell Shell() const;
	const TopTools_ListOfShape& Generated(const TopoDS_Shape& S);
};

class BRepOffsetAPI_MakeEvolved  : public BRepBuilderAPI_MakeShape
{
    public:
	BRepOffsetAPI_MakeEvolved();
	BRepOffsetAPI_MakeEvolved(const TopoDS_Wire& Spine,const TopoDS_Wire& Profil,const GeomAbs_JoinType Join = GeomAbs_Arc,const Standard_Boolean AxeProf = Standard_True,const Standard_Boolean Solid = Standard_False,const Standard_Boolean ProfOnSpine = Standard_False,const Standard_Real Tol = 0.0000001);
	BRepOffsetAPI_MakeEvolved(const TopoDS_Face& Spine,const TopoDS_Wire& Profil,const GeomAbs_JoinType Join = GeomAbs_Arc,const Standard_Boolean AxeProf = Standard_True,const Standard_Boolean Solid = Standard_False,const Standard_Boolean ProfOnSpine = Standard_False,const Standard_Real Tol = 0.0000001);
	//const BRepFill_Evolved& Evolved() const;
	void Build();
	const TopTools_ListOfShape& GeneratedShapes(const TopoDS_Shape& SpineShape,const TopoDS_Shape& ProfShape) const;
	const TopoDS_Shape& Top() const;
	const TopoDS_Shape& Bottom() const;
};

class BRepOffsetAPI_MakeFilling  : public BRepBuilderAPI_MakeShape
{
    public:
	BRepOffsetAPI_MakeFilling(const Standard_Integer Degree = 3,const Standard_Integer NbPtsOnCur = 15,const Standard_Integer NbIter = 2,const Standard_Boolean Anisotropie = Standard_False,const Standard_Real Tol2d = 0.00001,const Standard_Real Tol3d = 0.0001,const Standard_Real TolAng = 0.01,const Standard_Real TolCurv = 0.1,const Standard_Integer MaxDeg = 8,const Standard_Integer MaxSegments = 9);
	void SetConstrParam(const Standard_Real Tol2d = 0.00001,const Standard_Real Tol3d = 0.0001,const Standard_Real TolAng = 0.01,const Standard_Real TolCurv = 0.1);
	void SetResolParam(const Standard_Integer Degree = 3,const Standard_Integer NbPtsOnCur = 15,const Standard_Integer NbIter = 2,const Standard_Boolean Anisotropie = Standard_False);
	void SetApproxParam(const Standard_Integer MaxDeg = 8,const Standard_Integer MaxSegments = 9);
	void LoadInitSurface(const TopoDS_Face& Surf);
	Standard_Integer Add(const TopoDS_Edge& Constr,const GeomAbs_Shape Order,const Standard_Boolean IsBound = Standard_True);
	Standard_Integer Add(const TopoDS_Edge& Constr,const TopoDS_Face& Support,const GeomAbs_Shape Order,const Standard_Boolean IsBound = Standard_True);
	Standard_Integer Add(const TopoDS_Face& Support,const GeomAbs_Shape Order);
	Standard_Integer Add(const gp_Pnt& Point);
	Standard_Integer Add(const Standard_Real U,const Standard_Real V,const TopoDS_Face& Support,const GeomAbs_Shape Order);
	void Build();
	Standard_Boolean IsDone() const;
	Standard_Real G0Error() const;
	Standard_Real G1Error() const;
	Standard_Real G2Error() const;
	Standard_Real G0Error(const Standard_Integer Index);
	Standard_Real G1Error(const Standard_Integer Index);
	Standard_Real G2Error(const Standard_Integer Index);
};

class BRepOffsetAPI_MakeOffset  : public BRepBuilderAPI_MakeShape
{
    public:
	BRepOffsetAPI_MakeOffset();
	BRepOffsetAPI_MakeOffset(const TopoDS_Face& Spine,const GeomAbs_JoinType Join = GeomAbs_Arc);
	void Init(const TopoDS_Face& Spine,const GeomAbs_JoinType Join = GeomAbs_Arc);
	BRepOffsetAPI_MakeOffset(const TopoDS_Wire& Spine,const GeomAbs_JoinType Join = GeomAbs_Arc);
	void Init(const GeomAbs_JoinType Join = GeomAbs_Arc);
	void AddWire(const TopoDS_Wire& Spine);
	void Perform(const Standard_Real Offset,const Standard_Real Alt = 0.0);
	void Build();
	const TopTools_ListOfShape& Generated(const TopoDS_Shape& S);
};

class BRepOffsetAPI_MakeOffsetShape  : public BRepBuilderAPI_MakeShape
{
    public:
	BRepOffsetAPI_MakeOffsetShape();
	BRepOffsetAPI_MakeOffsetShape(const TopoDS_Shape& S,const Standard_Real Offset,const Standard_Real Tol,const BRepOffset_Mode Mode = BRepOffset_Skin,const Standard_Boolean Intersection = Standard_False,const Standard_Boolean SelfInter = Standard_False,const GeomAbs_JoinType Join = GeomAbs_Arc);
	//const BRepOffset_MakeOffset& MakeOffset() const;
	void Build();
	const TopTools_ListOfShape& Generated(const TopoDS_Shape& S);
	const TopTools_ListOfShape& GeneratedEdge(const TopoDS_Shape& S);
	GeomAbs_JoinType GetJoinType() const;
};

class BRepOffsetAPI_MakePipe  : public BRepPrimAPI_MakeSweep 
{
    public:
	BRepOffsetAPI_MakePipe(const TopoDS_Wire& Spine,const TopoDS_Shape& Profile);
	//const BRepFill_Pipe& Pipe() const;
	void Build();
	TopoDS_Shape FirstShape();
	TopoDS_Shape LastShape();
	TopoDS_Shape Generated(const TopoDS_Shape& SSpine,const TopoDS_Shape& SProfile);
};

class BRepOffsetAPI_MakePipeShell  : public BRepPrimAPI_MakeSweep
{
    public:
	BRepOffsetAPI_MakePipeShell(const TopoDS_Wire& Spine);
	void SetMode(const Standard_Boolean IsFrenet = Standard_False);
	void SetMode(const gp_Ax2& Axe);
	//void SetMode(const gp_Dir& BiNormal);
	Standard_Boolean SetMode(const TopoDS_Shape& SpineSupport);
	void SetMode(const TopoDS_Wire& AuxiliarySpine,const Standard_Boolean CurvilinearEquivalence,const Standard_Boolean KeepContact = Standard_False);
	void Add(const TopoDS_Shape& Profile,const Standard_Boolean WithContact = Standard_False,const Standard_Boolean WithCorrection = Standard_False);
	void Add(const TopoDS_Shape& Profile,const TopoDS_Vertex& Location,const Standard_Boolean WithContact = Standard_False,const Standard_Boolean WithCorrection = Standard_False);
	//void SetLaw(const TopoDS_Shape& Profile,const Handle_Law_Function& L,const Standard_Boolean WithContact = Standard_False,const Standard_Boolean WithCorrection = Standard_False);
	//void SetLaw(const TopoDS_Shape& Profile,const Handle_Law_Function& L,const TopoDS_Vertex& Location,const Standard_Boolean WithContact = Standard_False,const Standard_Boolean WithCorrection = Standard_False);
	void Delete(const TopoDS_Shape& Profile);
	Standard_Boolean IsReady() const;
	BRepBuilderAPI_PipeError GetStatus() const;
	void SetTolerance(const Standard_Real Tol3d = 1.0e-4,const Standard_Real BoundTol = 1.0e-4,const Standard_Real TolAngular = 1.0e-2);
	void SetTransitionMode(const BRepBuilderAPI_TransitionMode Mode = BRepBuilderAPI_Transformed);
	void Simulate(const Standard_Integer NumberOfSection,TopTools_ListOfShape& Result);
	void Build();
	Standard_Boolean MakeSolid();
	TopoDS_Shape FirstShape();
	TopoDS_Shape LastShape();
	const TopTools_ListOfShape& Generated(const TopoDS_Shape& S);
};

class BRepOffsetAPI_MakeThickSolid  : public BRepOffsetAPI_MakeOffsetShape
{
    public:
	BRepOffsetAPI_MakeThickSolid();
	BRepOffsetAPI_MakeThickSolid(const TopoDS_Shape& S,const TopTools_ListOfShape& ClosingFaces,const Standard_Real Offset,const Standard_Real Tol,const BRepOffset_Mode Mode = BRepOffset_Skin,const Standard_Boolean Intersection = Standard_False,const Standard_Boolean SelfInter = Standard_False,const GeomAbs_JoinType Join = GeomAbs_Arc);
	void Build();
	const TopTools_ListOfShape& Modified(const TopoDS_Shape& S);
};

class BRepOffsetAPI_NormalProjection: public BRepBuilderAPI_MakeShape
{
	public:
	BRepOffsetAPI_NormalProjection();
	BRepOffsetAPI_NormalProjection(const TopoDS_Shape& S);
	void Init(const TopoDS_Shape& S);
	void Add(const TopoDS_Shape& ToProj);
	void SetParams(const Standard_Real Tol3D,const Standard_Real Tol2D,const GeomAbs_Shape InternalContinuity,const Standard_Integer MaxDegree,const Standard_Integer MaxSeg);
	void SetMaxDistance(const Standard_Real MaxDist);
	void SetLimit(const Standard_Boolean FaceBoundaries = Standard_True);
	void Compute3d(const Standard_Boolean With3d = Standard_True);
	void Build();
	Standard_Boolean IsDone() const;
	const TopoDS_Shape& Projection() const;
	const TopoDS_Shape& Couple(const TopoDS_Edge& E) const;
	const TopTools_ListOfShape& Generated(const TopoDS_Shape& S);
	const TopoDS_Shape& Ancestor(const TopoDS_Edge& E) const;
	//Standard_Boolean BuildWire(TopTools_ListOfShape& Liste) const;
};

class BRepOffsetAPI_ThruSections  : public BRepBuilderAPI_MakeShape
{
	public:
	BRepOffsetAPI_ThruSections(const Standard_Boolean isSolid = Standard_False,const Standard_Boolean ruled = Standard_False,const Standard_Real pres3d = 1.0e-06);
	void Init(const Standard_Boolean isSolid = Standard_False,const Standard_Boolean ruled = Standard_False,const Standard_Real pres3d = 1.0e-06);
	void AddWire(const TopoDS_Wire& wire);
	void AddVertex(const TopoDS_Vertex& aVertex);
	void CheckCompatibility(const Standard_Boolean check = Standard_True);
	void SetSmoothing(const Standard_Boolean UseSmoothing);
	void SetParType(const Approx_ParametrizationType ParType);
	void SetContinuity(const GeomAbs_Shape C);
	void SetCriteriumWeight(const Standard_Real W1,const Standard_Real W2,const Standard_Real W3);
	void SetMaxDegree(const Standard_Integer MaxDeg);
	Approx_ParametrizationType ParType() const;
	GeomAbs_Shape Continuity() const;
	Standard_Integer MaxDegree() const;
	Standard_Boolean UseSmoothing() const;
	void CriteriumWeight(Standard_Real W1,Standard_Real W2,Standard_Real W3) const;
	void Build();
	const TopoDS_Shape& FirstShape() const;
	const TopoDS_Shape& LastShape() const;
	TopoDS_Shape GeneratedFace(const TopoDS_Shape& Edge) const;
};

%{#include <BRepOffsetAPI_NormalProjection.hxx>%}

enum BRepBuilderAPI_TransitionMode {
BRepBuilderAPI_Transformed,
BRepBuilderAPI_RightCorner,
BRepBuilderAPI_RoundCorner
};

%{#include <GeomAbs_JoinType.hxx>%}

enum GeomAbs_JoinType {
GeomAbs_Arc,
GeomAbs_Tangent,
GeomAbs_Intersection
};

%{#include <BRepOffset_Mode.hxx>%}

enum BRepOffset_Mode {
BRepOffset_Skin,
BRepOffset_Pipe,
BRepOffset_RectoVerso
};

%{#include <BRepBuilderAPI_PipeError.hxx>%}

enum BRepBuilderAPI_PipeError {
BRepBuilderAPI_PipeDone,
BRepBuilderAPI_PipeNotDone,
BRepBuilderAPI_PlaneNotIntersectGuide,
BRepBuilderAPI_ImpossibleContact
};

%{#include <BRepBuilderAPI_TransitionMode.hxx>%}

enum BRepBuilderAPI_TransitionMode {
BRepBuilderAPI_Transformed,
BRepBuilderAPI_RightCorner,
BRepBuilderAPI_RoundCorner
};
