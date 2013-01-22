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
#include <Geom_Geometry.hxx>
#include <Geom_Point.hxx>
#include <Geom_CartesianPoint.hxx>
#include <Geom_Vector.hxx>
#include <Geom_Direction.hxx>
#include <Geom_VectorWithMagnitude.hxx>
#include <Geom_AxisPlacement.hxx>
#include <Geom_Axis1Placement.hxx>
#include <Geom_Axis2Placement.hxx>
#include <Geom_Curve.hxx>
#include <Geom_BoundedCurve.hxx>
#include <Geom_Conic.hxx>
#include <Geom_Line.hxx>
#include <Geom_OffsetCurve.hxx>
#include <ShapeExtend_ComplexCurve.hxx>
#include <Geom_Circle.hxx>
#include <Geom_Ellipse.hxx>
#include <Geom_Hyperbola.hxx>
#include <Geom_Parabola.hxx>
#include <Geom_BezierCurve.hxx>
#include <Geom_BSplineCurve.hxx>
#include <Geom_TrimmedCurve.hxx>
#include <Geom_Surface.hxx>
#include <Geom_BoundedSurface.hxx>
#include <Geom_ElementarySurface.hxx>
#include <Geom_OffsetSurface.hxx>
#include <Geom_SweptSurface.hxx>
#include <Geom_BezierSurface.hxx>
#include <Geom_BSplineSurface.hxx>
#include <Geom_RectangularTrimmedSurface.hxx>
#include <Geom_ConicalSurface.hxx>
#include <Geom_CylindricalSurface.hxx>
#include <Geom_Plane.hxx>
#include <Geom_SphericalSurface.hxx>
#include <Geom_ToroidalSurface.hxx>
#include <Geom_SurfaceOfLinearExtrusion.hxx>
#include <Geom_SurfaceOfRevolution.hxx>
#include <Geom_OsculatingSurface.hxx>

#include <Geom2d_Curve.hxx>
#include <Geom2d_Geometry.hxx>
%}

%rename(Geom_Geometry) Handle_Geom_Geometry;
%rename(Geom_Point) Handle_Geom_Point;
%rename(Geom_CartesianPoint) Handle_Geom_CartesianPoint;
%rename(Geom_Vector) Handle_Geom_Vector;
%rename(Geom_Direction) Handle_Geom_Direction;
%rename(Geom_VectorWithMagnitude) Handle_Geom_VectorWithMagnitude;
%rename(Geom_AxisPlacement) Handle_Geom_AxisPlacement;
%rename(Geom_Axis1Placement) Handle_Geom_Axis1Placement;
%rename(Geom_Axis2Placement) Handle_Geom_Axis2Placement;
%rename(Geom_Curve) Handle_Geom_Curve;
%rename(Geom_BoundedCurve) Handle_Geom_BoundedCurve;
%rename(Geom_Conic) Handle_Geom_Conic;
%rename(Geom_Line) Handle_Geom_Line;
%rename(Geom_OffsetCurve) Handle_Geom_OffsetCurve;
%rename(ShapeExtend_ComplexCurve) Handle_ShapeExtend_ComplexCurve;
%rename(Geom_Circle) Handle_Geom_Circle;
%rename(Geom_Ellipse) Handle_Geom_Ellipse;
%rename(Geom_Hyperbola) Handle_Geom_Hyperbola;
%rename(Geom_Parabola) Handle_Geom_Parabola;
%rename(Geom_BezierCurve) Handle_Geom_BezierCurve;
%rename(Geom_BSplineCurve) Handle_Geom_BSplineCurve;
%rename(Geom_TrimmedCurve) Handle_Geom_TrimmedCurve;
%rename(Geom_Surface) Handle_Geom_Surface;
%rename(Geom_BoundedSurface) Handle_Geom_BoundedSurface;
%rename(Geom_ElementarySurface) Handle_Geom_ElementarySurface;
%rename(Geom_OffsetSurface) Handle_Geom_OffsetSurface;
%rename(Geom_SweptSurface) Handle_Geom_SweptSurface;
%rename(Geom_BezierSurface) Handle_Geom_BezierSurface;
%rename(Geom_BSplineSurface) Handle_Geom_BSplineSurface;
%rename(Geom_RectangularTrimmedSurface) Handle_Geom_RectangularTrimmedSurface;
%rename(Geom_ConicalSurface) Handle_Geom_ConicalSurface;
%rename(Geom_CylindricalSurface) Handle_Geom_CylindricalSurface;
%rename(Geom_Plane) Handle_Geom_Plane;
%rename(Geom_SphericalSurface) Handle_Geom_SphericalSurface;
%rename(Geom_ToroidalSurface) Handle_Geom_ToroidalSurface;
%rename(Geom_SurfaceOfLinearExtrusion) Handle_Geom_SurfaceOfLinearExtrusion;
%rename(Geom_SurfaceOfRevolution) Handle_Geom_SurfaceOfRevolution;

%rename(Geom2d_Geometry) Handle_Geom2d_Geometry;
%rename(Geom2d_Curve) Handle_Geom2d_Curve;

class Handle_Geom_Geometry
{
	Handle_Geom_Geometry()=0;
};

%extend Handle_Geom_Geometry
{
	void MirrorPnt(const gp_Pnt& P)
	{
		(*self)->Mirror(P);
	}

	void MirrorAx1(const gp_Ax1& A1)
	{
		(*self)->Mirror(A1);
	}

	void MirrorAx2(const gp_Ax2& A2)
	{
		(*self)->Mirror(A2);
	}

	void Rotate(const gp_Ax1& A1,const Standard_Real Ang)
	{
		(*self)->Rotate(A1,Ang);
	}

	void Scale(const gp_Pnt& P,const Standard_Real S)
	{
		(*self)->Scale(P,S);
	}

	void Translate(const gp_Vec& V)
	{
		(*self)->Translate(V);
	}

	void Translate(const gp_Pnt& P1,const gp_Pnt& P2)
	{
		(*self)->Translate(P1,P2);
	}

	void Transform(const gp_Trsf& T)
	{
		(*self)->Transform(T);
	}
}

class Handle_Geom_Point: public Handle_Geom_Geometry
{
	Handle_Geom_Point()=0;	
};

%extend Handle_Geom_Point
{
	void Coord(Standard_Real& X,Standard_Real& Y,Standard_Real& Z) const
	{
		(*self)->Coord(X,Y,Z);
	}	

	gp_Pnt Pnt() const
	{
		return (*self)->Pnt();
	}

	Standard_Real X() const
	{
		return (*self)->X();
	}

	Standard_Real Y() const
	{
		return (*self)->Y();
	}

	Standard_Real Z() const
	{
		return (*self)->Z();
	}

	Standard_Real Distance(const Handle_Geom_Point& Other) const
	{
		return (*self)->Distance(Other);
	}

	Standard_Real SquareDistance(const Handle_Geom_Point& Other) const
	{
		return (*self)->SquareDistance(Other);
	}
}

class Handle_Geom_CartesianPoint: public Handle_Geom_Point
{
	Handle_Geom_CartesianPoint()=0;	
};

%extend Handle_Geom_CartesianPoint
{
	Handle_Geom_CartesianPoint(const gp_Pnt& P){
		return new Handle_Geom_CartesianPoint(new Geom_CartesianPoint(
		P));
		}

	Handle_Geom_CartesianPoint(const Standard_Real X,const Standard_Real Y,const Standard_Real Z){
		return new Handle_Geom_CartesianPoint(new Geom_CartesianPoint(
		X,Y,Z));
		}

	void SetCoord(const Standard_Real X,const Standard_Real Y,const Standard_Real Z)
	{
		(*self)->SetCoord(X,Y,Z);
	}

	void SetPnt(const gp_Pnt& P)
	{
		(*self)->SetPnt(P);
	}

	void SetX(const Standard_Real X)
	{
		(*self)->SetX(X);
	}

	void SetY(const Standard_Real Y)
	{
		(*self)->SetY(Y);
	}

	void SetZ(const Standard_Real Z)
	{
		(*self)->SetZ(Z);
	}

	void Coord(Standard_Real& X,Standard_Real& Y,Standard_Real& Z) const
	{
		(*self)->Coord(X,Y,Z);
	}

	gp_Pnt Pnt() const
	{
		return (*self)->Pnt();
	}

	Standard_Real X() const
	{
		return (*self)->X();
	}

	Standard_Real Y() const
	{
		return (*self)->Y();
	}

	Standard_Real Z() const
	{
		return (*self)->Z();
	}

	void Transform(const gp_Trsf& T)
	{
		(*self)->Transform(T);
	}
}

class Handle_Geom_Vector: public Handle_Geom_Geometry
{
	Handle_Geom_Vector()=0;	
};

%extend Handle_Geom_Vector
{
	void Reverse()
	{
		(*self)->Reverse();
	}

	Standard_Real Angle(const Handle_Geom_Vector& Other) const
	{
		return (*self)->Angle(Other);
	}

	Standard_Real AngleWithRef(const Handle_Geom_Vector& Other,const Handle_Geom_Vector& VRef) const
	{
		return (*self)->AngleWithRef(Other,VRef);
	}

	void Coord(Standard_Real& X,Standard_Real& Y,Standard_Real& Z) const
	{
		(*self)->Coord(X,Y,Z);
	}

	Standard_Real Magnitude() const
	{
		return (*self)->Magnitude();
	}

	Standard_Real SquareMagnitude() const
	{
		return (*self)->SquareMagnitude();
	}

	Standard_Real X() const
	{
		return (*self)->X();
	}

	Standard_Real Y() const
	{
		return (*self)->Y();
	}

	Standard_Real Z() const
	{
		return (*self)->Z();
	}

	void Cross(const Handle_Geom_Vector& Other)
	{
		(*self)->Cross(Other);
	}

	void CrossCross(const Handle_Geom_Vector& V1,const Handle_Geom_Vector& V2)
	{
		(*self)->CrossCross(V1,V2);
	}

	Standard_Real Dot(const Handle_Geom_Vector& Other) const
	{
		return (*self)->Dot(Other);
	}

	Standard_Real DotCross(const Handle_Geom_Vector& V1,const Handle_Geom_Vector& V2) const
	{
		return (*self)->DotCross(V1,V2);
	}

	const gp_Vec& Vec() const
	{
		return (*self)->Vec();
	}
}


class Handle_Geom_Direction: public Handle_Geom_Vector
{
	Handle_Geom_Direction()=0;	
};

%extend Handle_Geom_Direction
{
	Handle_Geom_Direction(const Standard_Real X,const Standard_Real Y,const Standard_Real Z){
		return new Handle_Geom_Direction(new Geom_Direction(
		X,Y,Z));
		}

	Handle_Geom_Direction(const gp_Dir& V){
		return new Handle_Geom_Direction(new Geom_Direction(
		V));
		}

	void SetCoord(const Standard_Real X,const Standard_Real Y,const Standard_Real Z)
	{
		(*self)->SetCoord(X,Y,Z);
	}

	void SetDir(const gp_Dir& V)
	{
		(*self)->SetDir(V);
	}

	void SetX(const Standard_Real X)
	{
		(*self)->SetX(X);
	}

	void SetY(const Standard_Real Y)
	{
		(*self)->SetY(Y);
	}

	void SetZ(const Standard_Real Z)
	{
		(*self)->SetZ(Z);
	}

	gp_Dir Dir() const
	{
		return (*self)->Dir();
	}

	Standard_Real SquareMagnitude() const
	{
		return (*self)->SquareMagnitude();
	}

	void Cross(const Handle_Geom_Vector& Other)
	{
		(*self)->Cross(Other);
	}

	void CrossCross(const Handle_Geom_Vector& V1,const Handle_Geom_Vector& V2)
	{
		(*self)->CrossCross(V1,V2);
	}

	void Transform(const gp_Trsf& T)
	{
		(*self)->Transform(T);
	}
}

class Handle_Geom_VectorWithMagnitude: public Handle_Geom_Vector
{
	Handle_Geom_VectorWithMagnitude()=0;	
};

%extend Handle_Geom_VectorWithMagnitude
{
	Handle_Geom_VectorWithMagnitude(const Standard_Real X,const Standard_Real Y,const Standard_Real Z){
		return new Handle_Geom_VectorWithMagnitude(new Geom_VectorWithMagnitude(
		X,Y,Z));
		}

	Handle_Geom_VectorWithMagnitude(const gp_Vec& V){
		return new Handle_Geom_VectorWithMagnitude(new Geom_VectorWithMagnitude(
		V));
		}

	Handle_Geom_VectorWithMagnitude(const gp_Pnt& P1,const gp_Pnt& P2){
		return new Handle_Geom_VectorWithMagnitude(new Geom_VectorWithMagnitude(
		P1,P2));
		}
	
	void SetCoord(const Standard_Real X,const Standard_Real Y,const Standard_Real Z)
	{
		(*self)->SetCoord(X,Y,Z);
	}

	void SetVec(const gp_Vec& V)
	{
		(*self)->SetVec(V);
	}

	void SetX(const Standard_Real X)
	{
		(*self)->SetX(X);
	}

	void SetY(const Standard_Real Y)
	{
		(*self)->SetY(Y);
	}

	void SetZ(const Standard_Real Z)
	{
		(*self)->SetZ(Z);
	}

	Standard_Real Magnitude() const
	{
		return (*self)->Magnitude();
	}

	Standard_Real SquareMagnitude() const
	{
		return (*self)->SquareMagnitude();
	}

	void Add(const Handle_Geom_Vector& Other)
	{
		(*self)->Add(Other);
	}

	void Cross(const Handle_Geom_Vector& Other)
	{
		(*self)->Cross(Other);
	}

	void CrossCross(const Handle_Geom_Vector& V1,const Handle_Geom_Vector& V2)
	{
		(*self)->CrossCross(V1,V2);
	}

	void Divide(const Standard_Real Scalar)
	{
		(*self)->Divide(Scalar);
	}

	void Multiply(const Standard_Real Scalar)
	{
		(*self)->Multiply(Scalar);
	}

	void Normalize()
	{
		(*self)->Normalize();
	}

	void Subtract(const Handle_Geom_Vector& Other)
	{
		(*self)->Subtract(Other);
	}

	void Transform(const gp_Trsf& T)
	{
		(*self)->Transform(T);
	}
}

class Handle_Geom_AxisPlacement: public Handle_Geom_Geometry
{
	Handle_Geom_AxisPlacement()=0;	
};

%extend Handle_Geom_AxisPlacement
{
	void SetAxis(const gp_Ax1& A1)
	{
		(*self)->SetAxis(A1);
	}

	void SetDirection(const gp_Dir& V)
	{
		(*self)->SetDirection(V);
	}

	void SetLocation(const gp_Pnt& P)
	{
		(*self)->SetLocation(P);
	}

	Standard_Real Angle(const Handle_Geom_AxisPlacement& Other) const
	{
		return (*self)->Angle(Other);
	}

	const gp_Ax1& Axis() const
	{
		return (*self)->Axis();
	}

	gp_Dir Direction() const
	{
		return (*self)->Direction();
	}

	gp_Pnt Location() const
	{
		return (*self)->Location();
	}
}

class Handle_Geom_Axis1Placement: public Handle_Geom_AxisPlacement
{
	Handle_Geom_Axis1Placement()=0;	
};

%extend Handle_Geom_Axis1Placement
{
	Handle_Geom_Axis1Placement(const gp_Ax1& A1){
		return new Handle_Geom_Axis1Placement(new Geom_Axis1Placement(
		A1));
		}

	Handle_Geom_Axis1Placement(const gp_Pnt& P,const gp_Dir& V){
		return new Handle_Geom_Axis1Placement(new Geom_Axis1Placement(
		P,V));
		}

	const gp_Ax1& Ax1() const
	{
		return (*self)->Ax1();
	}

	void Reverse()
	{
		(*self)->Reverse();
	}

	void SetDirection(const gp_Dir& V)
	{
		(*self)->SetDirection(V);
	}

	void Transform(const gp_Trsf& T)
	{
		(*self)->Transform(T);
	}
}

class Handle_Geom_Axis2Placement: public Handle_Geom_AxisPlacement
{
	Handle_Geom_Axis2Placement()=0;	
};

%extend Handle_Geom_Axis2Placement
{
	Handle_Geom_Axis2Placement(const gp_Ax2& A2){
		return new Handle_Geom_Axis2Placement(new Geom_Axis2Placement(
		A2));
		}

	Handle_Geom_Axis2Placement(const gp_Pnt& P,const gp_Dir& N,const gp_Dir& Vx){
		return new Handle_Geom_Axis2Placement(new Geom_Axis2Placement(
		P,N,Vx));
		}
	
	void SetAx2(const gp_Ax2& A2)
	{
		(*self)->SetAx2(A2);
	}

	void SetDirection(const gp_Dir& V)
	{
		(*self)->SetDirection(V);
	}

	void SetXDirection(const gp_Dir& Vx)
	{
		(*self)->SetXDirection(Vx);
	}

	void SetYDirection(const gp_Dir& Vy)
	{
		(*self)->SetYDirection(Vy);
	}

	gp_Ax2 Ax2() const
	{
		return (*self)->Ax2();
	}

	const gp_Dir& XDirection() const
	{
		return (*self)->XDirection();
	}

	const gp_Dir& YDirection() const
	{
		return (*self)->YDirection();
	}

	void Transform(const gp_Trsf& T)
	{
		(*self)->Transform(T);
	}
}

