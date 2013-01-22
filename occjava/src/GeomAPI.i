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
 *
 * @author Jens Schmidt
 *
 */
%{#include <GeomAPI.hxx>%}
%{#include <GeomAPI_ExtremaCurveCurve.hxx>%}
%{#include <GeomAPI_ExtremaCurveSurface.hxx>%}
%{#include <GeomAPI_ExtremaSurfaceSurface.hxx>%}
%{#include <GeomAPI_IntCS.hxx>%}
%{#include <GeomAPI_Interpolate.hxx>%}
%{#include <GeomAPI_IntSS.hxx>%}
%{#include <GeomAPI_PointsToBSpline.hxx>%}
%{#include <GeomAPI_PointsToBSplineSurface.hxx>%}
%{#include <GeomAPI_ProjectPointOnCurve.hxx>%}
%{#include <GeomAPI_ProjectPointOnSurf.hxx>%}


class GeomAPI  {
 public:
 Handle_Geom2d_Curve To2d(const Handle_Geom_Curve& C,const gp_Pln& P);
 Handle_Geom_Curve To3d(const Handle_Geom2d_Curve& C,const gp_Pln& P);
};

class GeomAPI_ExtremaCurveCurve  {
 public:
 GeomAPI_ExtremaCurveCurve();
 GeomAPI_ExtremaCurveCurve(const Handle_Geom_Curve& C1,const Handle_Geom_Curve& C2);
 GeomAPI_ExtremaCurveCurve(const Handle_Geom_Curve& C1,const Handle_Geom_Curve& C2,const Quantity_Parameter U1min,const Quantity_Parameter U1max,const Quantity_Parameter U2min,const Quantity_Parameter U2max);
 void Init(const Handle_Geom_Curve& C1,const Handle_Geom_Curve& C2);
 void Init(const Handle_Geom_Curve& C1,const Handle_Geom_Curve& C2,const Quantity_Parameter U1min,const Quantity_Parameter U1max,const Quantity_Parameter U2min,const Quantity_Parameter U2max);
 Standard_Integer NbExtrema() const;
 void Points(const Standard_Integer Index,gp_Pnt& P1,gp_Pnt& P2) const;
 void Parameters(const Standard_Integer Index,Quantity_Parameter U1,Quantity_Parameter U2) const;
 Quantity_Length Distance(const Standard_Integer Index) const;
 void NearestPoints(gp_Pnt& P1,gp_Pnt& P2) const;
 void LowerDistanceParameters(Quantity_Parameter U1,Quantity_Parameter U2) const;
 Quantity_Length LowerDistance() const;
 Standard_Boolean TotalNearestPoints(gp_Pnt& P1,gp_Pnt& P2);
 Standard_Boolean TotalLowerDistanceParameters(Quantity_Parameter U1,Quantity_Parameter U2);
 Quantity_Length TotalLowerDistance();
};

class GeomAPI_ExtremaCurveSurface  {
 public:
 GeomAPI_ExtremaCurveSurface();
 GeomAPI_ExtremaCurveSurface(const Handle_Geom_Curve& Curve,const Handle_Geom_Surface& Surface);
 GeomAPI_ExtremaCurveSurface(const Handle_Geom_Curve& Curve,const Handle_Geom_Surface& Surface,const Quantity_Parameter Wmin,const Quantity_Parameter Wmax,const Quantity_Parameter Umin,const Quantity_Parameter Umax,const Quantity_Parameter Vmin,const Quantity_Parameter Vmax);
 void Init(const Handle_Geom_Curve& Curve,const Handle_Geom_Surface& Surface);
 void Init(const Handle_Geom_Curve& Curve,const Handle_Geom_Surface& Surface,const Quantity_Parameter Wmin,const Quantity_Parameter Wmax,const Quantity_Parameter Umin,const Quantity_Parameter Umax,const Quantity_Parameter Vmin,const Quantity_Parameter Vmax);
 Standard_Integer NbExtrema() const;
 void Points(const Standard_Integer Index,gp_Pnt& P1,gp_Pnt& P2) const;
 void Parameters(const Standard_Integer Index,Quantity_Parameter W,Quantity_Parameter U,Quantity_Parameter V) const;
 Quantity_Length Distance(const Standard_Integer Index) const;
 void NearestPoints(gp_Pnt& PC,gp_Pnt& PS) const;
 void LowerDistanceParameters(Quantity_Parameter W,Quantity_Parameter U,Quantity_Parameter V) const;
 Quantity_Length LowerDistance() const;
};

class GeomAPI_ExtremaSurfaceSurface  {
 public:
 GeomAPI_ExtremaSurfaceSurface();
 GeomAPI_ExtremaSurfaceSurface(const Handle_Geom_Surface& S1,const Handle_Geom_Surface& S2);
 GeomAPI_ExtremaSurfaceSurface(const Handle_Geom_Surface& S1,const Handle_Geom_Surface& S2,const Quantity_Parameter U1min,const Quantity_Parameter U1max,const Quantity_Parameter V1min,const Quantity_Parameter V1max,const Quantity_Parameter U2min,const Quantity_Parameter U2max,const Quantity_Parameter V2min,const Quantity_Parameter V2max);
 void Init(const Handle_Geom_Surface& S1,const Handle_Geom_Surface& S2);
 void Init(const Handle_Geom_Surface& S1,const Handle_Geom_Surface& S2,const Quantity_Parameter U1min,const Quantity_Parameter U1max,const Quantity_Parameter V1min,const Quantity_Parameter V1max,const Quantity_Parameter U2min,const Quantity_Parameter U2max,const Quantity_Parameter V2min,const Quantity_Parameter V2max);
 Standard_Integer NbExtrema() const;
 void Points(const Standard_Integer Index,gp_Pnt& P1,gp_Pnt& P2) const;
 void Parameters(const Standard_Integer Index,Quantity_Parameter U1,Quantity_Parameter V1,Quantity_Parameter U2,Quantity_Parameter V2) const;
 Quantity_Length Distance(const Standard_Integer Index) const;
 void NearestPoints(gp_Pnt& P1,gp_Pnt& P2) const;
 void LowerDistanceParameters(Quantity_Parameter U1,Quantity_Parameter V1,Quantity_Parameter U2,Quantity_Parameter V2) const;
 Quantity_Length LowerDistance() const;
};

class GeomAPI_IntCS  {
 public:
 GeomAPI_IntCS();
 GeomAPI_IntCS(const Handle_Geom_Curve& C,const Handle_Geom_Surface& S);
 void Perform(const Handle_Geom_Curve& C,const Handle_Geom_Surface& S);
 Standard_Boolean IsDone() const;
 Standard_Integer NbPoints() const;
 const gp_Pnt& Point(const Standard_Integer Index) const;
 void Parameters(const Standard_Integer Index,Quantity_Parameter U,Quantity_Parameter V,Quantity_Parameter W) const;
 Standard_Integer NbSegments() const;
 Handle_Geom_Curve Segment(const Standard_Integer Index) const;
 void Parameters(const Standard_Integer Index,Quantity_Parameter U1,Quantity_Parameter V1,Quantity_Parameter U2,Quantity_Parameter V2) const;
};

class GeomAPI_Interpolate  {
 public:
 GeomAPI_Interpolate(const Handle_TColgp_HArray1OfPnt& Points,const Standard_Boolean PeriodicFlag,const Standard_Real Tolerance);
 //GeomAPI_Interpolate(const Handle_TColgp_HArray1OfPnt& Points,const Handle_TColStd_HArray1OfReal& Parameters,const Standard_Boolean PeriodicFlag,const Standard_Real Tolerance);
 void Load(const gp_Vec& InitialTangent,const gp_Vec& FinalTangent,const Standard_Boolean Scale = Standard_True);
 void Load(const TColgp_Array1OfVec& Tangents,const Handle_TColStd_HArray1OfBoolean& TangentFlags,const Standard_Boolean Scale = Standard_True);
 //void ClearTangents();
 void Perform();
 const Handle_Geom_BSplineCurve& Curve() const;
 Standard_Boolean IsDone() const;
};

class GeomAPI_IntSS  {
 public:
 GeomAPI_IntSS();
 GeomAPI_IntSS(const Handle_Geom_Surface& S1,const Handle_Geom_Surface& S2,const Standard_Real Tol);
 void Perform(const Handle_Geom_Surface& S1,const Handle_Geom_Surface& S2,const Standard_Real Tol);
 Standard_Boolean IsDone() const;
 Standard_Integer NbLines() const;
 const Handle_Geom_Curve& Line(const Standard_Integer Index) const;
};

class GeomAPI_PointsToBSpline  {
 public:
 GeomAPI_PointsToBSpline();
 GeomAPI_PointsToBSpline(const TColgp_Array1OfPnt& Points,const Standard_Integer DegMin = 3,const Standard_Integer DegMax = 8,const GeomAbs_Shape Continuity = GeomAbs_C2,const Standard_Real Tol3D = 1.0e-3);
 GeomAPI_PointsToBSpline(const TColgp_Array1OfPnt& Points,const Approx_ParametrizationType ParType,const Standard_Integer DegMin = 3,const Standard_Integer DegMax = 8,const GeomAbs_Shape Continuity = GeomAbs_C2,const Standard_Real Tol3D = 1.0e-3);
 GeomAPI_PointsToBSpline(const TColgp_Array1OfPnt& Points,const TColStd_Array1OfReal& Parameters,const Standard_Integer DegMin = 3,const Standard_Integer DegMax = 8,const GeomAbs_Shape Continuity = GeomAbs_C2,const Standard_Real Tol3D = 1.0e-3);
 GeomAPI_PointsToBSpline(const TColgp_Array1OfPnt& Points,const Standard_Real Weight1,const Standard_Real Weight2,const Standard_Real Weight3,const Standard_Integer DegMax = 8,const GeomAbs_Shape Continuity = GeomAbs_C2,const Standard_Real Tol3D = 1.0e-3);
 void Init(const TColgp_Array1OfPnt& Points,const Standard_Integer DegMin = 3,const Standard_Integer DegMax = 8,const GeomAbs_Shape Continuity = GeomAbs_C2,const Standard_Real Tol3D = 1.0e-3);
 void Init(const TColgp_Array1OfPnt& Points,const Approx_ParametrizationType ParType,const Standard_Integer DegMin = 3,const Standard_Integer DegMax = 8,const GeomAbs_Shape Continuity = GeomAbs_C2,const Standard_Real Tol3D = 1.0e-3);
 void Init(const TColgp_Array1OfPnt& Points,const TColStd_Array1OfReal& Parameters,const Standard_Integer DegMin = 3,const Standard_Integer DegMax = 8,const GeomAbs_Shape Continuity = GeomAbs_C2,const Standard_Real Tol3D = 1.0e-3);
 void Init(const TColgp_Array1OfPnt& Points,const Standard_Real Weight1,const Standard_Real Weight2,const Standard_Real Weight3,const Standard_Integer DegMax = 8,const GeomAbs_Shape Continuity = GeomAbs_C2,const Standard_Real Tol3D = 1.0e-3);
 const Handle_Geom_BSplineCurve& Curve() const;
 Standard_Boolean IsDone() const;
};

class GeomAPI_PointsToBSplineSurface  {
 public:
 GeomAPI_PointsToBSplineSurface();
 GeomAPI_PointsToBSplineSurface(const TColgp_Array2OfPnt& Points,const Standard_Integer DegMin = 3,const Standard_Integer DegMax = 8,const GeomAbs_Shape Continuity = GeomAbs_C2,const Standard_Real Tol3D = 1.0e-3);
 GeomAPI_PointsToBSplineSurface(const TColgp_Array2OfPnt& Points,const Approx_ParametrizationType ParType,const Standard_Integer DegMin = 3,const Standard_Integer DegMax = 8,const GeomAbs_Shape Continuity = GeomAbs_C2,const Standard_Real Tol3D = 1.0e-3);
 GeomAPI_PointsToBSplineSurface(const TColgp_Array2OfPnt& Points,const Standard_Real Weight1,const Standard_Real Weight2,const Standard_Real Weight3,const Standard_Integer DegMax = 8,const GeomAbs_Shape Continuity = GeomAbs_C2,const Standard_Real Tol3D = 1.0e-3);
 GeomAPI_PointsToBSplineSurface(const TColStd_Array2OfReal& ZPoints,const Standard_Real X0,const Standard_Real dX,const Standard_Real Y0,const Standard_Real dY,const Standard_Integer DegMin = 3,const Standard_Integer DegMax = 8,const GeomAbs_Shape Continuity = GeomAbs_C2,const Standard_Real Tol3D = 1.0e-3);
 void Init(const TColgp_Array2OfPnt& Points,const Standard_Integer DegMin = 3,const Standard_Integer DegMax = 8,const GeomAbs_Shape Continuity = GeomAbs_C2,const Standard_Real Tol3D = 1.0e-3);
 void Interpolate(const TColgp_Array2OfPnt& Points);
 void Interpolate(const TColgp_Array2OfPnt& Points,const Approx_ParametrizationType ParType);
 void Init(const TColStd_Array2OfReal& ZPoints,const Standard_Real X0,const Standard_Real dX,const Standard_Real Y0,const Standard_Real dY,const Standard_Integer DegMin = 3,const Standard_Integer DegMax = 8,const GeomAbs_Shape Continuity = GeomAbs_C2,const Standard_Real Tol3D = 1.0e-3);
 void Interpolate(const TColStd_Array2OfReal& ZPoints,const Standard_Real X0,const Standard_Real dX,const Standard_Real Y0,const Standard_Real dY);
 void Init(const TColgp_Array2OfPnt& Points,const Approx_ParametrizationType ParType,const Standard_Integer DegMin = 3,const Standard_Integer DegMax = 8,const GeomAbs_Shape Continuity = GeomAbs_C2,const Standard_Real Tol3D = 1.0e-3);
 void Init(const TColgp_Array2OfPnt& Points,const Standard_Real Weight1,const Standard_Real Weight2,const Standard_Real Weight3,const Standard_Integer DegMax = 8,const GeomAbs_Shape Continuity = GeomAbs_C2,const Standard_Real Tol3D = 1.0e-3);
 const Handle_Geom_BSplineSurface& Surface() const;
 Standard_Boolean IsDone() const;
};

class GeomAPI_ProjectPointOnCurve 
{
	public:
	GeomAPI_ProjectPointOnCurve();
	GeomAPI_ProjectPointOnCurve(const gp_Pnt& P,const Handle_Geom_Curve& Curve);
	GeomAPI_ProjectPointOnCurve(const gp_Pnt& P,const Handle_Geom_Curve& Curve,const Quantity_Parameter Umin,const Quantity_Parameter Usup);
	void Init(const gp_Pnt& P,const Handle_Geom_Curve& Curve);
	void Init(const gp_Pnt& P,const Handle_Geom_Curve& Curve,const Quantity_Parameter Umin,const Quantity_Parameter Usup);
	void Init(const Handle_Geom_Curve& Curve,const Quantity_Parameter Umin,const Quantity_Parameter Usup);
	void Perform(const gp_Pnt& P);
	Standard_Integer NbPoints() const;
	gp_Pnt Point(const Standard_Integer Index) const;
	Quantity_Parameter Parameter(const Standard_Integer Index) const;
	void Parameter(const Standard_Integer Index,Quantity_Parameter U) const;
	Quantity_Length Distance(const Standard_Integer Index) const;
	gp_Pnt NearestPoint() const;
	Quantity_Parameter LowerDistanceParameter() const;
	Quantity_Length LowerDistance() const;
};

class GeomAPI_ProjectPointOnSurf  
{
	public:
	GeomAPI_ProjectPointOnSurf();
	GeomAPI_ProjectPointOnSurf(const gp_Pnt& P,const Handle_Geom_Surface& Surface);
	GeomAPI_ProjectPointOnSurf(const gp_Pnt& P,const Handle_Geom_Surface& Surface,const Standard_Real Tolerance);
	GeomAPI_ProjectPointOnSurf(const gp_Pnt& P,const Handle_Geom_Surface& Surface,const Quantity_Parameter Umin,const Quantity_Parameter Usup,const Quantity_Parameter Vmin,const Quantity_Parameter Vsup,const Standard_Real Tolerance);
	GeomAPI_ProjectPointOnSurf(const gp_Pnt& P,const Handle_Geom_Surface& Surface,const Quantity_Parameter Umin,const Quantity_Parameter Usup,const Quantity_Parameter Vmin,const Quantity_Parameter Vsup);
	void Init(const gp_Pnt& P,const Handle_Geom_Surface& Surface,const Standard_Real Tolerance);
	void Init(const gp_Pnt& P,const Handle_Geom_Surface& Surface);
	void Init(const gp_Pnt& P,const Handle_Geom_Surface& Surface,const Quantity_Parameter Umin,const Quantity_Parameter Usup,const Quantity_Parameter Vmin,const Quantity_Parameter Vsup,const Standard_Real Tolerance);
	void Init(const gp_Pnt& P,const Handle_Geom_Surface& Surface,const Quantity_Parameter Umin,const Quantity_Parameter Usup,const Quantity_Parameter Vmin,const Quantity_Parameter Vsup);
	void Init(const Handle_Geom_Surface& Surface,const Quantity_Parameter Umin,const Quantity_Parameter Usup,const Quantity_Parameter Vmin,const Quantity_Parameter Vsup,const Standard_Real Tolerance);
	void Init(const Handle_Geom_Surface& Surface,const Quantity_Parameter Umin,const Quantity_Parameter Usup,const Quantity_Parameter Vmin,const Quantity_Parameter Vsup);
	void Perform(const gp_Pnt& P);
	Standard_Boolean IsDone() const;
	Standard_Integer NbPoints() const;
	gp_Pnt Point(const Standard_Integer Index) const;
	void Parameters(const Standard_Integer Index,Quantity_Parameter U,Quantity_Parameter V) const;
	Quantity_Length Distance(const Standard_Integer Index) const;
	gp_Pnt NearestPoint() const;
	void LowerDistanceParameters(Quantity_Parameter U,Quantity_Parameter V) const;
	Quantity_Length LowerDistance() const;
};


%{#include <Approx_ParametrizationType.hxx>%}
enum Approx_ParametrizationType {
Approx_ChordLength,
Approx_Centripetal,
Approx_IsoParametric
};

//%{#include <TColgp_HArray1OfPnt.hxx>%}
//%rename(TColgp_HArray1OfPnt) Handle_TColgp_HArray1OfPnt;
/* 
class Handle_TColgp_HArray1OfPnt
{
	Handle_TColgp_HArray1OfPnt()=0;
};

%extend Handle_Tcolgp_HArray1OfPnt
{
  static Handle_Tcolgp_Harray1OfPnt * hndl() {
  
    Handle_Tcolgp_Harray1OfPnt 
	
  }
};*/
/*
%extend Handle_TColgp_HArray1OfPnt
{
  static Handle_TColgp_HArray1OfPnt * test(const TColgp_Array1OfPnt& Points)
  {
    Handle_TColgp_HArray1OfPnt * hgc=new Handle_TColgp_HArray1OfPnt();
	if(hgc->IsNull())
	  return NULL;
	else
	  return hgc;
  }
};
 */ 

/*
%extend GeomAPI_Interpolate {

  static GeomAPI_Interpolate create(const TColgp_Array1OfPnt& Points,const Standard_Boolean PeriodicFlag,const Standard_Real Tolerance)
	{
	  //TODO: leaks??
	  
	  int i;
	  Handle(TColgp_HArray1OfPnt) harray = new TColgp_HArray1OfPnt(Points.Lower(),Points.Upper()); 
	  for (i=1;i<=Points.Length(); i++) {
	   // harray->SetValue(i,Points.Value(i));
	   harray->SetValue(i,Points.Value(i));
	  }
	  
      return GeomAPI_Interpolate(harray,PeriodicFlag,Tolerance);
	  
	  }
};*/