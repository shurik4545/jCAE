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
 * (C) Copyright 2009, by EADS France
 */

%{#include <GeomFill.hxx>%}
%{#include <GeomFill_BezierCurves.hxx>%}
%{#include <GeomFill_BSplineCurves.hxx>%}
%{#include <GeomFill_Pipe.hxx>%}

class GeomFill  {
 public:
 Handle_Geom_Surface Surface(const Handle_Geom_Curve& Curve1,const Handle_Geom_Curve& Curve2);
 /*void GetCircle(const Convert_ParameterisationType TConv,const gp_Vec& ns1,const gp_Vec& ns2,const gp_Vec& nplan,const gp_Pnt& pt1,const gp_Pnt& pt2,const Standard_Real Rayon,const gp_Pnt& Center,TColgp_Array1OfPnt& Poles,TColStd_Array1OfReal& Weigths);
 Standard_Boolean GetCircle(const Convert_ParameterisationType TConv,const gp_Vec& ns1,const gp_Vec& ns2,const gp_Vec& dn1w,const gp_Vec& dn2w,const gp_Vec& nplan,const gp_Vec& dnplan,const gp_Pnt& pts1,const gp_Pnt& pts2,const gp_Vec& tang1,const gp_Vec& tang2,const Standard_Real Rayon,const Standard_Real DRayon,const gp_Pnt& Center,const gp_Vec& DCenter,TColgp_Array1OfPnt& Poles,TColgp_Array1OfVec& DPoles,TColStd_Array1OfReal& Weigths,TColStd_Array1OfReal& DWeigths);
 Standard_Boolean GetCircle(const Convert_ParameterisationType TConv,const gp_Vec& ns1,const gp_Vec& ns2,const gp_Vec& dn1w,const gp_Vec& dn2w,const gp_Vec& d2n1w,const gp_Vec& d2n2w,const gp_Vec& nplan,const gp_Vec& dnplan,const gp_Vec& d2nplan,const gp_Pnt& pts1,const gp_Pnt& pts2,const gp_Vec& tang1,const gp_Vec& tang2,const gp_Vec& Dtang1,const gp_Vec& Dtang2,const Standard_Real Rayon,const Standard_Real DRayon,const Standard_Real D2Rayon,const gp_Pnt& Center,const gp_Vec& DCenter,const gp_Vec& D2Center,TColgp_Array1OfPnt& Poles,TColgp_Array1OfVec& DPoles,TColgp_Array1OfVec& D2Poles,TColStd_Array1OfReal& Weigths,TColStd_Array1OfReal& DWeigths,TColStd_Array1OfReal& D2Weigths);
 */
 void GetShape(const Standard_Real MaxAng,Standard_Integer NbPoles,Standard_Integer NbKnots,Standard_Integer Degree,Convert_ParameterisationType TypeConv);
 void Knots(const Convert_ParameterisationType TypeConv,TColStd_Array1OfReal& TKnots);
 void Mults(const Convert_ParameterisationType TypeConv,TColStd_Array1OfInteger& TMults);
 void GetMinimalWeights(const Convert_ParameterisationType TConv,const Standard_Real AngleMin,const Standard_Real AngleMax,TColStd_Array1OfReal& Weigths);
 Standard_Real GetTolerance(const Convert_ParameterisationType TConv,const Standard_Real AngleMin,const Standard_Real Radius,const Standard_Real AngularTol,const Standard_Real SpatialTol);
};

class GeomFill_BezierCurves  {
 public:
 GeomFill_BezierCurves();
 GeomFill_BezierCurves(const Handle_Geom_BezierCurve& C1,const Handle_Geom_BezierCurve& C2,const Handle_Geom_BezierCurve& C3,const Handle_Geom_BezierCurve& C4,const GeomFill_FillingStyle Type);
 GeomFill_BezierCurves(const Handle_Geom_BezierCurve& C1,const Handle_Geom_BezierCurve& C2,const Handle_Geom_BezierCurve& C3,const GeomFill_FillingStyle Type);
 GeomFill_BezierCurves(const Handle_Geom_BezierCurve& C1,const Handle_Geom_BezierCurve& C2,const GeomFill_FillingStyle Type);
 void Init(const Handle_Geom_BezierCurve& C1,const Handle_Geom_BezierCurve& C2,const Handle_Geom_BezierCurve& C3,const Handle_Geom_BezierCurve& C4,const GeomFill_FillingStyle Type);
 void Init(const Handle_Geom_BezierCurve& C1,const Handle_Geom_BezierCurve& C2,const Handle_Geom_BezierCurve& C3,const GeomFill_FillingStyle Type);
 void Init(const Handle_Geom_BezierCurve& C1,const Handle_Geom_BezierCurve& C2,const GeomFill_FillingStyle Type);
 const Handle_Geom_BezierSurface& Surface() const;
};

class GeomFill_BSplineCurves  {
 public:
 GeomFill_BSplineCurves();
 GeomFill_BSplineCurves(const Handle_Geom_BSplineCurve& C1,const Handle_Geom_BSplineCurve& C2,const Handle_Geom_BSplineCurve& C3,const Handle_Geom_BSplineCurve& C4,const GeomFill_FillingStyle Type);
 GeomFill_BSplineCurves(const Handle_Geom_BSplineCurve& C1,const Handle_Geom_BSplineCurve& C2,const Handle_Geom_BSplineCurve& C3,const GeomFill_FillingStyle Type);
 GeomFill_BSplineCurves(const Handle_Geom_BSplineCurve& C1,const Handle_Geom_BSplineCurve& C2,const GeomFill_FillingStyle Type);
 void Init(const Handle_Geom_BSplineCurve& C1,const Handle_Geom_BSplineCurve& C2,const Handle_Geom_BSplineCurve& C3,const Handle_Geom_BSplineCurve& C4,const GeomFill_FillingStyle Type);
 void Init(const Handle_Geom_BSplineCurve& C1,const Handle_Geom_BSplineCurve& C2,const Handle_Geom_BSplineCurve& C3,const GeomFill_FillingStyle Type);
 void Init(const Handle_Geom_BSplineCurve& C1,const Handle_Geom_BSplineCurve& C2,const GeomFill_FillingStyle Type);
 const Handle_Geom_BSplineCurve& Surface() const;
};


class GeomFill_Pipe  {
 public:
 GeomFill_Pipe();
 GeomFill_Pipe(const Handle_Geom_Curve& Path,const Standard_Real Radius);
 GeomFill_Pipe(const Handle_Geom2d_Curve& Path,const Handle_Geom_Surface& Support,const Handle_Geom_Curve& FirstSect);
 GeomFill_Pipe(const Handle_Geom_Curve& Path,const Handle_Geom_Curve& FirstSect,const gp_Dir& Dir);
 GeomFill_Pipe(const Handle_Geom_Curve& Path,const Handle_Geom_Curve& FirstSect,const Handle_Geom_Curve& LastSect);
 GeomFill_Pipe(const Handle_Geom_Curve& Path,const Handle_Geom_Curve& Curve1,const Handle_Geom_Curve& Curve2,const Standard_Real Radius);
 void Init(const Handle_Geom_Curve& Path,const Standard_Real Radius);
 void Init(const Handle_Geom2d_Curve& Path,const Handle_Geom_Surface& Support,const Handle_Geom_Curve& FirstSect);
 void Init(const Handle_Geom_Curve& Path,const Handle_Geom_Curve& FirstSect,const gp_Dir& Dir);
 void Init(const Handle_Geom_Curve& Path,const Handle_Geom_Curve& FirstSect,const Handle_Geom_Curve& LastSect);
 void Perform(const Standard_Boolean WithParameters = Standard_False,const Standard_Boolean myPolynomial = Standard_False);
 void Perform(const Standard_Real Tol,const Standard_Boolean Polynomial,const GeomAbs_Shape Conti = GeomAbs_C1,const Standard_Integer MaxDegree = 11,const Standard_Integer NbMaxSegment = 30);
 const Handle_Geom_Surface& Surface() const;
 Standard_Boolean ExchangeUV() const;
 void GenerateParticularCase(const Standard_Boolean B);
 Standard_Boolean GenerateParticularCase() const;
 Standard_Real ErrorOnSurf() const;
};

%{#include <GeomFill_FillingStyle.hxx>%}
enum GeomFill_FillingStyle {
GeomFill_StretchStyle,
GeomFill_CoonsStyle,
GeomFill_CurvedStyle
};