class Handle_Geom_Curve: public Handle_Geom_Geometry
{
	Handle_Geom_Curve()=0;	
};

%extend Handle_Geom_Curve
{
	void Reverse()
	{
		(*self)->Reverse();
	}

	Standard_Real ReversedParameter(const Standard_Real U) const
	{
		return (*self)->ReversedParameter(U);
	}

	Standard_Real TransformedParameter(const Standard_Real U,const gp_Trsf& T) const
	{
		return (*self)->TransformedParameter(U,T);
	}

	Standard_Real ParametricTransformation(const gp_Trsf& T) const
	{
		return (*self)->ParametricTransformation(T);
	}

	Standard_Real FirstParameter() const
	{
		return (*self)->FirstParameter();
	}
	
	Standard_Real LastParameter() const
	{
		return (*self)->LastParameter();
	}
	
	Standard_Boolean IsClosed() const
	{
		return (*self)->IsClosed();
	}
	
	Standard_Boolean IsPeriodic() const
	{
		return (*self)->IsPeriodic();
	}
	
	Standard_Real Period() const
	{
		return (*self)->Period();
	}

	GeomAbs_Shape Continuity() const
	{
		return (*self)->Continuity();
	}

	Standard_Boolean IsCN(const Standard_Integer N) const
	{
		return (*self)->IsCN(N);
	}

	void D0(const Standard_Real U,gp_Pnt& P) const
	{
		(*self)->D0(U,P);
	}

	void D1(const Standard_Real U,gp_Pnt& P,gp_Vec& V1) const
	{
		(*self)->D1(U,P,V1);
	}

	void D2(const Standard_Real U,gp_Pnt& P,gp_Vec& V1,gp_Vec& V2) const
	{
		(*self)->D2(U,P,V1,V2);
	}

	void D3(const Standard_Real U,gp_Pnt& P,gp_Vec& V1,gp_Vec& V2,gp_Vec& V3) const
	{
		(*self)->D3(U,P,V1,V2,V3);
	}

	gp_Vec DN(const Standard_Real U,const Standard_Integer N) const
	{
		return (*self)->DN(U,N);
	}

	gp_Pnt Value(const Standard_Real U) const
	{
		return (*self)->Value(U);
	}
}

class Handle_Geom_BoundedCurve : public Handle_Geom_Curve {
	Handle_Geom_BoundedCurve()=0;
};

%extend Handle_Geom_BoundedCurve
{
	gp_Pnt EndPoint() const
	{
		return (*self)->EndPoint();
	}

	gp_Pnt StartPoint() const
	{
		return (*self)->StartPoint();
	}
}

class Handle_Geom_Conic : public Handle_Geom_Curve {
	Handle_Geom_Conic()=0;
};

%extend Handle_Geom_Conic
{
	void SetAxis(const gp_Ax1& A1)
	{
		(*self)->SetAxis(A1);
	}

	void SetLocation(const gp_Pnt& P)
	{
		(*self)->SetLocation(P);
	}

	void SetPosition(const gp_Ax2& A2)
	{
		(*self)->SetPosition(A2);
	}

	gp_Ax1 Axis() const
	{
		return (*self)->Axis();
	}

	Standard_Real Eccentricity() const
	{
		return (*self)->Eccentricity();
	}

	 gp_Pnt Location() const
	 {
		return (*self)->Location();
	 }

	 const gp_Ax2& Position() const
	 {
		return (*self)->Position();
	 }

	 gp_Ax1 XAxis() const
	 {
		return (*self)->XAxis();
	 }

	 gp_Ax1 YAxis() const
	 {
		return (*self)->YAxis();
	 }

	 void Reverse()
	 {
		(*self)->Reverse();
	 }

	 Standard_Real ReversedParameter(const Standard_Real U) const
	 {
		return (*self)->ReversedParameter(U);
	 }

	 GeomAbs_Shape Continuity() const
	 {
		return (*self)->Continuity();
	 }

	 Standard_Boolean IsCN(const Standard_Integer N) const
	 {
		return (*self)->IsCN(N);
	 }
}

class Handle_Geom_Line : public Handle_Geom_Curve {
	Handle_Geom_Line()=0;
};

%extend Handle_Geom_Line
{
	Handle_Geom_Line(const gp_Ax1& A1){
		return new Handle_Geom_Line(new Geom_Line(
		A1));
		}

	Handle_Geom_Line(const gp_Lin& L){
		return new Handle_Geom_Line(new Geom_Line(
		L));
		}

	Handle_Geom_Line(const gp_Pnt& P,const gp_Dir& V){
		return new Handle_Geom_Line(new Geom_Line(
		P,V));
		}
	
	void SetLin(const gp_Lin& L)
	{
		(*self)->SetLin(L);
	}

	void SetDirection(const gp_Dir& V)
	{
		(*self)->SetDirection(V);
	}

	void SetLocation(const gp_Pnt& P)
	{
		(*self)->SetLocation(P);
	}

	void SetPosition(const gp_Ax1& A1)
	{
		(*self)->SetPosition(A1);
	}

	gp_Lin Lin() const
	{
		return (*self)->Lin();
	}

	const gp_Ax1& Position() const
	{
		return (*self)->Position();
	}

	void Reverse()
	{
		(*self)->Reverse();
	}

	Standard_Real ReversedParameter(const Standard_Real U) const
	{
		return (*self)->ReversedParameter(U);
	}

	Standard_Real  FirstParameter() const
	{
		return (*self)->FirstParameter();
	}

	Standard_Real  LastParameter() const
	{
		return (*self)->LastParameter();
	}

	Standard_Boolean IsClosed() const
	{
		return (*self)->IsClosed();
	}

	Standard_Boolean IsPeriodic() const
	{
		return (*self)->IsPeriodic();
	}

	GeomAbs_Shape Continuity() const
	{
		return (*self)->Continuity();
	}

	Standard_Boolean IsCN(const Standard_Integer N) const
	{
		return (*self)->IsCN(N);
	}

	void D0(const Standard_Real U,gp_Pnt& P) const
	{
		(*self)->D0(U,P);
	}

	void D1(const Standard_Real U,gp_Pnt& P,gp_Vec& V1) const
	{
		(*self)->D1(U,P,V1);
	}

	void D2(const Standard_Real U,gp_Pnt& P,gp_Vec& V1,gp_Vec& V2) const
	{
		(*self)->D2(U,P,V1,V2);
	}

	void D3(const Standard_Real U,gp_Pnt& P,gp_Vec& V1,gp_Vec& V2,gp_Vec& V3) const
	{
		(*self)->D3(U,P,V1,V2,V3);
	}

	gp_Vec DN(const Standard_Real U,const Standard_Integer N) const
	{
		return (*self)->DN(U,N);
	}

	void Transform(const gp_Trsf& T)
	{
		(*self)->Transform(T);
	}

	Standard_Real TransformedParameter(const Standard_Real U,const gp_Trsf& T) const
	{
		return (*self)->TransformedParameter(U,T);
	}

	Standard_Real ParametricTransformation(const gp_Trsf& T) const
	{
		return (*self)->ParametricTransformation(T);
	}
}

class Handle_Geom_OffsetCurve : public Handle_Geom_Curve {
	Handle_Geom_OffsetCurve()=0;
};

%extend Handle_Geom_OffsetCurve
{
	Handle_Geom_OffsetCurve(const Handle_Geom_Curve& C,const Standard_Real Offset,const gp_Dir& V){
		return new Handle_Geom_OffsetCurve(new Geom_OffsetCurve(
		C,Offset,V));
		}

	void Reverse()
	{
		(*self)->Reverse();
	}

	Standard_Real ReversedParameter(const Standard_Real U) const
	{
		return (*self)->ReversedParameter(U);
	}

	void SetBasisCurve(const Handle_Geom_Curve& C)
	{
		(*self)->SetBasisCurve(C);
	}

	void SetDirection(const gp_Dir& V)
	{
		(*self)->SetDirection(V);
	}

	void SetOffsetValue(const Standard_Real D)
	{
		(*self)->SetOffsetValue(D);
	}

	Handle_Geom_Curve BasisCurve() const
	{
		return (*self)->BasisCurve();
	}

	GeomAbs_Shape Continuity() const
	{
		return (*self)->Continuity();
	}

	const gp_Dir& Direction() const
	{
		return (*self)->Direction();
	}

	void D0(const Standard_Real U,gp_Pnt& P) const
	{
		(*self)->D0(U,P);
	}

	void D1(const Standard_Real U,gp_Pnt& P,gp_Vec& V1) const
	{
		(*self)->D1(U,P,V1);
	}

	void D2(const Standard_Real U,gp_Pnt& P,gp_Vec& V1,gp_Vec& V2) const
	{
		(*self)->D2(U,P,V1,V2);
	}

	void D3(const Standard_Real U,gp_Pnt& P,gp_Vec& V1,gp_Vec& V2,gp_Vec& V3) const
	{
		(*self)->D3(U,P,V1,V2,V3);
	}

	gp_Vec DN(const Standard_Real U,const Standard_Integer N) const
	{
		return (*self)->DN(U,N);
	}

	void Value(const Standard_Real U,gp_Pnt& P,gp_Pnt& Pbasis,gp_Vec& V1basis) const
	{
		(*self)->Value(U,P,Pbasis,V1basis);
	}

	void D0(const Standard_Real U,gp_Pnt& P,gp_Pnt& Pbasis,gp_Vec& V1basis) const
	{
		(*self)->D0(U,P,Pbasis,V1basis);
	}

	void D1(const Standard_Real U,gp_Pnt& P,gp_Pnt& Pbasis,gp_Vec& V1,gp_Vec& V1basis,gp_Vec& V2basis) const
	{
		(*self)->D1(U,P,Pbasis,V1,V1basis,V2basis);
	}

	void D2(const Standard_Real U,gp_Pnt& P,gp_Pnt& Pbasis,gp_Vec& V1,gp_Vec& V2,gp_Vec& V1basis,gp_Vec& V2basis,gp_Vec& V3basis) const
	{
		(*self)->D2(U,P,Pbasis,V1,V2,V1basis,V2basis,V3basis);
	}

	Standard_Real  FirstParameter() const
	{
		return (*self)->FirstParameter();
	}

	Standard_Real  LastParameter() const
	{
		return (*self)->LastParameter();
	}

	Standard_Real Offset() const
	{
		return (*self)->Offset();
	}

	Standard_Boolean IsClosed() const
	{
		return (*self)->IsClosed();
	}

	Standard_Boolean IsCN(const Standard_Integer N) const
	{
		return (*self)->IsCN(N);
	}

	Standard_Boolean IsPeriodic() const
	{
		return (*self)->IsPeriodic();
	}

	Standard_Real Period() const
	{
		return (*self)->Period();
	}

	void Transform(const gp_Trsf& T)
	{
		(*self)->Transform(T);
	}

	Standard_Real TransformedParameter(const Standard_Real U,const gp_Trsf& T) const
	{
		return (*self)->TransformedParameter(U,T);
	}

	Standard_Real ParametricTransformation(const gp_Trsf& T) const
	{
		return (*self)->ParametricTransformation(T);
	}
}

class Handle_ShapeExtend_ComplexCurve : public Handle_Geom_Curve {
	Handle_ShapeExtend_ComplexCurve()=0;
};

%extend Handle_ShapeExtend_ComplexCurve
{
	Standard_Integer NbCurves() const = 0
	{
		return (*self)->NbCurves();
	}

	const Handle_Geom_Curve& Curve(const Standard_Integer index) const = 0
	{
		return (*self)->Curve(index);
	} 

	Standard_Integer LocateParameter(const Standard_Real U,Standard_Real& UOut) const = 0
	{
		return (*self)->LocateParameter(U,UOut);
	}

	Standard_Real LocalToGlobal(const Standard_Integer index,const Standard_Real Ulocal) const = 0
	{
		return (*self)->LocalToGlobal(index,Ulocal);
	}

	void Transform(const gp_Trsf& T)
	{
		(*self)->Transform(T);
	}

	Standard_Real ReversedParameter(const Standard_Real U) const
	{
		return (*self)->ReversedParameter(U);
	}

	Standard_Real  FirstParameter() const
	{
		return (*self)->FirstParameter();
	}

	Standard_Real  LastParameter() const
	{
		return (*self)->LastParameter();
	}

	Standard_Boolean IsClosed() const
	{
		return (*self)->IsClosed();
	}

	Standard_Boolean IsPeriodic() const
	{
		return (*self)->IsPeriodic();
	}

	GeomAbs_Shape Continuity() const
	{
		return (*self)->Continuity();
	}

	Standard_Boolean IsCN(const Standard_Integer N) const
	{
		return (*self)->IsCN(N);
	}

	void D0(const Standard_Real U,gp_Pnt& P) const
	{
		(*self)->D0(U,P);
	}

	void D1(const Standard_Real U,gp_Pnt& P,gp_Vec& V1) const
	{
		(*self)->D1(U,P,V1);
	}

	void D2(const Standard_Real U,gp_Pnt& P,gp_Vec& V1,gp_Vec& V2) const
	{
		(*self)->D2(U,P,V1,V2);
	}

	void D3(const Standard_Real U,gp_Pnt& P,gp_Vec& V1,gp_Vec& V2,gp_Vec& V3) const
	{
		(*self)->D3(U,P,V1,V2,V3);
	}

	gp_Vec DN(const Standard_Real U,const Standard_Integer N) const
	{
		return (*self)->DN(U,N);
	}

	Standard_Real GetScaleFactor(const Standard_Integer ind) const = 0
	{
		return (*self)->GetScaleFactor(ind);
	}

	Standard_Boolean CheckConnectivity(const Standard_Real Preci)
	{
		return (*self)->CheckConnectivity(Preci);
	}
}

class Handle_Geom_Circle : public Handle_Geom_Conic {
	Handle_Geom_Circle()=0;
};

%extend Handle_Geom_Circle
{
	Handle_Geom_Circle(const gp_Circ& C){
		return new Handle_Geom_Circle(new Geom_Circle(
		C));
		}

	Handle_Geom_Circle(const gp_Ax2& A2,const Standard_Real Radius){
		return new Handle_Geom_Circle(new Geom_Circle(
		A2,Radius));
		}

	void SetCirc(const gp_Circ& C)
	{
		(*self)->SetCirc(C);
	}

	void SetRadius(const Standard_Real R)
	{
		(*self)->SetRadius(R);
	}

	gp_Circ Circ() const
	{
		return (*self)->Circ();
	}
	
	Standard_Real Radius() const
	{
		return (*self)->Radius();
	}

	Standard_Real ReversedParameter(const Standard_Real U) const
	{
		return (*self)->ReversedParameter(U);
	}

	Standard_Real Eccentricity() const
	{
		return (*self)->Eccentricity();
	}

	Standard_Real  FirstParameter() const
	{
		return (*self)->FirstParameter();
	}

	Standard_Real  LastParameter() const
	{
		return (*self)->LastParameter();
	}

	Standard_Boolean IsClosed() const
	{
		return (*self)->IsClosed();
	}

	Standard_Boolean IsPeriodic() const
	{
		return (*self)->IsPeriodic();
	}

	void D0(const Standard_Real U,gp_Pnt& P) const
	{
		(*self)->D0(U,P);
	}

	void D1(const Standard_Real U,gp_Pnt& P,gp_Vec& V1) const
	{
		(*self)->D1(U,P,V1);
	}

	void D2(const Standard_Real U,gp_Pnt& P,gp_Vec& V1,gp_Vec& V2) const
	{
		(*self)->D2(U,P,V1,V2);
	}

	void D3(const Standard_Real U,gp_Pnt& P,gp_Vec& V1,gp_Vec& V2,gp_Vec& V3) const
	{
		(*self)->D3(U,P,V1,V2,V3);
	}

	gp_Vec DN(const Standard_Real U,const Standard_Integer N) const
	{
		return (*self)->DN(U,N);
	}

	void Transform(const gp_Trsf& T)
	{
		(*self)->Transform(T);
	}
}

class Handle_Geom_Ellipse : public Handle_Geom_Conic {
	Handle_Geom_Ellipse()=0;
};

