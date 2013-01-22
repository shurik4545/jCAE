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
%{#include <GeomConvert.hxx>%}
%{#include <GeomConvert_ApproxCurve.hxx>%}
%{#include <GeomConvert_ApproxSurface.hxx>%}
%{#include <GeomConvert_BSplineCurveKnotSplitting.hxx>%}
%{#include <GeomConvert_BSplineCurveToBezierCurve.hxx>%}
%{#include <GeomConvert_BSplineSurfaceKnotSplitting.hxx>%}
%{#include <GeomConvert_BSplineSurfaceToBezierSurface.hxx>%}
%{#include <GeomConvert_CompCurveToBSplineCurve.hxx>%}

class GeomConvert  {
 public:
 Handle_Geom_BSplineCurve SplitBSplineCurve(const Handle_Geom_BSplineCurve& C,const Standard_Integer FromK1,const Standard_Integer ToK2,const Standard_Boolean SameOrientation = Standard_True);
 Handle_Geom_BSplineCurve SplitBSplineCurve(const Handle_Geom_BSplineCurve& C,const Standard_Real FromU1,const Standard_Real ToU2,const Standard_Real ParametricTolerance,const Standard_Boolean SameOrientation = Standard_True);
 Handle_Geom_BSplineSurface SplitBSplineSurface(const Handle_Geom_BSplineSurface& S,const Standard_Integer FromUK1,const Standard_Integer ToUK2,const Standard_Integer FromVK1,const Standard_Integer ToVK2,const Standard_Boolean SameUOrientation = Standard_True,const Standard_Boolean SameVOrientation = Standard_True);
 Handle_Geom_BSplineSurface SplitBSplineSurface(const Handle_Geom_BSplineSurface& S,const Standard_Integer FromK1,const Standard_Integer ToK2,const Standard_Boolean USplit,const Standard_Boolean SameOrientation = Standard_True);
 Handle_Geom_BSplineSurface SplitBSplineSurface(const Handle_Geom_BSplineSurface& S,const Standard_Real FromU1,const Standard_Real ToU2,const Standard_Real FromV1,const Standard_Real ToV2,const Standard_Real ParametricTolerance,const Standard_Boolean SameUOrientation = Standard_True,const Standard_Boolean SameVOrientation = Standard_True);
 Handle_Geom_BSplineSurface SplitBSplineSurface(const Handle_Geom_BSplineSurface& S,const Standard_Real FromParam1,const Standard_Real ToParam2,const Standard_Boolean USplit,const Standard_Real ParametricTolerance,const Standard_Boolean SameOrientation = Standard_True);
 Handle_Geom_BSplineCurve CurveToBSplineCurve(const Handle_Geom_Curve& C,const Convert_ParameterisationType Parameterisation = Convert_TgtThetaOver2); 
 Handle_Geom_BSplineSurface SurfaceToBSplineSurface(const Handle_Geom_Surface& S);
};

class GeomConvert_ApproxCurve  {
 public:
 GeomConvert_ApproxCurve(const Handle_Geom_Curve& Curve,const Standard_Real Tol3d,const GeomAbs_Shape Order,const Standard_Integer MaxSegments,const Standard_Integer MaxDegree);
 Handle_Geom_BSplineCurve Curve() const;
 Standard_Boolean IsDone() const;
 Standard_Boolean HasResult() const;
 Standard_Real MaxError() const;
};

class GeomConvert_ApproxSurface  {
 public:
 GeomConvert_ApproxSurface(const Handle_Geom_Surface& Surf,const Standard_Real Tol3d,const GeomAbs_Shape UContinuity,const GeomAbs_Shape VContinuity,const Standard_Integer MaxDegU,const Standard_Integer MaxDegV,const Standard_Integer MaxSegments,const Standard_Integer PrecisCode);
 Handle_Geom_BSplineSurface Surface() const;
 Standard_Boolean IsDone() const;
 Standard_Boolean HasResult() const;
 Standard_Real MaxError() const;
};

class GeomConvert_BSplineCurveKnotSplitting  {
 public:
 GeomConvert_BSplineCurveKnotSplitting(const Handle_Geom_BSplineCurve& BasisCurve,const Standard_Integer ContinuityRange);
 Standard_Integer NbSplits() const;
 void Splitting(TColStd_Array1OfInteger& SplitValues) const;
 Standard_Integer SplitValue(const Standard_Integer Index) const;
};

class GeomConvert_BSplineCurveToBezierCurve  {
 public:
 GeomConvert_BSplineCurveToBezierCurve(const Handle_Geom_BSplineCurve& BasisCurve);
 GeomConvert_BSplineCurveToBezierCurve(const Handle_Geom_BSplineCurve& BasisCurve,const Standard_Real U1,const Standard_Real U2,const Standard_Real ParametricTolerance);
 Handle_Geom_BezierCurve Arc(const Standard_Integer Index);
 //void Arcs(TColGeom_Array1OfBezierCurve& Curves);
 void Knots(TColStd_Array1OfReal& TKnots) const;
 Standard_Integer NbArcs() const;
};

class GeomConvert_BSplineSurfaceKnotSplitting  {
 public:
 GeomConvert_BSplineSurfaceKnotSplitting(const Handle_Geom_BSplineSurface& BasisSurface,const Standard_Integer UContinuityRange,const Standard_Integer VContinuityRange);
 Standard_Integer NbUSplits() const;
 Standard_Integer NbVSplits() const;
 void Splitting(TColStd_Array1OfInteger& USplit,TColStd_Array1OfInteger& VSplit) const;
 Standard_Integer USplitValue(const Standard_Integer UIndex) const;
 Standard_Integer VSplitValue(const Standard_Integer VIndex) const;
};

class GeomConvert_BSplineSurfaceToBezierSurface  {
 public:
 GeomConvert_BSplineSurfaceToBezierSurface(const Handle_Geom_BSplineSurface& BasisSurface);
 GeomConvert_BSplineSurfaceToBezierSurface(const Handle_Geom_BSplineSurface& BasisSurface,const Standard_Real U1,const Standard_Real U2,const Standard_Real V1,const Standard_Real V2,const Standard_Real ParametricTolerance);
 Handle_Geom_BezierSurface Patch(const Standard_Integer UIndex,const Standard_Integer VIndex);
 //void Patches(TColGeom_Array2OfBezierSurface& Surfaces);
 void UKnots(TColStd_Array1OfReal& TKnots) const;
 void VKnots(TColStd_Array1OfReal& TKnots) const;
 Standard_Integer NbUPatches() const;
 Standard_Integer NbVPatches() const;
};

class GeomConvert_CompCurveToBSplineCurve  {
 public:
  GeomConvert_CompCurveToBSplineCurve(const Handle_Geom_BoundedCurve& BasisCurve,const Convert_ParameterisationType Parameterisation = Convert_TgtThetaOver2);
  Standard_Boolean Add(const Handle_Geom_BoundedCurve& NewCurve,const Standard_Real Tolerance,const Standard_Boolean After = Standard_False,const Standard_Boolean WithRatio = Standard_True,const Standard_Integer MinM = 0);
  Handle_Geom_BSplineCurve BSplineCurve() const;
};

%{#include <Convert_ParameterisationType.hxx>%}
enum Convert_ParameterisationType {
Convert_TgtThetaOver2,
Convert_TgtThetaOver2_1,
Convert_TgtThetaOver2_2,
Convert_TgtThetaOver2_3,
Convert_TgtThetaOver2_4,
Convert_QuasiAngular,
Convert_RationalC1,
Convert_Polynomial
};