%extend Handle_Geom_Ellipse
{
	Handle_Geom_Ellipse(const gp_Elips& E){
		return new Handle_Geom_Ellipse(new Geom_Ellipse(
		E));
		}

	Handle_Geom_Ellipse(const gp_Ax2& A2,const Standard_Real MajorRadius,const Standard_Real MinorRadius){
		return new Handle_Geom_Ellipse(new Geom_Ellipse(
		A2,MajorRadius,MinorRadius));
		}

	void SetElips(const gp_Elips& E)
	{
		(*self)->SetElips(E);
	}

	void SetMajorRadius(const Standard_Real MajorRadius)
	{
		(*self)->SetMajorRadius(MajorRadius);
	}

	void SetMinorRadius(const Standard_Real MinorRadius)
	{
		(*self)->SetMinorRadius(MinorRadius);
	}

	gp_Elips Elips() const
	{
		return (*self)->Elips();
	}
	
	Standard_Real ReversedParameter(const Standard_Real U) const
	{
		return (*self)->ReversedParameter(U);
	}

	gp_Ax1 Directrix1() const
	{
		return (*self)->Directrix1();
	}

	gp_Ax1 Directrix2() const
	{
		return (*self)->Directrix2();
	}

	Standard_Real Eccentricity() const
	{
		return (*self)->Eccentricity();
	}

	Standard_Real Focal() const
	{
		return (*self)->Focal();
	}

	gp_Pnt Focus1() const
	{
		return (*self)->Focus1();
	}

	gp_Pnt Focus2() const
	{
		return (*self)->Focus2();
	}

	Standard_Real MajorRadius() const
	{
		return (*self)->MajorRadius();
	}

	Standard_Real MinorRadius() const
	{
		return (*self)->MinorRadius();
	}

	Standard_Real Parameter() const
	{
		return (*self)->Parameter();
	}

	Standard_Real  FirstParameter() const
	{
		return (*self)->FirstParameter();
	}

	Standard_Real  LastParameter() const
	{
		return (*self)->LastParameter();
	}

	Standard_Boolean IsClosed() const
	{
		return (*self)->IsClosed();
	}

	Standard_Boolean IsPeriodic() const
	{
		return (*self)->IsPeriodic();
	}

	void D0(const Standard_Real U,gp_Pnt& P) const
	{
		(*self)->D0(U,P);
	}

	void D1(const Standard_Real U,gp_Pnt& P,gp_Vec& V1) const
	{
		(*self)->D1(U,P,V1);
	}

	void D2(const Standard_Real U,gp_Pnt& P,gp_Vec& V1,gp_Vec& V2) const
	{
		(*self)->D2(U,P,V1,V2);
	}

	void D3(const Standard_Real U,gp_Pnt& P,gp_Vec& V1,gp_Vec& V2,gp_Vec& V3) const
	{
		(*self)->D3(U,P,V1,V2,V3);
	}

	gp_Vec DN(const Standard_Real U,const Standard_Integer N) const
	{
		return (*self)->DN(U,N);
	}

	void Transform(const gp_Trsf& T)
	{
		(*self)->Transform(T);
	}
}

class Handle_Geom_Hyperbola : public Handle_Geom_Conic {
	Handle_Geom_Hyperbola()=0;
};

%extend Handle_Geom_Hyperbola
{
	Handle_Geom_Hyperbola(const gp_Hypr& H){
		return new Handle_Geom_Hyperbola(new Geom_Hyperbola(
		H));
		}

	Handle_Geom_Hyperbola(const gp_Ax2& A2,const Standard_Real MajorRadius,const Standard_Real MinorRadius){
		return new Handle_Geom_Hyperbola(new Geom_Hyperbola(
		A2,MajorRadius,MinorRadius));
		}

	void SetHypr(const gp_Hypr& H)
	{
		(*self)->SetHypr(H);
	}

	void SetMajorRadius(const Standard_Real MajorRadius)
	{
		(*self)->SetMajorRadius(MajorRadius);
	}

	void SetMinorRadius(const Standard_Real MinorRadius)
	{
		(*self)->SetMinorRadius(MinorRadius);
	}

	gp_Hypr Hypr() const
	{
		return (*self)->Hypr();
	}
	
	Standard_Real ReversedParameter(const Standard_Real U) const
	{
		return (*self)->ReversedParameter(U);
	}

	Standard_Real  FirstParameter() const
	{
		return (*self)->FirstParameter();
	}

	Standard_Real  LastParameter() const
	{
		return (*self)->LastParameter();
	}

	Standard_Boolean IsClosed() const
	{
		return (*self)->IsClosed();
	}

	Standard_Boolean IsPeriodic() const
	{
		return (*self)->IsPeriodic();
	}

	gp_Ax1 Asymptote1() const
	{
		return (*self)->Asymptote1();
	}

	gp_Ax1 Asymptote2() const
	{
		return (*self)->Asymptote2();
	}

	gp_Hypr ConjugateBranch1() const
	{
		return (*self)->ConjugateBranch1();
	}

	gp_Hypr ConjugateBranch2() const
	{
		return (*self)->ConjugateBranch2();
	}
	
	gp_Ax1 Directrix1() const
	{
		return (*self)->Directrix1();
	}

	gp_Ax1 Directrix2() const
	{
		return (*self)->Directrix2();
	}

	Standard_Real Eccentricity() const
	{
		return (*self)->Eccentricity();
	}

	Standard_Real Focal() const
	{
		return (*self)->Focal();
	}

	gp_Pnt Focus1() const
	{
		return (*self)->Focus1();
	}

	gp_Pnt Focus2() const
	{
		return (*self)->Focus2();
	}

	Standard_Real MajorRadius() const
	{
		return (*self)->MajorRadius();
	}

	Standard_Real MinorRadius() const
	{
		return (*self)->MinorRadius();
	}

	gp_Hypr OtherBranch() const
	{
		return (*self)->OtherBranch();
	}

	Standard_Real Parameter() const
	{
		return (*self)->Parameter();
	}

	void D0(const Standard_Real U,gp_Pnt& P) const
	{
		(*self)->D0(U,P);
	}

	void D1(const Standard_Real U,gp_Pnt& P,gp_Vec& V1) const
	{
		(*self)->D1(U,P,V1);
	}

	void D2(const Standard_Real U,gp_Pnt& P,gp_Vec& V1,gp_Vec& V2) const
	{
		(*self)->D2(U,P,V1,V2);
	}

	void D3(const Standard_Real U,gp_Pnt& P,gp_Vec& V1,gp_Vec& V2,gp_Vec& V3) const
	{
		(*self)->D3(U,P,V1,V2,V3);
	}

	gp_Vec DN(const Standard_Real U,const Standard_Integer N) const
	{
		return (*self)->DN(U,N);
	}

	void Transform(const gp_Trsf& T)
	{
		(*self)->Transform(T);
	}
}

class Handle_Geom_Parabola : public Handle_Geom_Conic {
	Handle_Geom_Parabola()=0;
};

%extend Handle_Geom_Parabola
{
	Handle_Geom_Parabola(const gp_Parab& Prb){
		return new Handle_Geom_Parabola(new Geom_Parabola(
		Prb));
		}

	Handle_Geom_Parabola(const gp_Ax2& A2,const Standard_Real Focal){
		return new Handle_Geom_Parabola(new Geom_Parabola(
		A2,Focal));
		}

	Handle_Geom_Parabola(const gp_Ax1& D,const gp_Pnt& F){
		return new Handle_Geom_Parabola(new Geom_Parabola(
		D,F));
		}

	void SetFocal(const Standard_Real Focal)
	{
		(*self)->SetFocal(Focal);
	}

	void SetParab(const gp_Parab& Prb)
	{
		(*self)->SetParab(Prb);
	}

	gp_Parab Parab() const
	{
		return (*self)->Parab();
	}
	
	Standard_Real ReversedParameter(const Standard_Real U) const
	{
		return (*self)->ReversedParameter(U);
	}

	Standard_Real  FirstParameter() const
	{
		return (*self)->FirstParameter();
	}

	Standard_Real  LastParameter() const
	{
		return (*self)->LastParameter();
	}

	Standard_Boolean IsClosed() const
	{
		return (*self)->IsClosed();
	}

	Standard_Boolean IsPeriodic() const
	{
		return (*self)->IsPeriodic();
	}

	gp_Ax1 Directrix() const
	{
		return (*self)->Directrix();
	}

	Standard_Real Eccentricity() const
	{
		return (*self)->Eccentricity();
	}

	gp_Pnt Focus() const
	{
		return (*self)->Focus();
	}

	Standard_Real Focal() const
	{
		return (*self)->Focal();
	}

	Standard_Real Parameter() const
	{
		return (*self)->Parameter();
	}

	void D0(const Standard_Real U,gp_Pnt& P) const
	{
		(*self)->D0(U,P);
	}

	void D1(const Standard_Real U,gp_Pnt& P,gp_Vec& V1) const
	{
		(*self)->D1(U,P,V1);
	}

	void D2(const Standard_Real U,gp_Pnt& P,gp_Vec& V1,gp_Vec& V2) const
	{
		(*self)->D2(U,P,V1,V2);
	}

	void D3(const Standard_Real U,gp_Pnt& P,gp_Vec& V1,gp_Vec& V2,gp_Vec& V3) const
	{
		(*self)->D3(U,P,V1,V2,V3);
	}

	gp_Vec DN(const Standard_Real U,const Standard_Integer N) const
	{
		return (*self)->DN(U,N);
	}

	void Transform(const gp_Trsf& T)
	{
		(*self)->Transform(T);
	}

	Standard_Real TransformedParameter(const Standard_Real U,const gp_Trsf& T) const
	{
		return (*self)->TransformedParameter(U,T);
	}

	Standard_Real ParametricTransformation(const gp_Trsf& T) const
	{
		return (*self)->ParametricTransformation(T);
	}
}

class Handle_Geom_BezierCurve : public Handle_Geom_BoundedCurve {
	Handle_Geom_BezierCurve()=0;
};

%extend Handle_Geom_BezierCurve
{
	Handle_Geom_BezierCurve(const TColgp_Array1OfPnt& CurvePoles){	
		return new Handle_Geom_BezierCurve(new Geom_BezierCurve( 	
		CurvePoles));
		}
	
	Handle_Geom_BezierCurve(const TColgp_Array1OfPnt& CurvePoles,const TColStd_Array1OfReal& PoleWeights){	
		return new Handle_Geom_BezierCurve(new Geom_BezierCurve( 	
		CurvePoles,PoleWeights));
		}

	void Increase(const Standard_Integer Degree)
	{
		(*self)->Increase(Degree);
	}

	void InsertPoleAfter(const Standard_Integer Index,const gp_Pnt& P)
	{
		(*self)->InsertPoleAfter(Index,P);
	}

	void InsertPoleAfter(const Standard_Integer Index,const gp_Pnt& P,const Standard_Real Weight)
	{
		(*self)->InsertPoleAfter(Index,P,Weight);
	}

	void InsertPoleBefore(const Standard_Integer Index,const gp_Pnt& P)
	{
		(*self)->InsertPoleAfter(Index,P);
	}

	void InsertPoleBefore(const Standard_Integer Index,const gp_Pnt& P,const Standard_Real Weight)
	{
		(*self)->InsertPoleAfter(Index,P,Weight);
	}

	void RemovePole(const Standard_Integer Index)
	{
		(*self)->RemovePole(Index);
	}

	void Reverse()
	{
		(*self)->Reverse();
	}

	Standard_Real ReversedParameter(const Standard_Real U) const
	{
		return (*self)->ReversedParameter(U);
	}

	void Segment(const Standard_Real U1,const Standard_Real U2)
	{
		(*self)->Segment(U1,U2);
	}

	void SetPole(const Standard_Integer Index,const gp_Pnt& P)
	{
		(*self)->SetPole(Index,P);
	}

	void SetPole(const Standard_Integer Index,const gp_Pnt& P,const Standard_Real Weight)
	{
		(*self)->SetPole(Index,P,Weight);
	}

	void SetWeight(const Standard_Integer Index,const Standard_Real Weight)
	{
		(*self)->SetWeight(Index,Weight);
	}

	Standard_Boolean IsClosed() const
	{
		return (*self)->IsClosed();
	}
	
	Standard_Boolean IsCN(const Standard_Integer N) const
	{
		return (*self)->IsCN(N);
	}

	Standard_Boolean IsPeriodic() const
	{
		return (*self)->IsPeriodic();
	}
	
	Standard_Boolean IsRational() const
	{
		return (*self)->IsRational();
	}

	GeomAbs_Shape Continuity() const
	{
		return (*self)->Continuity();
	}

	Standard_Integer Degree() const
	{
		return (*self)->Degree();
	}

	void D0(const Standard_Real U,gp_Pnt& P) const
	{
		(*self)->D0(U,P);
	}

	void D1(const Standard_Real U,gp_Pnt& P,gp_Vec& V1) const
	{
		(*self)->D1(U,P,V1);
	}

	void D2(const Standard_Real U,gp_Pnt& P,gp_Vec& V1,gp_Vec& V2) const
	{
		(*self)->D2(U,P,V1,V2);
	}

	void D3(const Standard_Real U,gp_Pnt& P,gp_Vec& V1,gp_Vec& V2,gp_Vec& V3) const
	{
		(*self)->D3(U,P,V1,V2,V3);
	}

	gp_Vec DN(const Standard_Real U,const Standard_Integer N) const
	{
		return (*self)->DN(U,N);
	}

	gp_Pnt StartPoint() const
	{
		return (*self)->StartPoint();
	}

	gp_Pnt EndPoint() const
	{
		return (*self)->EndPoint();
	}

	Standard_Real FirstParameter() const
	{
		return (*self)->FirstParameter();
	}

	Standard_Real LastParameter() const
	{
		return (*self)->LastParameter();
	}

	Standard_Integer NbPoles() const
	{
		return (*self)->NbPoles();
	}

	gp_Pnt Pole(const Standard_Integer Index) const
	{
		return (*self)->Pole(Index);
	}

	void Poles(TColgp_Array1OfPnt& P) const
	{
		(*self)->Poles(P);
	}

	Standard_Real Weight(const Standard_Integer Index) const
	{
		return (*self)->Weight(Index);
	}

	void Weights(TColStd_Array1OfReal& W) const
	{
		(*self)->Weights(W);
	}

	void Transform(const gp_Trsf& T)
	{
		(*self)->Transform(T);
	}

	Standard_Integer MaxDegree()
	{
		return (*self)->MaxDegree();
	}

	void Resolution(const Standard_Real Tolerance3D,Standard_Real& UTolerance)
	{
		(*self)->Resolution(Tolerance3D,UTolerance);
	}
}

class Handle_Geom_BSplineCurve : public Handle_Geom_BoundedCurve {
	Handle_Geom_BSplineCurve()=0;
};

%extend Handle_Geom_BSplineCurve
{
	Handle_Geom_BSplineCurve(const TColgp_Array1OfPnt& Poles,const TColStd_Array1OfReal& Knots, 
		const TColStd_Array1OfInteger& Multiplicities, const Standard_Integer Degree, 
		const Standard_Boolean Periodic = Standard_False){	
		return new Handle_Geom_BSplineCurve(new Geom_BSplineCurve( 	
		Poles, Knots, Multiplicities, Degree, Periodic));
		}

	Handle_Geom_BSplineCurve(const TColgp_Array1OfPnt& Poles, const TColStd_Array1OfReal& Weights,
		const TColStd_Array1OfReal& Knots, const TColStd_Array1OfInteger& Multiplicities,
		const Standard_Integer Degree, const Standard_Boolean Periodic = Standard_False,
		const Standard_Boolean CheckRational = Standard_True){	
		return new Handle_Geom_BSplineCurve(new Geom_BSplineCurve( 	
		Poles, Weights, Knots, Multiplicities, Degree, Periodic, CheckRational));
		}

	void IncreaseDegree(const Standard_Integer Degree)
	{
		(*self)->IncreaseDegree(Degree);
	}

	void IncreaseMultiplicity(const Standard_Integer Index,const Standard_Integer M)
	{
		(*self)->IncreaseMultiplicity(Index,M);
	}

	void IncreaseMultiplicity(const Standard_Integer I1,const Standard_Integer I2,const Standard_Integer M)
	{
		(*self)->IncreaseMultiplicity(I1,I2,M);
	}

	void IncrementMultiplicity(const Standard_Integer I1,const Standard_Integer I2,const Standard_Integer M)
	{
		(*self)->IncrementMultiplicity(I1,I2,M);
	}

	void InsertKnot(const Standard_Real U,const Standard_Integer M = 1,const Standard_Real ParametricTolerance = 0.0,const Standard_Boolean Add = Standard_True)
	{
		(*self)->InsertKnot(U,M,ParametricTolerance,Add);
	}

	void InsertKnots(const TColStd_Array1OfReal& Knots,const TColStd_Array1OfInteger& Mults,const Standard_Real ParametricTolerance = 0.0,const Standard_Boolean Add = Standard_False)
	{
		(*self)->InsertKnots(Knots,Mults,ParametricTolerance,Add);
	}

	Standard_Boolean RemoveKnot(const Standard_Integer Index,const Standard_Integer M,const Standard_Real Tolerance)
	{
		 return (*self)->RemoveKnot(Index,M,Tolerance);
	}

	void Reverse()
	{
		(*self)->Reverse();
	}

	Standard_Real ReversedParameter(const Standard_Real U) const
	{
		return (*self)->ReversedParameter(U);
	}

	void Segment(const Standard_Real U1,const Standard_Real U2)
	{
		(*self)->Segment(U1,U2);
	}

	 void SetKnot(const Standard_Integer Index,const Standard_Real K)
	{
		(*self)->SetKnot(Index,K);
	}

	void SetKnots(const TColStd_Array1OfReal& K)
	{
		(*self)->SetKnots(K);
	}
  
	void SetKnot(const Standard_Integer Index,const Standard_Real K,const Standard_Integer M)
	{
		(*self)->SetKnot(Index,K,M);
	}

	void PeriodicNormalization(Standard_Real& U) const
	{
		(*self)->PeriodicNormalization(U);
	}

	void SetPeriodic()
	{
		(*self)->SetPeriodic();
	}

	void SetOrigin(const Standard_Integer Index)
	{
		(*self)->SetOrigin(Index);
	}

	void SetOrigin(const Standard_Real U,const Standard_Real Tol)
	{
		(*self)->SetOrigin(U,Tol);
	}
  
	void SetNotPeriodic()
	{
		(*self)->SetNotPeriodic();
	}
  
	void SetPole(const Standard_Integer Index,const gp_Pnt& P)
	{
		(*self)->SetPole(Index,P);
	}
  
	void SetPole(const Standard_Integer Index,const gp_Pnt& P,const Standard_Real Weight)
	{
		(*self)->SetPole(Index,P,Weight);
	}

	void SetWeight(const Standard_Integer Index,const Standard_Real Weight)
	{
		(*self)->SetWeight(Index,Weight);
	}
  
	void MovePoint(const Standard_Real U,const gp_Pnt& P,const Standard_Integer Index1,const Standard_Integer Index2,Standard_Integer FirstModifiedPole,Standard_Integer LastModifiedPole)
	{
		(*self)->MovePoint(U,P,Index1,Index2,FirstModifiedPole,LastModifiedPole);
	}

	void MovePointAndTangent(const Standard_Real U,const gp_Pnt& P,const gp_Vec& Tangent,const Standard_Real Tolerance,const Standard_Integer StartingCondition,const Standard_Integer EndingCondition,Standard_Integer ErrorStatus)
	{
		(*self)->MovePointAndTangent(U,P,Tangent,Tolerance,StartingCondition,EndingCondition,ErrorStatus);
	}

	Standard_Boolean IsCN(const Standard_Integer N) const
	{
		 return (*self)->IsCN(N);
	}
  
	Standard_Boolean IsClosed() const
	{
		return (*self)->IsClosed();
	}
  
	Standard_Boolean IsPeriodic() const
	{
		return (*self)->IsPeriodic();
	}
  
	Standard_Boolean IsRational() const
	{
		return (*self)->IsRational();
	}
  
	GeomAbs_Shape Continuity() const
	{
		return (*self)->Continuity();
	}
  
	Standard_Integer Degree() const
	{
		return (*self)->Degree();
	}

	void D0(const Standard_Real U,gp_Pnt& P) const
	{
		(*self)->D0(U,P);
	}

	void D1(const Standard_Real U,gp_Pnt& P,gp_Vec& V1) const
	{
		(*self)->D1(U,P,V1);
	}

	void D2(const Standard_Real U,gp_Pnt& P,gp_Vec& V1,gp_Vec& V2) const
	{
		(*self)->D2(U,P,V1,V2);
	}

	void D3(const Standard_Real U,gp_Pnt& P,gp_Vec& V1,gp_Vec& V2,gp_Vec& V3) const
	{
		(*self)->D3(U,P,V1,V2,V3);
	}

	gp_Vec DN(const Standard_Real U,const Standard_Integer N) const
	{
		return (*self)->DN(U,N);
	}
  
	gp_Pnt LocalValue(const Standard_Real U,const Standard_Integer FromK1,const Standard_Integer ToK2) const
	{
		return (*self)->LocalValue(U,FromK1,ToK2);
	}

	void LocalD0(const Standard_Real U,const Standard_Integer FromK1,const Standard_Integer ToK2,gp_Pnt& P) const
	{
		(*self)->LocalD0(U,FromK1,ToK2,P);
	}

	void LocalD1(const Standard_Real U,const Standard_Integer FromK1,const Standard_Integer ToK2,gp_Pnt& P,gp_Vec& V1) const
	{
		(*self)->LocalD1(U,FromK1,ToK2,P,V1);
	}
	
	void LocalD2(const Standard_Real U,const Standard_Integer FromK1,const Standard_Integer ToK2,gp_Pnt& P,gp_Vec& V1,gp_Vec& V2) const
	{
		(*self)->LocalD2(U,FromK1,ToK2,P,V1,V2);
	}

	void LocalD3(const Standard_Real U,const Standard_Integer FromK1,const Standard_Integer ToK2,gp_Pnt& P,gp_Vec& V1,gp_Vec& V2,gp_Vec& V3) const
	{
		(*self)->LocalD3(U,FromK1,ToK2,P,V1,V2,V3);
	}

	gp_Vec LocalDN(const Standard_Real U,const Standard_Integer FromK1,const Standard_Integer ToK2,const Standard_Integer N) const
	{
		return (*self)->LocalDN(U,FromK1,ToK2,N);
	}

	gp_Pnt EndPoint() const
	{
		return (*self)->EndPoint();
	}

	Standard_Integer FirstUKnotIndex() const
	{
		return (*self)->FirstUKnotIndex();
	}

	Standard_Real FirstParameter() const
	{
		return (*self)->FirstParameter();
	}

	Standard_Real Knot(const Standard_Integer Index) const
	{
		return (*self)->Knot(Index);
	}

	void Knots(TColStd_Array1OfReal& K) const
	{
		(*self)->Knots(K);
	}

	void KnotSequence(TColStd_Array1OfReal& K) const
	{
		(*self)->KnotSequence(K);
	}

	/*GeomAbs_BSplKnotDistribution KnotDistribution() const
	{
		return (*self)->KnotDistribution();
	}*/

	Standard_Integer LastUKnotIndex() const
	{
		return (*self)->LastUKnotIndex();
	}

	Standard_Real LastParameter() const
	{
		return (*self)->LastParameter();
	}

	void LocateU(const Standard_Real U,const Standard_Real ParametricTolerance,Standard_Integer I1,Standard_Integer I2,const Standard_Boolean WithKnotRepetition = Standard_False) const
	{
		(*self)->LocateU(U,ParametricTolerance,I1,I2,WithKnotRepetition);
	}

	Standard_Integer Multiplicity(const Standard_Integer Index) const
	{
		return (*self)->Multiplicity(Index);
	}

	void Multiplicities(TColStd_Array1OfInteger& M) const
	{
		(*self)->Multiplicities(M);
	}
  
	Standard_Integer NbKnots() const
	{
		return (*self)->NbKnots();
	}
  
	Standard_Integer NbPoles() const
	{
		return (*self)->NbPoles();
	}
  
	gp_Pnt Pole(const Standard_Integer Index) const
	{
		return (*self)->Pole(Index);
	}

	void Poles(TColgp_Array1OfPnt& P) const
	{
		(*self)->Poles(P);
	}
  
	gp_Pnt StartPoint() const
	{
		return (*self)->StartPoint();
	}

	Standard_Real Weight(const Standard_Integer Index) const
	{
		return (*self)->Weight(Index);
	}

	void Weights(TColStd_Array1OfReal& W) const
	{
		(*self)->Weights(W);
	}

	void Transform(const gp_Trsf& T)
	{
		(*self)->Transform(T);
	}

	Standard_Integer MaxDegree()
	{
		return (*self)->MaxDegree();
	}

	void Resolution(const Standard_Real Tolerance3D,Standard_Real& UTolerance)
	{
		(*self)->Resolution(Tolerance3D,UTolerance);
	}
}

class Handle_Geom_TrimmedCurve : public Handle_Geom_BoundedCurve {
	Handle_Geom_TrimmedCurve()=0;
};

%extend Handle_Geom_TrimmedCurve
{
	Handle_Geom_TrimmedCurve(const Handle_Geom_Curve& C,const Standard_Real U1,const Standard_Real U2,const Standard_Boolean Sense = Standard_True){	
		return new Handle_Geom_TrimmedCurve(new Geom_TrimmedCurve( 	
		C,U1,U2,Sense));
		}

	void Reverse()
	{
		(*self)->Reverse();
	}

	Standard_Real ReversedParameter(const Standard_Real U) const
	{
		return (*self)->ReversedParameter(U);
	}

	void SetTrim(const Standard_Real U1,const Standard_Real U2,const Standard_Boolean Sense = Standard_True)
	{
		(*self)->SetTrim(U1,U2,Sense);
	}

	Handle_Geom_Curve BasisCurve() const
	{
		return (*self)->BasisCurve();
	}

	GeomAbs_Shape Continuity() const
	{
		return (*self)->Continuity();
	}

	Standard_Boolean IsCN(const Standard_Integer N) const
	{
		 return (*self)->IsCN(N);
	}

	gp_Pnt EndPoint() const
	{
		return (*self)->EndPoint();
	}

	Standard_Real FirstParameter() const
	{
		return (*self)->FirstParameter();
	}
  
	Standard_Boolean IsClosed() const
	{
		return (*self)->IsClosed();
	}
  
	Standard_Boolean IsPeriodic() const
	{
		return (*self)->IsPeriodic();
	}

	Standard_Real Period() const
	{
		return (*self)->Period();
	}

	Standard_Real LastParameter() const
	{
		return (*self)->LastParameter();
	}

	gp_Pnt StartPoint() const
	{
		return (*self)->StartPoint();
	}

	void D0(const Standard_Real U,gp_Pnt& P) const
	{
		(*self)->D0(U,P);
	}

	void D1(const Standard_Real U,gp_Pnt& P,gp_Vec& V1) const
	{
		(*self)->D1(U,P,V1);
	}

	void D2(const Standard_Real U,gp_Pnt& P,gp_Vec& V1,gp_Vec& V2) const
	{
		(*self)->D2(U,P,V1,V2);
	}

	void D3(const Standard_Real U,gp_Pnt& P,gp_Vec& V1,gp_Vec& V2,gp_Vec& V3) const
	{
		(*self)->D3(U,P,V1,V2,V3);
	}

	gp_Vec DN(const Standard_Real U,const Standard_Integer N) const
	{
		return (*self)->DN(U,N);
	}

	void Transform(const gp_Trsf& T)
	{
		(*self)->Transform(T);
	}

	Standard_Real TransformedParameter(const Standard_Real U,const gp_Trsf& T) const
	{
		return (*self)->TransformedParameter(U,T);
	}

	Standard_Real ParametricTransformation(const gp_Trsf& T) const
	{
		return (*self)->ParametricTransformation(T);
	}
}

class Handle_Geom_Surface: public Handle_Geom_Geometry
{
	Handle_Geom_Surface()=0;
};

%extend Handle_Geom_Surface
{
	void UReverse()  = 0
	{
		(*self)->UReverse();
	}

	Handle_Geom_Surface UReversed() const
	{
		return (*self)->UReversed();
	}

	Standard_Real UReversedParameter(const Standard_Real U) const = 0
	{
		return (*self)->UReversedParameter(U);
	}

	void VReverse()  = 0
	{
		(*self)->VReverse();
	}

	Handle_Geom_Surface VReversed() const
	{
		return (*self)->VReversed();
	}

	Standard_Real VReversedParameter(const Standard_Real V) const = 0
	{
		return (*self)->VReversedParameter(V);
	}

	void TransformParameters(Standard_Real& U,Standard_Real& V,const gp_Trsf& T) const
	{
		(*self)->TransformParameters(U,V,T);
	}

	/*gp_GTrsf2d ParametricTransformation(const gp_Trsf& T) const
	{
		return (*self)->ParametricTransformation(T);
	}*/

	void Bounds(Standard_Real& U1,Standard_Real& U2,Standard_Real& V1,Standard_Real& V2) const = 0
	{
		(*self)->Bounds(U1,U2,V1,V2);
	}

	Standard_Boolean IsUClosed() const = 0
	{
		return (*self)->IsUClosed();
	}

	Standard_Boolean IsVClosed() const = 0
	{
		return (*self)->IsVClosed();
	}

	Standard_Boolean IsUPeriodic() const = 0
	{
		return (*self)->IsUPeriodic();
	}

	Standard_Real UPeriod() const
	{
		return (*self)->UPeriod();
	}

	Standard_Boolean IsVPeriodic() const = 0
	{
		return (*self)->IsVPeriodic();
	}

	Standard_Real VPeriod() const
	{
		return (*self)->VPeriod();
	}

	Handle_Geom_Curve UIso(const Standard_Real U) const = 0
	{
		return (*self)->UIso(U);
	}

	Handle_Geom_Curve VIso(const Standard_Real V) const = 0
	{
		return (*self)->VIso(V);
	}

	GeomAbs_Shape Continuity() const = 0
	{
		return (*self)->Continuity();
	}

	Standard_Boolean IsCNu(const Standard_Integer N) const = 0
	{
		return (*self)->IsCNu(N);
	}

	Standard_Boolean IsCNv(const Standard_Integer N) const = 0
	{
		return (*self)->IsCNv(N);
	}

	void D0(const Standard_Real U,const Standard_Real V,gp_Pnt& P) const = 0
	{
		(*self)->D0(U,V,P);
	}

	void D1(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V) const = 0
	{
		(*self)->D1(U,V,P,D1U,D1V);
	}

	void D2(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV) const = 0
	{
		(*self)->D2(U,V,P,D1U,D1V,D2U,D2V,D2UV);
	}

	void D3(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV,gp_Vec& D3U,gp_Vec& D3V,gp_Vec& D3UUV,gp_Vec& D3UVV) const = 0
	{
		(*self)->D3(U,V,P,D1U,D1V,D2U,D2V,D2UV,D3U,D3V,D3UUV,D3UVV);
	}

	gp_Vec DN(const Standard_Real U,const Standard_Real V,const Standard_Integer Nu,const Standard_Integer Nv) const = 0
	{
		return (*self)->DN(U,V,Nu,Nv);
	}

	gp_Pnt Value(const Standard_Real U,const Standard_Real V) const
	{
		return (*self)->Value(U,V);
	}
}

class Handle_Geom_BoundedSurface : public Handle_Geom_Surface {
	Handle_Geom_BoundedSurface()=0;
};

class Handle_Geom_ElementarySurface : public Handle_Geom_Surface {
	Handle_Geom_ElementarySurface()=0;
};

%extend Handle_Geom_ElementarySurface
{
	void SetAxis(const gp_Ax1& A1)
	{
		(*self)->SetAxis(A1);
	}

	void SetLocation(const gp_Pnt& Loc)
	{
		(*self)->SetLocation(Loc);
	}

	void SetPosition(const gp_Ax3& A3)
	{
		(*self)->SetPosition(A3);
	}

	gp_Ax1 Axis() const
	{
		return (*self)->Axis();
	}

	gp_Pnt Location() const
	{
		return (*self)->Location();
	}

	const gp_Ax3& Position() const
	{
		return (*self)->Position();
	}

	void UReverse()
	{
		(*self)->UReverse();
	}

	Standard_Real UReversedParameter(const Standard_Real U) const = 0
	{
		return (*self)->UReversedParameter(U);
	}

	void VReverse()
	{
		(*self)->VReverse();
	}

	Standard_Real VReversedParameter(const Standard_Real V) const = 0
	{
		return (*self)->VReversedParameter(V);
	}

	GeomAbs_Shape Continuity() const
	{
		return (*self)->Continuity();
	}

	Standard_Boolean IsCNu(const Standard_Integer N) const
	{
		return (*self)->IsCNu(N);
	}

	Standard_Boolean IsCNv(const Standard_Integer N) const
	{
		return (*self)->IsCNv(N);
	}
}

class Handle_Geom_OffsetSurface: public Handle_Geom_Surface
{
	Handle_Geom_OffsetSurface()=0;
};

%extend Handle_Geom_OffsetSurface
{
	Handle_Geom_OffsetSurface(const Handle_Geom_Surface& S,const Standard_Real Offset){	
		return new Handle_Geom_OffsetSurface(new Geom_OffsetSurface( 	
		S,Offset));
		}

	void SetBasisSurface(const Handle_Geom_Surface& S)
	{
		(*self)->SetBasisSurface(S);
	}
	
	void SetOffsetValue(const Standard_Real D)
	{
		(*self)->SetOffsetValue(D);
	}

	Standard_Real Offset() const
	{
		return (*self)->Offset();
	}

	Handle_Geom_Surface BasisSurface() const
	{
		return (*self)->BasisSurface();
	}

	void UReverse()
	{
		(*self)->UReverse();
	}

	Standard_Real UReversedParameter(const Standard_Real U) const
	{
		return (*self)->UReversedParameter(U);
	}

	void VReverse()
	{
		(*self)->VReverse();
	}

	Standard_Real VReversedParameter(const Standard_Real V) const 
	{
		return (*self)->VReversedParameter(V);
	}

	void Bounds(Standard_Real& U1,Standard_Real& U2,Standard_Real& V1,Standard_Real& V2) const 
	{
		(*self)->Bounds(U1,U2,V1,V2);
	}

	GeomAbs_Shape Continuity() const
	{
		return (*self)->Continuity();
	}

	Standard_Boolean IsCNu(const Standard_Integer N) const 
	{
		return (*self)->IsCNu(N);
	}

	Standard_Boolean IsCNv(const Standard_Integer N) const 
	{
		return (*self)->IsCNv(N);
	}

	Standard_Boolean IsUClosed() const 
	{
		return (*self)->IsUClosed();
	}

	Standard_Boolean IsVClosed() const 
	{
		return (*self)->IsVClosed();
	}

	Standard_Boolean IsUPeriodic() const 
	{
		return (*self)->IsUPeriodic();
	}

	Standard_Real UPeriod() const
	{
		return (*self)->UPeriod();
	}

	Standard_Boolean IsVPeriodic() const
	{
		return (*self)->IsVPeriodic();
	}

	Standard_Real VPeriod() const
	{
		return (*self)->VPeriod();
	}

	Handle_Geom_Curve UIso(const Standard_Real U) const 
	{
		return (*self)->UIso(U);
	}

	Handle_Geom_Curve VIso(const Standard_Real V) const 
	{
		return (*self)->VIso(V);
	}

	void D0(const Standard_Real U,const Standard_Real V,gp_Pnt& P) const 
	{
		(*self)->D0(U,V,P);
	}

	void D1(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V) const 
	{
		(*self)->D1(U,V,P,D1U,D1V);
	}

	void D2(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV) const 
	{
		(*self)->D2(U,V,P,D1U,D1V,D2U,D2V,D2UV);
	}

	void D3(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV,gp_Vec& D3U,gp_Vec& D3V,gp_Vec& D3UUV,gp_Vec& D3UVV) const 
	{
		(*self)->D3(U,V,P,D1U,D1V,D2U,D2V,D2UV,D3U,D3V,D3UUV,D3UVV);
	}

	gp_Vec DN(const Standard_Real U,const Standard_Real V,const Standard_Integer Nu,const Standard_Integer Nv) const 
	{
		return (*self)->DN(U,V,Nu,Nv);
	}

	void Value(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Pnt& Pbasis,gp_Vec& D1Ubasis,gp_Vec& D1Vbasis) const
	{
		(*self)->Value(U,V,P,Pbasis,D1Ubasis,D1Vbasis);
	}

	void D1(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Pnt& Pbasis,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D1Ubasis,gp_Vec& D1Vbasis,gp_Vec& D2Ubasis,gp_Vec& D2Vbasis,gp_Vec& D2UVbasis) const
	{
		(*self)->D1(U,V,P,Pbasis,D1U,D1V,D1Ubasis,D1Vbasis,D2Ubasis,D2Vbasis,D2UVbasis);
	}

	void D2(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Pnt& Pbasis,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV,gp_Vec& D1Ubasis,gp_Vec& D1Vbasis,gp_Vec& D2Ubasis,gp_Vec& D2Vbasis,gp_Vec& D2UVbasis,gp_Vec& D3Ubasis,gp_Vec& D3Vbasis,gp_Vec& D3UUVbasis,gp_Vec& D3UVVbasis) const
	{
		(*self)->D2(U,V,P,Pbasis,D1U,D1V,D2U,D2V,D2UV,D1Ubasis,D1Vbasis,D2Ubasis,D2Vbasis,D2UVbasis,D3Ubasis,D3Vbasis,D3UUVbasis,D3UVVbasis);
	}

	void LocalD0(const Standard_Real U,const Standard_Real V,const Standard_Integer USide,const Standard_Integer VSide,gp_Pnt& P) const
	{
		(*self)->LocalD0(U,V,USide,VSide,P);
	}

	void LocalD1(const Standard_Real U,const Standard_Real V,const Standard_Integer USide,const Standard_Integer VSide,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V) const
	{
		(*self)->LocalD1(U,V,USide,VSide,P,D1U,D1V);
	}

	void LocalD2(const Standard_Real U,const Standard_Real V,const Standard_Integer USide,const Standard_Integer VSide,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV) const
	{
		(*self)->LocalD2(U,V,USide,VSide,P,D1U,D1V,D2U,D2V,D2UV);
	}

	void LocalD3(const Standard_Real U,const Standard_Real V,const Standard_Integer USide,const Standard_Integer VSide,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV,gp_Vec& D3U,gp_Vec& D3V,gp_Vec& D3UUV,gp_Vec& D3UVV) const
	{
		(*self)->LocalD3(U,V,USide,VSide,P,D1U,D1V,D2U,D2V,D2UV,D3U,D3V,D3UUV,D3UVV);
	}

	gp_Vec LocalDN(const Standard_Real U,const Standard_Real V,const Standard_Integer USide,const Standard_Integer VSide,const Standard_Integer Nu,const Standard_Integer Nv) const
	{
		return (*self)->LocalDN(U,V,USide,VSide,Nu,Nv);
	}

	void Transform(const gp_Trsf& T)
	{
		(*self)->Transform(T);
	}

	void TransformParameters(Standard_Real& U,Standard_Real& V,const gp_Trsf& T) const
	{
		(*self)->TransformParameters(U,V,T);
	}

	/*gp_GTrsf2d ParametricTransformation(const gp_Trsf& T) const
	{
		return (*self)->ParametricTransformation(T);
	}*/

	Handle_Geom_Surface Surface() const
	{
		return (*self)->Surface();
	}

	Standard_Boolean UOsculatingSurface(const Standard_Real U,const Standard_Real V,Standard_Boolean IsOpposite,Handle_Geom_BSplineSurface& UOsculSurf) const
	{
		return (*self)->UOsculatingSurface(U,V,IsOpposite,UOsculSurf);
	}

	Standard_Boolean VOsculatingSurface(const Standard_Real U,const Standard_Real V,Standard_Boolean IsOpposite,Handle_Geom_BSplineSurface& VOsculSurf) const
	{
		return (*self)->VOsculatingSurface(U,V,IsOpposite,VOsculSurf);
	}
}

class Handle_Geom_SweptSurface: public Handle_Geom_Surface
{
	Handle_Geom_SweptSurface()=0;
};

%extend Handle_Geom_SweptSurface
{
	GeomAbs_Shape Continuity() const
	{
		return (*self)->Continuity();
	}

	const gp_Dir& Direction() const
	{
		return (*self)->Direction();
	}

	Handle_Geom_Curve BasisCurve() const
	{
		return (*self)->BasisCurve();
	}
}

class Handle_Geom_BezierSurface : public Handle_Geom_BoundedSurface {
	Handle_Geom_BezierSurface()=0;
};

%extend Handle_Geom_BezierSurface
{
	Handle_Geom_BezierSurface(const TColgp_Array2OfPnt& SurfacePoles)
	{
		return new Handle_Geom_BezierSurface(new Geom_BezierSurface(
		SurfacePoles));
	}
	
	Handle_Geom_BezierSurface(const TColgp_Array2OfPnt& SurfacePoles,const TColStd_Array2OfReal& PoleWeights)
	{
		return new Handle_Geom_BezierSurface(new Geom_BezierSurface(
		SurfacePoles,PoleWeights));
	}
	
	void ExchangeUV()
	{
		(*self)->ExchangeUV();	
	}	

	void Increase(const Standard_Integer UDeg,const Standard_Integer VDeg)
	{
		(*self)->Increase(UDeg,VDeg);
	}

	void InsertPoleColAfter(const Standard_Integer VIndex,const TColgp_Array1OfPnt& CPoles)
	{
		(*self)->InsertPoleColAfter(VIndex,CPoles);
	}

	void InsertPoleColAfter(const Standard_Integer VIndex,const TColgp_Array1OfPnt& CPoles,const TColStd_Array1OfReal& CPoleWeights)
	{
		(*self)->InsertPoleColAfter(VIndex,CPoles,CPoleWeights);
	}

	void InsertPoleColBefore(const Standard_Integer VIndex,const TColgp_Array1OfPnt& CPoles)
	{
		(*self)->InsertPoleColBefore(VIndex,CPoles);	
	}

	void InsertPoleColBefore(const Standard_Integer VIndex,const TColgp_Array1OfPnt& CPoles,const TColStd_Array1OfReal& CPoleWeights)
	{
		(*self)->InsertPoleColBefore(VIndex,CPoles,CPoleWeights);	
	}

	void InsertPoleRowAfter(const Standard_Integer UIndex,const TColgp_Array1OfPnt& CPoles)
	{
		(*self)->InsertPoleRowAfter(UIndex,CPoles);
	}

	void InsertPoleRowAfter(const Standard_Integer UIndex,const TColgp_Array1OfPnt& CPoles,const TColStd_Array1OfReal& CPoleWeights)
	{
		(*self)->InsertPoleRowAfter(UIndex,CPoles,CPoleWeights);
	}

	void InsertPoleRowBefore(const Standard_Integer UIndex,const TColgp_Array1OfPnt& CPoles)
	{
		(*self)->InsertPoleRowBefore(UIndex,CPoles);
	}

	void InsertPoleRowBefore(const Standard_Integer UIndex,const TColgp_Array1OfPnt& CPoles,const TColStd_Array1OfReal& CPoleWeights)
	{
		(*self)->InsertPoleRowBefore(UIndex,CPoles,CPoleWeights);
	}

	void RemovePoleCol(const Standard_Integer VIndex)
	{
		(*self)->RemovePoleCol(VIndex);
	}

	void RemovePoleRow(const Standard_Integer UIndex)
	{
		(*self)->RemovePoleRow(UIndex);
	}

	void Segment(const Standard_Real U1,const Standard_Real U2,const Standard_Real V1,const Standard_Real V2)
	{
		(*self)->Segment(U1,U2,V1,V2);
	}

	void SetPole(const Standard_Integer UIndex,const Standard_Integer VIndex,const gp_Pnt& P)
	{
		(*self)->SetPole(UIndex,VIndex,P);
	}

	void SetPole(const Standard_Integer UIndex,const Standard_Integer VIndex,const gp_Pnt& P,const Standard_Real Weight)
	{
		(*self)->SetPole(UIndex,VIndex,P,Weight);
	}

	void SetPoleCol(const Standard_Integer VIndex,const TColgp_Array1OfPnt& CPoles)
	{
		(*self)->SetPoleCol(VIndex,CPoles);
	}

	void SetPoleCol(const Standard_Integer VIndex,const TColgp_Array1OfPnt& CPoles,const TColStd_Array1OfReal& CPoleWeights)
	{
		(*self)->SetPoleCol(VIndex,CPoles,CPoleWeights);
	}

	void SetPoleRow(const Standard_Integer UIndex,const TColgp_Array1OfPnt& CPoles)
	{
		(*self)->SetPoleRow(UIndex,CPoles);
	}

	void SetPoleRow(const Standard_Integer UIndex,const TColgp_Array1OfPnt& CPoles,const TColStd_Array1OfReal& CPoleWeights)
	{
		(*self)->SetPoleRow(UIndex,CPoles,CPoleWeights);
	}

	void SetWeight(const Standard_Integer UIndex,const Standard_Integer VIndex,const Standard_Real Weight)
	{
		(*self)->SetWeight(UIndex,VIndex,Weight);
	}

	void SetWeightCol(const Standard_Integer VIndex,const TColStd_Array1OfReal& CPoleWeights)
	{
		(*self)->SetWeightCol(VIndex,CPoleWeights);
	}

	void SetWeightRow(const Standard_Integer UIndex,const TColStd_Array1OfReal& CPoleWeights)
	{
		(*self)->SetWeightRow(UIndex,CPoleWeights);
	}

	void UReverse()
	{
		(*self)->UReverse();
	}

	Standard_Real UReversedParameter(const Standard_Real U) const
	{
		return (*self)->UReversedParameter(U);
	}

	void VReverse()
	{
		(*self)->VReverse();
	}

	Standard_Real VReversedParameter(const Standard_Real V) const 
	{
		return (*self)->VReversedParameter(V);
	}

	void Bounds(Standard_Real& U1,Standard_Real& U2,Standard_Real& V1,Standard_Real& V2) const 
	{
		(*self)->Bounds(U1,U2,V1,V2);
	}

	GeomAbs_Shape Continuity() const
	{
		return (*self)->Continuity();
	}

	void D0(const Standard_Real U,const Standard_Real V,gp_Pnt& P) const 
	{
		(*self)->D0(U,V,P);
	}

	void D1(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V) const 
	{
		(*self)->D1(U,V,P,D1U,D1V);
	}

	void D2(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV) const 
	{
		(*self)->D2(U,V,P,D1U,D1V,D2U,D2V,D2UV);
	}

	void D3(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV,gp_Vec& D3U,gp_Vec& D3V,gp_Vec& D3UUV,gp_Vec& D3UVV) const 
	{
		(*self)->D3(U,V,P,D1U,D1V,D2U,D2V,D2UV,D3U,D3V,D3UUV,D3UVV);
	}

	gp_Vec DN(const Standard_Real U,const Standard_Real V,const Standard_Integer Nu,const Standard_Integer Nv) const 
	{
		return (*self)->DN(U,V,Nu,Nv);
	}

	Standard_Integer NbUPoles() const
	{
		return (*self)->NbUPoles();
	}

	Standard_Integer NbVPoles() const
	{
		return (*self)->NbVPoles();
	}

	gp_Pnt Pole(const Standard_Integer UIndex,const Standard_Integer VIndex) const
	{
		return (*self)->Pole(UIndex,VIndex);
	}

	void Poles(TColgp_Array2OfPnt& P) const
	{
		(*self)->Poles(P);
	}

	Standard_Integer UDegree() const
	{
		return (*self)->UDegree();
	}

	Handle_Geom_Curve UIso(const Standard_Real U) const
	{
		return (*self)->UIso(U);
	}

	Standard_Integer VDegree() const
	{
		return (*self)->VDegree();
	}

	Handle_Geom_Curve VIso(const Standard_Real V) const
	{
		return (*self)->VIso(V);
	}

	Standard_Real Weight(const Standard_Integer UIndex,const Standard_Integer VIndex) const
	{
		return (*self)->Weight(UIndex,VIndex);
	}

	void Weights(TColStd_Array2OfReal& W) const
	{
		(*self)->Weights(W);
	}

	Standard_Boolean IsUClosed() const 
	{
		return (*self)->IsUClosed();
	}

	Standard_Boolean IsVClosed() const 
	{
		return (*self)->IsVClosed();
	}

	Standard_Boolean IsCNu(const Standard_Integer N) const 
	{
		return (*self)->IsCNu(N);
	}

	Standard_Boolean IsCNv(const Standard_Integer N) const 
	{
		return (*self)->IsCNv(N);
	}

	Standard_Boolean IsUPeriodic() const 
	{
		return (*self)->IsUPeriodic();
	}

	Standard_Boolean IsVPeriodic() const
	{
		return (*self)->IsVPeriodic();
	}

	Standard_Boolean IsURational() const
	{
		return (*self)->IsURational();
	}

	Standard_Boolean IsVRational() const
	{
		return (*self)->IsVRational();
	}

	void Transform(const gp_Trsf& T)
	{
		(*self)->Transform(T);
	}

	Standard_Integer MaxDegree()
	{
		return (*self)->MaxDegree();
	}

	void Resolution(const Standard_Real Tolerance3D,Standard_Real& UTolerance,Standard_Real& VTolerance)
	{
		(*self)->Resolution(Tolerance3D,UTolerance,VTolerance);
	}
}

class Handle_Geom_BSplineSurface : public Handle_Geom_BoundedSurface {
	Handle_Geom_BSplineSurface()=0;
};

%extend Handle_Geom_BSplineSurface
{
	Handle_Geom_BSplineSurface(const TColgp_Array2OfPnt& Poles,const TColStd_Array1OfReal& UKnots,const TColStd_Array1OfReal& VKnots,const TColStd_Array1OfInteger& UMults,const TColStd_Array1OfInteger& VMults,const Standard_Integer UDegree,const Standard_Integer VDegree,const Standard_Boolean UPeriodic = Standard_False,const Standard_Boolean VPeriodic = Standard_False)
	{
		return new Handle_Geom_BSplineSurface(new Geom_BSplineSurface(
		Poles, UKnots, VKnots, UMults, VMults, UDegree, VDegree, UPeriodic, VPeriodic));
	}

	Handle_Geom_BSplineSurface(const TColgp_Array2OfPnt& Poles,const TColStd_Array2OfReal& Weights,const TColStd_Array1OfReal& UKnots,const TColStd_Array1OfReal& VKnots,const TColStd_Array1OfInteger& UMults,const TColStd_Array1OfInteger& VMults,const Standard_Integer UDegree,const Standard_Integer VDegree,const Standard_Boolean UPeriodic = Standard_False,const Standard_Boolean VPeriodic = Standard_False)
	{
		return new Handle_Geom_BSplineSurface(new Geom_BSplineSurface(
		Poles, Weights, UKnots, VKnots, UMults, VMults, UDegree, VDegree, UPeriodic, VPeriodic));
	}

	void ExchangeUV()
	{
		(*self)->ExchangeUV();	
	}	

	void SetUPeriodic()
	{
		(*self)->SetUPeriodic();
	}

	void SetVPeriodic()
	{
		(*self)->SetVPeriodic();
	}

	void PeriodicNormalization(Standard_Real U,Standard_Real V) const
	{
		(*self)->PeriodicNormalization(U,V);
	}

	void SetUOrigin(const Standard_Integer Index)
	{
		(*self)->SetUOrigin(Index);
	}

	void SetVOrigin(const Standard_Integer Index)
	{
		(*self)->SetVOrigin(Index);
	}

	void SetUNotPeriodic()
	{
		(*self)->SetUNotPeriodic();
	}

	void SetVNotPeriodic()
	{
		(*self)->SetVNotPeriodic();
	}

	void UReverse()
	{
		(*self)->UReverse();
	}

	void VReverse()
	{
		(*self)->VReverse();
	}

	Standard_Real UReversedParameter(const Standard_Real U) const
	{
		return (*self)->UReversedParameter(U);
	}

	Standard_Real VReversedParameter(const Standard_Real V) const 
	{
		return (*self)->VReversedParameter(V);
	}

	void IncreaseDegree(const Standard_Integer UDegree,const Standard_Integer VDegree)
	{
		(*self)->IncreaseDegree(UDegree,VDegree);
	}

	void InsertUKnots(const TColStd_Array1OfReal& Knots,const TColStd_Array1OfInteger& Mults,const Standard_Real ParametricTolerance = 0.0,const Standard_Boolean Add = Standard_True)
	{
		(*self)->InsertUKnots(Knots,Mults,ParametricTolerance,Add);
	}

	void InsertVKnots(const TColStd_Array1OfReal& Knots,const TColStd_Array1OfInteger& Mults,const Standard_Real ParametricTolerance = 0.0,const Standard_Boolean Add = Standard_True)
	{
		(*self)->InsertVKnots(Knots,Mults,ParametricTolerance,Add);
	}

	Standard_Boolean RemoveUKnot(const Standard_Integer Index,const Standard_Integer M,const Standard_Real Tolerance)
	{
		return (*self)->RemoveUKnot(Index,M,Tolerance);
	}

	Standard_Boolean RemoveVKnot(const Standard_Integer Index,const Standard_Integer M,const Standard_Real Tolerance)
	{
		return (*self)->RemoveVKnot(Index,M,Tolerance);
	}

	void IncreaseUMultiplicity(const Standard_Integer UIndex,const Standard_Integer M)
	{
		(*self)->IncreaseUMultiplicity(UIndex,M);
	}

	void IncreaseUMultiplicity(const Standard_Integer FromI1,const Standard_Integer ToI2,const Standard_Integer M)
	{
		(*self)->IncreaseUMultiplicity(FromI1,ToI2,M);
	}

	void IncrementUMultiplicity(const Standard_Integer FromI1,const Standard_Integer ToI2,const Standard_Integer Step)
	{
		(*self)->IncreaseUMultiplicity(FromI1,ToI2,Step);
	}

	void IncreaseVMultiplicity(const Standard_Integer UIndex,const Standard_Integer M)
	{
		(*self)->IncreaseVMultiplicity(UIndex,M);
	}

	void IncreaseVMultiplicity(const Standard_Integer FromI1,const Standard_Integer ToI2,const Standard_Integer M)
	{
		(*self)->IncreaseVMultiplicity(FromI1,ToI2,M);
	}

	void IncrementVMultiplicity(const Standard_Integer FromI1,const Standard_Integer ToI2,const Standard_Integer Step)
	{
		(*self)->IncreaseVMultiplicity(FromI1,ToI2,Step);
	}

	void InsertUKnot(const Standard_Real U,const Standard_Integer M,const Standard_Real ParametricTolerance,const Standard_Boolean Add = Standard_True)
	{
		(*self)->InsertUKnot(U,M,ParametricTolerance,Add);
	}

	void InsertVKnot(const Standard_Real V,const Standard_Integer M,const Standard_Real ParametricTolerance,const Standard_Boolean Add = Standard_True)
	{
		(*self)->InsertVKnot(V,M,ParametricTolerance,Add);
	}

	void Segment(const Standard_Real U1,const Standard_Real U2,const Standard_Real V1,const Standard_Real V2)
	{
		(*self)->Segment(U1,U2,V1,V2);
	}

	void CheckAndSegment(const Standard_Real U1,const Standard_Real U2,const Standard_Real V1,const Standard_Real V2)
	{
		(*self)->CheckAndSegment(U1,U2,V1,V2);
	}

	void SetUKnot(const Standard_Integer UIndex,const Standard_Real K)
	{
		(*self)->SetUKnot(UIndex,K);
	}

	void SetUKnots(const TColStd_Array1OfReal& UK)
	{
		(*self)->SetUKnots(UK);
	}

	void SetUKnot(const Standard_Integer UIndex,const Standard_Real K,const Standard_Integer M)
	{
		(*self)->SetUKnot(UIndex,K,M);
	}

	void SetVKnot(const Standard_Integer VIndex,const Standard_Real K)
	{
		(*self)->SetVKnot(VIndex,K);
	}

	void SetVKnots(const TColStd_Array1OfReal& VK)
	{
		(*self)->SetVKnots(VK);
	}

	void SetVKnot(const Standard_Integer VIndex,const Standard_Real K,const Standard_Integer M)
	{
		(*self)->SetVKnot(VIndex,K,M);
	}

	void LocateU(const Standard_Real U,const Standard_Real ParametricTolerance,Standard_Integer I1,Standard_Integer I2,const Standard_Boolean WithKnotRepetition = Standard_False) const
	{
		(*self)->LocateU(U,ParametricTolerance,I1,I2,WithKnotRepetition);
	}

	void LocateV(const Standard_Real V,const Standard_Real ParametricTolerance,Standard_Integer I1,Standard_Integer I2,const Standard_Boolean WithKnotRepetition = Standard_False) const
	{
		(*self)->LocateV(V,ParametricTolerance,I1,I2,WithKnotRepetition);
	}

	void SetPole(const Standard_Integer UIndex,const Standard_Integer VIndex,const gp_Pnt& P)
	{
		(*self)->SetPole(UIndex,VIndex,P);
	}

	void SetPole(const Standard_Integer UIndex,const Standard_Integer VIndex,const gp_Pnt& P,const Standard_Real Weight)
	{
		(*self)->SetPole(UIndex,VIndex,P,Weight);
	}

	void SetPoleCol(const Standard_Integer VIndex,const TColgp_Array1OfPnt& CPoles)
	{
		(*self)->SetPoleCol(VIndex,CPoles);
	}

	void SetPoleCol(const Standard_Integer VIndex,const TColgp_Array1OfPnt& CPoles,const TColStd_Array1OfReal& CPoleWeights)
	{
		(*self)->SetPoleCol(VIndex,CPoles,CPoleWeights);
	}

	void SetPoleRow(const Standard_Integer UIndex,const TColgp_Array1OfPnt& CPoles,const TColStd_Array1OfReal& CPoleWeights)
	{
		(*self)->SetPoleRow(UIndex,CPoles,CPoleWeights);
	}

	void SetPoleRow(const Standard_Integer UIndex,const TColgp_Array1OfPnt& CPoles)
	{
		(*self)->SetPoleRow(UIndex,CPoles);
	}

	void SetWeight(const Standard_Integer UIndex,const Standard_Integer VIndex,const Standard_Real Weight)
	{
		(*self)->SetWeight(UIndex,VIndex,Weight);
	}

	void SetWeightCol(const Standard_Integer VIndex,const TColStd_Array1OfReal& CPoleWeights)
	{
		(*self)->SetWeightCol(VIndex,CPoleWeights);
	}

	void SetWeightRow(const Standard_Integer UIndex,const TColStd_Array1OfReal& CPoleWeights)
	{
		(*self)->SetWeightRow(UIndex,CPoleWeights);
	}

	void MovePoint(const Standard_Real U,const Standard_Real V,const gp_Pnt& P,const Standard_Integer UIndex1,const Standard_Integer UIndex2,const Standard_Integer VIndex1,const Standard_Integer VIndex2,Standard_Integer UFirstIndex,Standard_Integer ULastIndex,Standard_Integer VFirstIndex,Standard_Integer VLastIndex)
	{
		(*self)->MovePoint(U,V,P,UIndex1,UIndex2,VIndex1,VIndex2,UFirstIndex,ULastIndex,VFirstIndex,VLastIndex);
	}

	Standard_Boolean IsUClosed() const 
	{
		return (*self)->IsUClosed();
	}

	Standard_Boolean IsVClosed() const 
	{
		return (*self)->IsVClosed();
	}

	Standard_Boolean IsCNu(const Standard_Integer N) const 
	{
		return (*self)->IsCNu(N);
	}

	Standard_Boolean IsCNv(const Standard_Integer N) const 
	{
		return (*self)->IsCNv(N);
	}

	Standard_Boolean IsUPeriodic() const 
	{
		return (*self)->IsUPeriodic();
	}

	Standard_Boolean IsURational() const
	{
		return (*self)->IsURational();
	}

	Standard_Boolean IsVPeriodic() const
	{
		return (*self)->IsVPeriodic();
	}

	Standard_Boolean IsVRational() const
	{
		return (*self)->IsVRational();
	}

	Standard_Boolean IsCacheValid(const Standard_Real UParameter,const Standard_Real VParameter) const
	{
		return (*self)->IsCacheValid(UParameter,VParameter);
	}

	void Bounds(Standard_Real& U1,Standard_Real& U2,Standard_Real& V1,Standard_Real& V2) const 
	{
		(*self)->Bounds(U1,U2,V1,V2);
	}

	GeomAbs_Shape Continuity() const
	{
		return (*self)->Continuity();
	}

	Standard_Integer FirstUKnotIndex() const
	{
		return (*self)->FirstUKnotIndex();
	}

	Standard_Integer FirstVKnotIndex() const
	{
		return (*self)->FirstVKnotIndex();
	}

	Standard_Integer LastUKnotIndex() const
	{
		return (*self)->LastUKnotIndex();
	}

	Standard_Integer LastVKnotIndex() const
	{
		return (*self)->LastVKnotIndex();
	}

	Standard_Integer NbUKnots() const
	{
		return (*self)->NbUKnots();
	}

	Standard_Integer NbUPoles() const
	{
		return (*self)->NbUPoles();
	}

	Standard_Integer NbVKnots() const
	{
		return (*self)->NbVKnots();
	}

	Standard_Integer NbVPoles() const
	{
		return (*self)->NbVPoles();
	}

	gp_Pnt Pole(const Standard_Integer UIndex,const Standard_Integer VIndex) const
	{
		return (*self)->Pole(UIndex,VIndex);
	}

	void Poles(TColgp_Array2OfPnt& P) const
	{
		(*self)->Poles(P);
	}

	Standard_Integer UDegree() const
	{
		return (*self)->UDegree();
	}

	Standard_Real UKnot(const Standard_Integer UIndex) const
	{
		return (*self)->UKnot(UIndex);
	}

	/*GeomAbs_BSplKnotDistribution UKnotDistribution() const
	{
		return (*self)->UKnotDistribution();
	}*/

	void UKnots(TColStd_Array1OfReal& Ku) const
	{
		(*self)->UKnots(Ku);
	}

	void UKnotSequence(TColStd_Array1OfReal& Ku) const
	{
		(*self)->UKnotSequence(Ku);
	}

	Standard_Integer UMultiplicity(const Standard_Integer UIndex) const
	{
		return (*self)->UMultiplicity(UIndex);
	}

	void UMultiplicities(TColStd_Array1OfInteger& Mu) const
	{
		(*self)->UMultiplicities(Mu);
	}

	Standard_Integer VDegree() const
	{
		return (*self)->VDegree();
	}

	Standard_Real VKnot(const Standard_Integer VIndex) const
	{
		return (*self)->VKnot(VIndex);
	}

	/*GeomAbs_BSplKnotDistribution VKnotDistribution() const
	{
		return (*self)->VKnotDistribution();
	}*/

	void VKnots(TColStd_Array1OfReal& Kv) const
	{
		(*self)->VKnots(Kv);
	}

	void VKnotSequence(TColStd_Array1OfReal& Kv) const
	{
		(*self)->VKnotSequence(Kv);
	}

	Standard_Integer VMultiplicity(const Standard_Integer VIndex) const
	{
		return (*self)->VMultiplicity(VIndex);
	}

	void VMultiplicities(TColStd_Array1OfInteger& Mv) const
	{
		(*self)->VMultiplicities(Mv);
	}

	Standard_Real Weight(const Standard_Integer UIndex,const Standard_Integer VIndex) const
	{
		return (*self)->Weight(UIndex,VIndex);
	}

	void Weights(TColStd_Array2OfReal& W) const
	{
		(*self)->Weights(W);
	}

	void D0(const Standard_Real U,const Standard_Real V,gp_Pnt& P) const 
	{
		(*self)->D0(U,V,P);
	}

	void D1(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V) const 
	{
		(*self)->D1(U,V,P,D1U,D1V);
	}

	void D2(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV) const 
	{
		(*self)->D2(U,V,P,D1U,D1V,D2U,D2V,D2UV);
	}

	void D3(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV,gp_Vec& D3U,gp_Vec& D3V,gp_Vec& D3UUV,gp_Vec& D3UVV) const 
	{
		(*self)->D3(U,V,P,D1U,D1V,D2U,D2V,D2UV,D3U,D3V,D3UUV,D3UVV);
	}

	gp_Vec DN(const Standard_Real U,const Standard_Real V,const Standard_Integer Nu,const Standard_Integer Nv) const 
	{
		return (*self)->DN(U,V,Nu,Nv);
	}

	void LocalD0(const Standard_Real U,const Standard_Real V,const Standard_Integer FromUK1,const Standard_Integer ToUK2,const Standard_Integer FromVK1,const Standard_Integer ToVK2,gp_Pnt& P) const
	{
		(*self)->LocalD0(U,V,FromUK1,ToUK2,FromVK1,ToVK2,P);
	}

	void LocalD1(const Standard_Real U,const Standard_Real V,const Standard_Integer FromUK1,const Standard_Integer ToUK2,const Standard_Integer FromVK1,const Standard_Integer ToVK2,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V) const
	{
		(*self)->LocalD1(U,V,FromUK1,ToUK2,FromVK1,ToVK2,P,D1U,D1V);
	}

	void LocalD2(const Standard_Real U,const Standard_Real V,const Standard_Integer FromUK1,const Standard_Integer ToUK2,const Standard_Integer FromVK1,const Standard_Integer ToVK2,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV) const
	{
		(*self)->LocalD2(U,V,FromUK1,ToUK2,FromVK1,ToVK2,P,D1U,D1V,D2U,D2V,D2UV);
	}

	void LocalD3(const Standard_Real U,const Standard_Real V,const Standard_Integer FromUK1,const Standard_Integer ToUK2,const Standard_Integer FromVK1,const Standard_Integer ToVK2,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV,gp_Vec& D3U,gp_Vec& D3V,gp_Vec& D3UUV,gp_Vec& D3UVV) const
	{
		(*self)->LocalD3(U,V,FromUK1,ToUK2,FromVK1,ToVK2,P,D1U,D1V,D2U,D2V,D2UV,D3U,D3V,D3UUV,D3UVV);
	}

	gp_Vec LocalDN(const Standard_Real U,const Standard_Real V,const Standard_Integer FromUK1,const Standard_Integer ToUK2,const Standard_Integer FromVK1,const Standard_Integer ToVK2,const Standard_Integer Nu,const Standard_Integer Nv) const
	{
		return (*self)->LocalDN(U,V,FromUK1,ToUK2,FromVK1,ToVK2,Nu,Nv);
	}

	gp_Pnt LocalValue(const Standard_Real U,const Standard_Real V,const Standard_Integer FromUK1,const Standard_Integer ToUK2,const Standard_Integer FromVK1,const Standard_Integer ToVK2) const
	{
		return (*self)->LocalValue(U,V,FromUK1,ToUK2,FromVK1,ToVK2);
	}

	Handle_Geom_Curve UIso(const Standard_Real U) const
	{
		return (*self)->UIso(U);
	}

	Handle_Geom_Curve VIso(const Standard_Real V) const
	{
		return (*self)->VIso(V);
	}

	Handle_Geom_Curve UIso(const Standard_Real U,const Standard_Boolean CheckRational) const
	{
		return (*self)->UIso(U,CheckRational);
	}

	Handle_Geom_Curve VIso(const Standard_Real V,const Standard_Boolean CheckRational) const
	{
		return (*self)->VIso(V,CheckRational);
	}

	void Transform(const gp_Trsf& T)
	{
		(*self)->Transform(T);
	}

	Standard_Integer MaxDegree()
	{
		return (*self)->MaxDegree();
	}

	void Resolution(const Standard_Real Tolerance3D,Standard_Real UTolerance,Standard_Real VTolerance)
	{
		(*self)->Resolution(Tolerance3D,UTolerance,VTolerance);
	}
}

class Handle_Geom_RectangularTrimmedSurface : public Handle_Geom_BoundedSurface {
	Handle_Geom_RectangularTrimmedSurface()=0;
};

%extend Handle_Geom_RectangularTrimmedSurface
{
	Handle_Geom_RectangularTrimmedSurface(const Handle_Geom_Surface& S,const Standard_Real U1,const Standard_Real U2,const Standard_Real V1,const Standard_Real V2,const Standard_Boolean USense = Standard_True,const Standard_Boolean VSense = Standard_True)
	{
		return new Handle_Geom_RectangularTrimmedSurface(new Geom_RectangularTrimmedSurface(
		S,U1,U2,V1,V2,USense,VSense));
	}

	Handle_Geom_RectangularTrimmedSurface(const Handle_Geom_Surface& S,const Standard_Real Param1,const Standard_Real Param2,const Standard_Boolean UTrim,const Standard_Boolean Sense = Standard_True)
	{
		return new Handle_Geom_RectangularTrimmedSurface(new Geom_RectangularTrimmedSurface(
		S,Param1,Param2,UTrim,Sense));
	}

	void SetTrim(const Standard_Real U1,const Standard_Real U2,const Standard_Real V1,const Standard_Real V2,const Standard_Boolean USense = Standard_True,const Standard_Boolean VSense = Standard_True)
	{
		(*self)->SetTrim(U1,U2,V1,V2,USense,VSense);
	}

	void SetTrim(const Standard_Real Param1,const Standard_Real Param2,const Standard_Boolean UTrim,const Standard_Boolean Sense = Standard_True)
	{
		(*self)->SetTrim(Param1,Param2,UTrim,Sense);
	}

	Handle_Geom_Surface BasisSurface() const
	{
		return (*self)->BasisSurface();
	}

	void UReverse()
	{
		(*self)->UReverse();
	}

	Standard_Real UReversedParameter(const Standard_Real U) const
	{
		return (*self)->UReversedParameter(U);
	}

	void VReverse()
	{
		(*self)->VReverse();
	}

	Standard_Real VReversedParameter(const Standard_Real V) const 
	{
		return (*self)->VReversedParameter(V);
	}

	void Bounds(Standard_Real& U1,Standard_Real& U2,Standard_Real& V1,Standard_Real& V2) const 
	{
		(*self)->Bounds(U1,U2,V1,V2);
	}

	GeomAbs_Shape Continuity() const
	{
		return (*self)->Continuity();
	}

	Standard_Boolean IsUClosed() const 
	{
		return (*self)->IsUClosed();
	}

	Standard_Boolean IsVClosed() const 
	{
		return (*self)->IsVClosed();
	}

	Standard_Boolean IsCNu(const Standard_Integer N) const 
	{
		return (*self)->IsCNu(N);
	}

	Standard_Boolean IsCNv(const Standard_Integer N) const 
	{
		return (*self)->IsCNv(N);
	}

	Standard_Boolean IsUPeriodic() const 
	{
		return (*self)->IsUPeriodic();
	}

	Standard_Real UPeriod() const
	{
		return (*self)->UPeriod();
	}

	Standard_Boolean IsVPeriodic() const
	{
		return (*self)->IsVPeriodic();
	}

	Standard_Real VPeriod() const
	{
		return (*self)->VPeriod();
	}

	Handle_Geom_Curve UIso(const Standard_Real U) const 
	{
		return (*self)->UIso(U);
	}

	Handle_Geom_Curve VIso(const Standard_Real V) const 
	{
		return (*self)->VIso(V);
	}

	void D0(const Standard_Real U,const Standard_Real V,gp_Pnt& P) const 
	{
		(*self)->D0(U,V,P);
	}

	void D1(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V) const 
	{
		(*self)->D1(U,V,P,D1U,D1V);
	}

	void D2(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV) const 
	{
		(*self)->D2(U,V,P,D1U,D1V,D2U,D2V,D2UV);
	}

	void D3(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV,gp_Vec& D3U,gp_Vec& D3V,gp_Vec& D3UUV,gp_Vec& D3UVV) const 
	{
		(*self)->D3(U,V,P,D1U,D1V,D2U,D2V,D2UV,D3U,D3V,D3UUV,D3UVV);
	}

	gp_Vec DN(const Standard_Real U,const Standard_Real V,const Standard_Integer Nu,const Standard_Integer Nv) const 
	{
		return (*self)->DN(U,V,Nu,Nv);
	}

	void Transform(const gp_Trsf& T)
	{
		(*self)->Transform(T);
	}

	void TransformParameters(Standard_Real U,Standard_Real V,const gp_Trsf& T) const
	{
		(*self)->TransformParameters(U,V,T);
	}

	/*gp_GTrsf2d ParametricTransformation(const gp_Trsf& T) const
	{
		return (*self)->ParametricTransformation(T);
	}*/
}

class Handle_Geom_ConicalSurface : public Handle_Geom_ElementarySurface {
	Handle_Geom_ConicalSurface()=0;
};

%extend Handle_Geom_ConicalSurface
{
	Handle_Geom_ConicalSurface(const gp_Ax3& A3,const Standard_Real Ang,const Standard_Real Radius)
	{
		return new Handle_Geom_ConicalSurface(new Geom_ConicalSurface(
		A3,Ang,Radius));
	}

	Handle_Geom_ConicalSurface(const gp_Cone& C)
	{
		return new Handle_Geom_ConicalSurface(new Geom_ConicalSurface(
		C));
	}

	void SetCone(const gp_Cone& C)
	{
		(*self)->SetCone(C);
	}

	void SetRadius(const Standard_Real R)
	{
		(*self)->SetRadius(R);
	}

	void SetSemiAngle(const Standard_Real Ang)
	{
		(*self)->SetSemiAngle(Ang);
	}

	gp_Cone Cone() const
	{
		return (*self)->Cone();
	}

	Standard_Real UReversedParameter(const Standard_Real U) const
	{
		return (*self)->UReversedParameter(U);
	}

	Standard_Real VReversedParameter(const Standard_Real V) const
	{
		return (*self)->VReversedParameter(V);
	}

	void VReverse()
	{
		(*self)->VReverse();
	}

	void TransformParameters(Standard_Real U,Standard_Real V,const gp_Trsf& T) const
	{
		(*self)->TransformParameters(U,V,T);
	}

	/*gp_GTrsf2d ParametricTransformation(const gp_Trsf& T) const
	{
		return (*self)->ParametricTransformation(T);
	}*/

	gp_Pnt Apex() const
	{
		return (*self)->Apex();
	}

	void Bounds(Standard_Real U1,Standard_Real U2,Standard_Real V1,Standard_Real V2) const
	{
		(*self)->Bounds(U1,U2,V1,V2);
	}

	void Coefficients(Standard_Real A1,Standard_Real A2,Standard_Real A3,Standard_Real B1,Standard_Real B2,Standard_Real B3,Standard_Real C1,Standard_Real C2,Standard_Real C3,Standard_Real D) const
	{
		(*self)->Coefficients(A1,A2,A3,B1,B2,B3,C1,C2,C3,D);
	}

	Standard_Real RefRadius() const
	{
		return (*self)->RefRadius();
	}

	Standard_Real SemiAngle() const
	{
		return (*self)->SemiAngle();
	}

	Standard_Boolean IsUClosed() const 
	{
		return (*self)->IsUClosed();
	}

	Standard_Boolean IsVClosed() const 
	{
		return (*self)->IsVClosed();
	}

	Standard_Boolean IsUPeriodic() const 
	{
		return (*self)->IsUPeriodic();
	}

	Standard_Boolean IsVPeriodic() const
	{
		return (*self)->IsVPeriodic();
	}

	Handle_Geom_Curve UIso(const Standard_Real U) const 
	{
		return (*self)->UIso(U);
	}

	Handle_Geom_Curve VIso(const Standard_Real V) const 
	{
		return (*self)->VIso(V);
	}

	void D0(const Standard_Real U,const Standard_Real V,gp_Pnt& P) const 
	{
		(*self)->D0(U,V,P);
	}

	void D1(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V) const 
	{
		(*self)->D1(U,V,P,D1U,D1V);
	}

	void D2(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV) const 
	{
		(*self)->D2(U,V,P,D1U,D1V,D2U,D2V,D2UV);
	}

	void D3(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV,gp_Vec& D3U,gp_Vec& D3V,gp_Vec& D3UUV,gp_Vec& D3UVV) const 
	{
		(*self)->D3(U,V,P,D1U,D1V,D2U,D2V,D2UV,D3U,D3V,D3UUV,D3UVV);
	}

	gp_Vec DN(const Standard_Real U,const Standard_Real V,const Standard_Integer Nu,const Standard_Integer Nv) const 
	{
		return (*self)->DN(U,V,Nu,Nv);
	}

	void Transform(const gp_Trsf& T)
	{
		(*self)->Transform(T);
	}
}

class Handle_Geom_CylindricalSurface : public Handle_Geom_ElementarySurface {
	Handle_Geom_CylindricalSurface()=0;
};

%extend Handle_Geom_CylindricalSurface
{
	Handle_Geom_CylindricalSurface(const gp_Ax3& A3,const Standard_Real Radius)
	{
		return new Handle_Geom_CylindricalSurface(new Geom_CylindricalSurface(
		A3,Radius));
	}

	Handle_Geom_CylindricalSurface(const gp_Cylinder& C)
	{
		return new Handle_Geom_CylindricalSurface(new Geom_CylindricalSurface(
		C));
	}

	void SetCylinder(const gp_Cylinder& C)
	{
		(*self)->SetCylinder(C);
	}

	void SetRadius(const Standard_Real R)
	{
		(*self)->SetRadius(R);
	}

	gp_Cylinder Cylinder() const
	{
		return (*self)->Cylinder();
	}

	Standard_Real UReversedParameter(const Standard_Real U) const
	{
		return (*self)->UReversedParameter(U);
	}

	Standard_Real VReversedParameter(const Standard_Real V) const
	{
		return (*self)->VReversedParameter(V);
	}

	void TransformParameters(Standard_Real U,Standard_Real V,const gp_Trsf& T) const
	{
		(*self)->TransformParameters(U,V,T);
	}

	/*gp_GTrsf2d ParametricTransformation(const gp_Trsf& T) const
	{
		return (*self)->ParametricTransformation(T);
	}*/

	void Bounds(Standard_Real U1,Standard_Real U2,Standard_Real V1,Standard_Real V2) const
	{
		(*self)->Bounds(U1,U2,V1,V2);
	}

	void Coefficients(Standard_Real A1,Standard_Real A2,Standard_Real A3,Standard_Real B1,Standard_Real B2,Standard_Real B3,Standard_Real C1,Standard_Real C2,Standard_Real C3,Standard_Real D) const
	{
		(*self)->Coefficients(A1,A2,A3,B1,B2,B3,C1,C2,C3,D);
	}

	Standard_Real Radius() const
	{
		return (*self)->Radius();
	}

	Standard_Boolean IsUClosed() const 
	{
		return (*self)->IsUClosed();
	}

	Standard_Boolean IsVClosed() const 
	{
		return (*self)->IsVClosed();
	}

	Standard_Boolean IsUPeriodic() const 
	{
		return (*self)->IsUPeriodic();
	}

	Standard_Boolean IsVPeriodic() const
	{
		return (*self)->IsVPeriodic();
	}

	Handle_Geom_Curve UIso(const Standard_Real U) const 
	{
		return (*self)->UIso(U);
	}

	Handle_Geom_Curve VIso(const Standard_Real V) const 
	{
		return (*self)->VIso(V);
	}

	void D0(const Standard_Real U,const Standard_Real V,gp_Pnt& P) const 
	{
		(*self)->D0(U,V,P);
	}

	void D1(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V) const 
	{
		(*self)->D1(U,V,P,D1U,D1V);
	}

	void D2(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV) const 
	{
		(*self)->D2(U,V,P,D1U,D1V,D2U,D2V,D2UV);
	}

	void D3(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV,gp_Vec& D3U,gp_Vec& D3V,gp_Vec& D3UUV,gp_Vec& D3UVV) const 
	{
		(*self)->D3(U,V,P,D1U,D1V,D2U,D2V,D2UV,D3U,D3V,D3UUV,D3UVV);
	}

	gp_Vec DN(const Standard_Real U,const Standard_Real V,const Standard_Integer Nu,const Standard_Integer Nv) const 
	{
		return (*self)->DN(U,V,Nu,Nv);
	}

	void Transform(const gp_Trsf& T)
	{
		(*self)->Transform(T);
	}
}

class Handle_Geom_Plane : public Handle_Geom_ElementarySurface {
	Handle_Geom_Plane()=0;
};

%extend Handle_Geom_Plane
{
	Handle_Geom_Plane(const gp_Pln& Pl)
	{
		return new Handle_Geom_Plane(new Geom_Plane(
		Pl));
	}

	Handle_Geom_Plane(const gp_Pnt& P,const gp_Dir& V)
	{
		return new Handle_Geom_Plane(new Geom_Plane(
		P,V));
	}

	Handle_Geom_Plane(const Standard_Real A,const Standard_Real B,const Standard_Real C,const Standard_Real D)
	{
		return new Handle_Geom_Plane(new Geom_Plane(
		A,B,C,D));
	}

	void SetPln(const gp_Pln& Pl)
	{
		(*self)->SetPln(Pl);
	}

	gp_Pln Pln() const
	{
		return (*self)->Pln();
	}

	void UReverse()
	{
		(*self)->UReverse();
	}

	Standard_Real UReversedParameter(const Standard_Real U) const
	{
		return (*self)->UReversedParameter(U);
	}

	void VReverse()
	{
		(*self)->VReverse();
	}

	Standard_Real VReversedParameter(const Standard_Real V) const
	{
		return (*self)->VReversedParameter(V);
	}

	void TransformParameters(Standard_Real U,Standard_Real V,const gp_Trsf& T) const
	{
		(*self)->TransformParameters(U,V,T);
	}

	/*gp_GTrsf2d ParametricTransformation(const gp_Trsf& T) const
	{
		return (*self)->ParametricTransformation(T);
	}*/

	void Bounds(Standard_Real U1,Standard_Real U2,Standard_Real V1,Standard_Real V2) const
	{
		(*self)->Bounds(U1,U2,V1,V2);
	}

	void Coefficients(Standard_Real A,Standard_Real B,Standard_Real C,Standard_Real D) const
	{
		(*self)->Coefficients(A,B,C,D);
	}

	Standard_Boolean IsUClosed() const 
	{
		return (*self)->IsUClosed();
	}

	Standard_Boolean IsVClosed() const 
	{
		return (*self)->IsVClosed();
	}

	Standard_Boolean IsUPeriodic() const 
	{
		return (*self)->IsUPeriodic();
	}

	Standard_Boolean IsVPeriodic() const
	{
		return (*self)->IsVPeriodic();
	}

	Handle_Geom_Curve UIso(const Standard_Real U) const 
	{
		return (*self)->UIso(U);
	}

	Handle_Geom_Curve VIso(const Standard_Real V) const 
	{
		return (*self)->VIso(V);
	}

	void D0(const Standard_Real U,const Standard_Real V,gp_Pnt& P) const 
	{
		(*self)->D0(U,V,P);
	}

	void D1(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V) const 
	{
		(*self)->D1(U,V,P,D1U,D1V);
	}

	void D2(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV) const 
	{
		(*self)->D2(U,V,P,D1U,D1V,D2U,D2V,D2UV);
	}

	void D3(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV,gp_Vec& D3U,gp_Vec& D3V,gp_Vec& D3UUV,gp_Vec& D3UVV) const 
	{
		(*self)->D3(U,V,P,D1U,D1V,D2U,D2V,D2UV,D3U,D3V,D3UUV,D3UVV);
	}

	gp_Vec DN(const Standard_Real U,const Standard_Real V,const Standard_Integer Nu,const Standard_Integer Nv) const 
	{
		return (*self)->DN(U,V,Nu,Nv);
	}

	void Transform(const gp_Trsf& T)
	{
		(*self)->Transform(T);
	}
}

class Handle_Geom_SphericalSurface : public Handle_Geom_ElementarySurface {
	Handle_Geom_SphericalSurface()=0;
};

%extend Handle_Geom_SphericalSurface
{
	Handle_Geom_SphericalSurface(const gp_Ax3& A3,const Standard_Real Radius)
	{
		return new Handle_Geom_SphericalSurface(new Geom_SphericalSurface(
		A3,Radius));
	}

	Handle_Geom_SphericalSurface(const gp_Sphere& S)
	{
		return new Handle_Geom_SphericalSurface(new Geom_SphericalSurface(
		S));
	}

	void SetRadius(const Standard_Real R)
	{
		(*self)->SetRadius(R);
	}

	void SetSphere(const gp_Sphere& S)
	{
		(*self)->SetSphere(S);
	}

	gp_Sphere Sphere() const
	{
		return (*self)->Sphere();
	}

	Standard_Real UReversedParameter(const Standard_Real U) const
	{
		return (*self)->UReversedParameter(U);
	}

	Standard_Real VReversedParameter(const Standard_Real V) const
	{
		return (*self)->VReversedParameter(V);
	}

	Standard_Real Area() const
	{
		return (*self)->Area();
	}

	void Bounds(Standard_Real U1,Standard_Real U2,Standard_Real V1,Standard_Real V2) const
	{
		(*self)->Bounds(U1,U2,V1,V2);
	}

	void Coefficients(Standard_Real A1,Standard_Real A2,Standard_Real A3,Standard_Real B1,Standard_Real B2,Standard_Real B3,Standard_Real C1,Standard_Real C2,Standard_Real C3,Standard_Real D) const
	{
		(*self)->Coefficients(A1,A2,A3,B1,B2,B3,C1,C2,C3,D);
	}

	Standard_Real Radius() const
	{
		return (*self)->Radius();
	}

	Standard_Real Volume() const
	{
		return (*self)->Volume();
	}

	Standard_Boolean IsUClosed() const 
	{
		return (*self)->IsUClosed();
	}

	Standard_Boolean IsVClosed() const 
	{
		return (*self)->IsVClosed();
	}

	Standard_Boolean IsUPeriodic() const 
	{
		return (*self)->IsUPeriodic();
	}

	Standard_Boolean IsVPeriodic() const
	{
		return (*self)->IsVPeriodic();
	}

	Handle_Geom_Curve UIso(const Standard_Real U) const 
	{
		return (*self)->UIso(U);
	}

	Handle_Geom_Curve VIso(const Standard_Real V) const 
	{
		return (*self)->VIso(V);
	}

	void D0(const Standard_Real U,const Standard_Real V,gp_Pnt& P) const 
	{
		(*self)->D0(U,V,P);
	}

	void D1(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V) const 
	{
		(*self)->D1(U,V,P,D1U,D1V);
	}

	void D2(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV) const 
	{
		(*self)->D2(U,V,P,D1U,D1V,D2U,D2V,D2UV);
	}

	void D3(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV,gp_Vec& D3U,gp_Vec& D3V,gp_Vec& D3UUV,gp_Vec& D3UVV) const 
	{
		(*self)->D3(U,V,P,D1U,D1V,D2U,D2V,D2UV,D3U,D3V,D3UUV,D3UVV);
	}

	gp_Vec DN(const Standard_Real U,const Standard_Real V,const Standard_Integer Nu,const Standard_Integer Nv) const 
	{
		return (*self)->DN(U,V,Nu,Nv);
	}

	void Transform(const gp_Trsf& T)
	{
		(*self)->Transform(T);
	}
}

class Handle_Geom_ToroidalSurface : public Handle_Geom_ElementarySurface {
	Handle_Geom_ToroidalSurface()=0;
};

%extend Handle_Geom_ToroidalSurface
{
	Handle_Geom_ToroidalSurface(const gp_Ax3& A3,const Standard_Real MajorRadius,const Standard_Real MinorRadius)
	{
		return new Handle_Geom_ToroidalSurface(new Geom_ToroidalSurface(
		A3,MajorRadius,MinorRadius));
	}

	Handle_Geom_ToroidalSurface(const gp_Torus& T)
	{
		return new Handle_Geom_ToroidalSurface(new Geom_ToroidalSurface(
		T));
	}

	void SetMajorRadius(const Standard_Real MajorRadius)
	{
		(*self)->SetMajorRadius(MajorRadius);
	}

	void SetMinorRadius(const Standard_Real MinorRadius)
	{
		(*self)->SetMinorRadius(MinorRadius);
	}

	void SetTorus(const gp_Torus& T)
	{
		(*self)->SetTorus(T);
	}

	gp_Torus Torus() const
	{
		return (*self)->Torus();
	}

	Standard_Real UReversedParameter(const Standard_Real U) const
	{
		return (*self)->UReversedParameter(U);
	}

	Standard_Real VReversedParameter(const Standard_Real V) const
	{
		return (*self)->VReversedParameter(V);
	}

	Standard_Real Area() const
	{
		return (*self)->Area();
	}

	void Bounds(Standard_Real U1,Standard_Real U2,Standard_Real V1,Standard_Real V2) const
	{
		(*self)->Bounds(U1,U2,V1,V2);
	}

	void Coefficients(TColStd_Array1OfReal& Coef) const
	{
		(*self)->Coefficients(Coef);
	}

	Standard_Real MajorRadius() const
	{
		return (*self)->MajorRadius();
	}

	Standard_Real MinorRadius() const
	{
		return (*self)->MinorRadius();
	}

	Standard_Real Volume() const
	{
		return (*self)->Volume();
	}

	Standard_Boolean IsUClosed() const 
	{
		return (*self)->IsUClosed();
	}

	Standard_Boolean IsVClosed() const 
	{
		return (*self)->IsVClosed();
	}

	Standard_Boolean IsUPeriodic() const 
	{
		return (*self)->IsUPeriodic();
	}

	Standard_Boolean IsVPeriodic() const
	{
		return (*self)->IsVPeriodic();
	}

	Handle_Geom_Curve UIso(const Standard_Real U) const 
	{
		return (*self)->UIso(U);
	}

	Handle_Geom_Curve VIso(const Standard_Real V) const 
	{
		return (*self)->VIso(V);
	}

	void D0(const Standard_Real U,const Standard_Real V,gp_Pnt& P) const 
	{
		(*self)->D0(U,V,P);
	}

	void D1(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V) const 
	{
		(*self)->D1(U,V,P,D1U,D1V);
	}

	void D2(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV) const 
	{
		(*self)->D2(U,V,P,D1U,D1V,D2U,D2V,D2UV);
	}

	void D3(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV,gp_Vec& D3U,gp_Vec& D3V,gp_Vec& D3UUV,gp_Vec& D3UVV) const 
	{
		(*self)->D3(U,V,P,D1U,D1V,D2U,D2V,D2UV,D3U,D3V,D3UUV,D3UVV);
	}

	gp_Vec DN(const Standard_Real U,const Standard_Real V,const Standard_Integer Nu,const Standard_Integer Nv) const 
	{
		return (*self)->DN(U,V,Nu,Nv);
	}

	void Transform(const gp_Trsf& T)
	{
		(*self)->Transform(T);
	}
}

class Handle_Geom_SurfaceOfLinearExtrusion : public Handle_Geom_SweptSurface {
	Handle_Geom_SurfaceOfLinearExtrusion()=0;
};

%extend Handle_Geom_SurfaceOfLinearExtrusion
{
	Handle_Geom_SurfaceOfLinearExtrusion(const Handle_Geom_Curve& C,const gp_Dir& V)
	{
		return new Handle_Geom_SurfaceOfLinearExtrusion(new Geom_SurfaceOfLinearExtrusion(
		C,V));
	}

	void SetDirection(const gp_Dir& V)
	{
		(*self)->SetDirection(V);
	}

	void SetBasisCurve(const Handle_Geom_Curve& C)
	{
		(*self)->SetBasisCurve(C);
	}

	void UReverse()
	{
		(*self)->UReverse();
	}

	Standard_Real UReversedParameter(const Standard_Real U) const
	{
		return (*self)->UReversedParameter(U);
	}

	void VReverse()
	{
		(*self)->VReverse();
	}

	Standard_Real VReversedParameter(const Standard_Real V) const
	{
		return (*self)->VReversedParameter(V);
	}

	void Bounds(Standard_Real U1,Standard_Real U2,Standard_Real V1,Standard_Real V2) const
	{
		(*self)->Bounds(U1,U2,V1,V2);
	}

	Standard_Boolean IsUClosed() const 
	{
		return (*self)->IsUClosed();
	}

	Standard_Boolean IsVClosed() const 
	{
		return (*self)->IsVClosed();
	}

	Standard_Boolean IsCNu(const Standard_Integer N) const
	{
		return (*self)->IsCNu(N);
	}

	Standard_Boolean IsCNv(const Standard_Integer N) const
	{
		return (*self)->IsCNv(N);
	}

	Standard_Boolean IsUPeriodic() const 
	{
		return (*self)->IsUPeriodic();
	}

	Standard_Boolean IsVPeriodic() const
	{
		return (*self)->IsVPeriodic();
	}

	Handle_Geom_Curve UIso(const Standard_Real U) const 
	{
		return (*self)->UIso(U);
	}

	Handle_Geom_Curve VIso(const Standard_Real V) const 
	{
		return (*self)->VIso(V);
	}

	void D0(const Standard_Real U,const Standard_Real V,gp_Pnt& P) const 
	{
		(*self)->D0(U,V,P);
	}

	void D1(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V) const 
	{
		(*self)->D1(U,V,P,D1U,D1V);
	}

	void D2(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV) const 
	{
		(*self)->D2(U,V,P,D1U,D1V,D2U,D2V,D2UV);
	}

	void D3(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV,gp_Vec& D3U,gp_Vec& D3V,gp_Vec& D3UUV,gp_Vec& D3UVV) const 
	{
		(*self)->D3(U,V,P,D1U,D1V,D2U,D2V,D2UV,D3U,D3V,D3UUV,D3UVV);
	}

	gp_Vec DN(const Standard_Real U,const Standard_Real V,const Standard_Integer Nu,const Standard_Integer Nv) const 
	{
		return (*self)->DN(U,V,Nu,Nv);
	}

	void LocalD0(const Standard_Real U,const Standard_Real V,const Standard_Integer USide,gp_Pnt& P) const
	{
		(*self)->LocalD0(U,V,USide,P);
	}

	void LocalD1(const Standard_Real U,const Standard_Real V,const Standard_Integer USide,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V) const
	{
		(*self)->LocalD1(U,V,USide,P,D1U,D1V);
	}

	void LocalD2(const Standard_Real U,const Standard_Real V,const Standard_Integer USide,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV) const
	{
		(*self)->LocalD2(U,V,USide,P,D1U,D1V,D2U,D2V,D2UV);
	}

	void LocalD3(const Standard_Real U,const Standard_Real V,const Standard_Integer USide,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV,gp_Vec& D3U,gp_Vec& D3V,gp_Vec& D3UUV,gp_Vec& D3UVV) const
	{
		(*self)->LocalD3(U,V,USide,P,D1U,D1V,D2U,D2V,D2UV,D3U,D3V,D3UUV,D3UVV);
	}

	gp_Vec LocalDN(const Standard_Real U,const Standard_Real V,const Standard_Integer USide,const Standard_Integer Nu,const Standard_Integer Nv) const
	{
		return (*self)->LocalDN(U,V,USide,Nu,Nv);
	}

	void Transform(const gp_Trsf& T)
	{
		(*self)->Transform(T);
	}

	void TransformParameters(Standard_Real U,Standard_Real V,const gp_Trsf& T) const
	{
		(*self)->TransformParameters(U,V,T);
	}

	/*gp_GTrsf2d ParametricTransformation(const gp_Trsf& T) const
	{
		return (*self)->ParametricTransformation(T);
	}*/
}

class Handle_Geom_SurfaceOfRevolution : public Handle_Geom_SweptSurface {
	Handle_Geom_SurfaceOfRevolution()=0;
};

%extend Handle_Geom_SurfaceOfRevolution
{
	Handle_Geom_SurfaceOfRevolution(const Handle_Geom_Curve& C,const gp_Ax1& A1)
	{
		return new Handle_Geom_SurfaceOfRevolution(new Geom_SurfaceOfRevolution(
		C,A1));
	}

	void SetAxis(const gp_Ax1& A1)
	{
		(*self)->SetAxis(A1);
	}

	void SetDirection(const gp_Dir& V)
	{
		(*self)->SetDirection(V);
	}

	void SetBasisCurve(const Handle_Geom_Curve& C)
	{
		(*self)->SetBasisCurve(C);
	}

	void SetLocation(const gp_Pnt& P)
	{
		(*self)->SetLocation(P);
	}

	gp_Ax1 Axis() const
	{
		return (*self)->Axis();
	}

	const gp_Pnt& Location() const
	{
		return (*self)->Location();
	}

	gp_Ax2 ReferencePlane() const
	{
		return (*self)->ReferencePlane();
	}

	void UReverse()
	{
		(*self)->UReverse();
	}

	Standard_Real UReversedParameter(const Standard_Real U) const
	{
		return (*self)->UReversedParameter(U);
	}

	void VReverse()
	{
		(*self)->VReverse();
	}

	Standard_Real VReversedParameter(const Standard_Real V) const
	{
		return (*self)->VReversedParameter(V);
	}

	void TransformParameters(Standard_Real U,Standard_Real V,const gp_Trsf& T) const
	{
		(*self)->TransformParameters(U,V,T);
	}

	/*gp_GTrsf2d ParametricTransformation(const gp_Trsf& T) const
	{
		return (*self)->ParametricTransformation(T);
	}*/

	void Bounds(Standard_Real U1,Standard_Real U2,Standard_Real V1,Standard_Real V2) const
	{
		(*self)->Bounds(U1,U2,V1,V2);
	}

	Standard_Boolean IsUClosed() const 
	{
		return (*self)->IsUClosed();
	}

	Standard_Boolean IsVClosed() const 
	{
		return (*self)->IsVClosed();
	}

	Standard_Boolean IsCNu(const Standard_Integer N) const
	{
		return (*self)->IsCNu(N);
	}

	Standard_Boolean IsCNv(const Standard_Integer N) const
	{
		return (*self)->IsCNv(N);
	}

	Standard_Boolean IsUPeriodic() const 
	{
		return (*self)->IsUPeriodic();
	}

	Standard_Boolean IsVPeriodic() const
	{
		return (*self)->IsVPeriodic();
	}

	Handle_Geom_Curve UIso(const Standard_Real U) const 
	{
		return (*self)->UIso(U);
	}

	Handle_Geom_Curve VIso(const Standard_Real V) const 
	{
		return (*self)->VIso(V);
	}

	void D0(const Standard_Real U,const Standard_Real V,gp_Pnt& P) const 
	{
		(*self)->D0(U,V,P);
	}

	void D1(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V) const 
	{
		(*self)->D1(U,V,P,D1U,D1V);
	}

	void D2(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV) const 
	{
		(*self)->D2(U,V,P,D1U,D1V,D2U,D2V,D2UV);
	}

	void D3(const Standard_Real U,const Standard_Real V,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV,gp_Vec& D3U,gp_Vec& D3V,gp_Vec& D3UUV,gp_Vec& D3UVV) const 
	{
		(*self)->D3(U,V,P,D1U,D1V,D2U,D2V,D2UV,D3U,D3V,D3UUV,D3UVV);
	}

	gp_Vec DN(const Standard_Real U,const Standard_Real V,const Standard_Integer Nu,const Standard_Integer Nv) const 
	{
		return (*self)->DN(U,V,Nu,Nv);
	}

	void LocalD0(const Standard_Real U,const Standard_Real V,const Standard_Integer USide,gp_Pnt& P) const
	{
		(*self)->LocalD0(U,V,USide,P);
	}

	void LocalD1(const Standard_Real U,const Standard_Real V,const Standard_Integer USide,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V) const
	{
		(*self)->LocalD1(U,V,USide,P,D1U,D1V);
	}

	void LocalD2(const Standard_Real U,const Standard_Real V,const Standard_Integer USide,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV) const
	{
		(*self)->LocalD2(U,V,USide,P,D1U,D1V,D2U,D2V,D2UV);
	}

	void LocalD3(const Standard_Real U,const Standard_Real V,const Standard_Integer USide,gp_Pnt& P,gp_Vec& D1U,gp_Vec& D1V,gp_Vec& D2U,gp_Vec& D2V,gp_Vec& D2UV,gp_Vec& D3U,gp_Vec& D3V,gp_Vec& D3UUV,gp_Vec& D3UVV) const
	{
		(*self)->LocalD3(U,V,USide,P,D1U,D1V,D2U,D2V,D2UV,D3U,D3V,D3UUV,D3UVV);
	}

	gp_Vec LocalDN(const Standard_Real U,const Standard_Real V,const Standard_Integer USide,const Standard_Integer Nu,const Standard_Integer Nv) const
	{
		return (*self)->LocalDN(U,V,USide,Nu,Nv);
	}

	void Transform(const gp_Trsf& T)
	{
		(*self)->Transform(T);
	}
}

class Geom_OsculatingSurface 
{
	public:
	Geom_OsculatingSurface();
	Geom_OsculatingSurface(const Handle_Geom_Surface& BS,const Standard_Real Tol);
	void Init(const Handle_Geom_Surface& BS,const Standard_Real Tol);
	Handle_Geom_Surface BasisSurface() const;
	Standard_Real Tolerance() const;
	Standard_Boolean UOscSurf(const Standard_Real U,const Standard_Real V,Standard_Boolean t,Handle_Geom_BSplineSurface& L) const;
	Standard_Boolean VOscSurf(const Standard_Real U,const Standard_Real V,Standard_Boolean t,Handle_Geom_BSplineSurface& L) const;
};

class Handle_Geom2d_Geometry
{
	Handle_Geom2d_Geometry()=0;
};

class Handle_Geom2d_Curve: public Handle_Geom2d_Geometry
{
	Handle_Geom2d_Curve()=0;
};
