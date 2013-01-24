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
#include <BRepPrimAPI_MakeBox.hxx>
#include <BRepPrimAPI_MakeCone.hxx>
#include <BRepPrimAPI_MakeCylinder.hxx>
#include <BRepPrimAPI_MakeHalfSpace.hxx>
#include <BRepPrimAPI_MakeOneAxis.hxx>
#include <BRepPrimAPI_MakePrism.hxx>
#include <BRepPrimAPI_MakeRevol.hxx>
#include <BRepPrimAPI_MakeRevolution.hxx>
#include <BRepPrimAPI_MakeSphere.hxx>
#include <BRepPrimAPI_MakeSweep.hxx>
#include <BRepPrimAPI_MakeTorus.hxx>
#include <BRepPrimAPI_MakeWedge.hxx>
%}

class BRepPrimAPI_MakeOneAxis : public BRepBuilderAPI_MakeShape
{
	public:
	void Build();
	const TopoDS_Face& Face();
	const TopoDS_Shell& Shell();
	const TopoDS_Solid& Solid();
};

class BRepPrimAPI_MakeSweep  : public BRepBuilderAPI_MakeShape
{
	public:
	TopoDS_Shape FirstShape() = 0;
	TopoDS_Shape LastShape() = 0;
};

class BRepPrimAPI_MakeBox : public BRepBuilderAPI_MakeShape
{
	public:
	BRepPrimAPI_MakeBox(const Standard_Real dx,const Standard_Real dy,const Standard_Real dz);
	BRepPrimAPI_MakeBox(const gp_Pnt& P,const Standard_Real dx,const Standard_Real dy,const Standard_Real dz);
	BRepPrimAPI_MakeBox(const gp_Pnt& P1,const gp_Pnt& P2);
	//BRepPrimAPI_MakeBox(const gp_Ax2& Axes,const Standard_Real dx,const Standard_Real dy,const Standard_Real dz);
	//BRepPrim_Wedge& Wedge();
	void Build();
	const TopoDS_Shell& Shell();
	const TopoDS_Solid& Solid();
	const TopoDS_Face& BottomFace();
	const TopoDS_Face& BackFace();
	const TopoDS_Face& FrontFace();
	const TopoDS_Face& LeftFace();
	const TopoDS_Face& RightFace();
	const TopoDS_Face& TopFace();
};

class BRepPrimAPI_MakeCone : BRepPrimAPI_MakeOneAxis
{
	public:
	BRepPrimAPI_MakeCone(const Standard_Real R1,const Standard_Real R2,const Standard_Real H);
	BRepPrimAPI_MakeCone(const Standard_Real R1,const Standard_Real R2,const Standard_Real H,const Standard_Real angle);
	BRepPrimAPI_MakeCone(const gp_Ax2& Axes,const Standard_Real R1,const Standard_Real R2,const Standard_Real H);
	BRepPrimAPI_MakeCone(const gp_Ax2& Axes,const Standard_Real R1,const Standard_Real R2,const Standard_Real H,const Standard_Real angle);
	//BRepPrim_Cone& Cone();
};


class BRepPrimAPI_MakeCylinder : BRepPrimAPI_MakeOneAxis
{
	public:
	BRepPrimAPI_MakeCylinder(const Standard_Real R,const Standard_Real H);
	BRepPrimAPI_MakeCylinder(const Standard_Real R,const Standard_Real H,const Standard_Real Angle);
	BRepPrimAPI_MakeCylinder(const gp_Ax2& Axes,const Standard_Real R,const Standard_Real H);
	BRepPrimAPI_MakeCylinder(const gp_Ax2& Axes,const Standard_Real R,const Standard_Real H,const Standard_Real Angle);
	//BRepPrim_Cylinder& Cylinder();
};

class BRepPrimAPI_MakeHalfSpace : public BRepBuilderAPI_MakeShape
{
	public:
	BRepPrimAPI_MakeHalfSpace(const TopoDS_Face& Face,const gp_Pnt& RefPnt);
	BRepPrimAPI_MakeHalfSpace(const TopoDS_Shell& Shell,const gp_Pnt& RefPnt);
	const TopoDS_Solid& Solid() const;
};

class BRepPrimAPI_MakePrism  : public BRepPrimAPI_MakeSweep
{
    public:
	BRepPrimAPI_MakePrism(const TopoDS_Shape& S,const gp_Vec& V,const Standard_Boolean Copy = Standard_False,const Standard_Boolean Canonize = Standard_True);
	//BRepPrimAPI_MakePrism(const TopoDS_Shape& S,const gp_Dir& D,const Standard_Boolean Inf = Standard_True,const Standard_Boolean Copy = Standard_False,const Standard_Boolean Canonize = Standard_True);
	//const BRepSweep_Prism& Prism() const;
	void Build();
	TopoDS_Shape FirstShape();
	TopoDS_Shape LastShape();
	const TopTools_ListOfShape& Generated(const TopoDS_Shape& S);
	TopoDS_Shape FirstShape(const TopoDS_Shape& theShape);
	TopoDS_Shape LastShape(const TopoDS_Shape& theShape);
};

class BRepPrimAPI_MakeRevol  : public BRepPrimAPI_MakeSweep 
{
    public:
    BRepPrimAPI_MakeRevol(const TopoDS_Shape& S,const gp_Ax1& A,const Standard_Real D,const Standard_Boolean Copy = Standard_False);
	BRepPrimAPI_MakeRevol(const TopoDS_Shape& S,const gp_Ax1& A,const Standard_Boolean Copy = Standard_False);
	//const BRepSweep_Revol& Revol() const;
	void Build();
	TopoDS_Shape FirstShape();
	TopoDS_Shape LastShape();
	const TopTools_ListOfShape& Generated(const TopoDS_Shape& S);
	TopoDS_Shape FirstShape(const TopoDS_Shape& theShape);
	TopoDS_Shape LastShape(const TopoDS_Shape& theShape);
	Standard_Boolean HasDegenerated() const;
	const TopTools_ListOfShape& Degenerated() const;
};

class BRepPrimAPI_MakeRevolution : public BRepPrimAPI_MakeOneAxis
{
	public:
	BRepPrimAPI_MakeRevolution(const Handle_Geom_Curve& Meridian);
	BRepPrimAPI_MakeRevolution(const Handle_Geom_Curve& Meridian,const Standard_Real angle);
	BRepPrimAPI_MakeRevolution(const Handle_Geom_Curve& Meridian,const Standard_Real VMin,const Standard_Real VMax);
	BRepPrimAPI_MakeRevolution(const Handle_Geom_Curve& Meridian,const Standard_Real VMin,const Standard_Real VMax,const Standard_Real angle);
	BRepPrimAPI_MakeRevolution(const gp_Ax2& Axes,const Handle_Geom_Curve& Meridian);
	BRepPrimAPI_MakeRevolution(const gp_Ax2& Axes,const Handle_Geom_Curve& Meridian,const Standard_Real angle);
	BRepPrimAPI_MakeRevolution(const gp_Ax2& Axes,const Handle_Geom_Curve& Meridian,const Standard_Real VMin,const Standard_Real VMax);
	BRepPrimAPI_MakeRevolution(const gp_Ax2& Axes,const Handle_Geom_Curve& Meridian,const Standard_Real VMin,const Standard_Real VMax,const Standard_Real angle);
	//BRepPrim_Revolution& Revolution();
};

class BRepPrimAPI_MakeSphere : public BRepPrimAPI_MakeOneAxis
{
	public:
	BRepPrimAPI_MakeSphere(const Standard_Real R);
	BRepPrimAPI_MakeSphere(const Standard_Real R,const Standard_Real angle);
	BRepPrimAPI_MakeSphere(const Standard_Real R,const Standard_Real angle1,const Standard_Real angle2);
	BRepPrimAPI_MakeSphere(const Standard_Real R,const Standard_Real angle1,const Standard_Real angle2,const Standard_Real angle3);
	BRepPrimAPI_MakeSphere(const gp_Pnt& Center,const Standard_Real R);
	BRepPrimAPI_MakeSphere(const gp_Pnt& Center,const Standard_Real R,const Standard_Real angle);
	BRepPrimAPI_MakeSphere(const gp_Pnt& Center,const Standard_Real R,const Standard_Real angle1,const Standard_Real angle2);
	BRepPrimAPI_MakeSphere(const gp_Pnt& Center,const Standard_Real R,const Standard_Real angle1,const Standard_Real angle2,const Standard_Real angle3);
	/*BRepPrimAPI_MakeSphere(const gp_Ax2& Axis,const Standard_Real R);
	BRepPrimAPI_MakeSphere(const gp_Ax2& Axis,const Standard_Real R,const Standard_Real angle);
	BRepPrimAPI_MakeSphere(const gp_Ax2& Axis,const Standard_Real R,const Standard_Real angle1,const Standard_Real angle2);
	BRepPrimAPI_MakeSphere(const gp_Ax2& Axis,const Standard_Real R,const Standard_Real angle1,const Standard_Real angle2,const Standard_Real angle3);
	BRepPrim_Sphere& Sphere();*/
};

class BRepPrimAPI_MakeTorus : public BRepPrimAPI_MakeOneAxis
{
	public:
	BRepPrimAPI_MakeTorus(const Standard_Real R1,const Standard_Real R2);
	BRepPrimAPI_MakeTorus(const Standard_Real R1,const Standard_Real R2,const Standard_Real angle);
	BRepPrimAPI_MakeTorus(const Standard_Real R1,const Standard_Real R2,const Standard_Real angle1,const Standard_Real angle2);
	BRepPrimAPI_MakeTorus(const Standard_Real R1,const Standard_Real R2,const Standard_Real angle1,const Standard_Real angle2,const Standard_Real angle);
	BRepPrimAPI_MakeTorus(const gp_Ax2& Axes,const Standard_Real R1,const Standard_Real R2);
	BRepPrimAPI_MakeTorus(const gp_Ax2& Axes,const Standard_Real R1,const Standard_Real R2,const Standard_Real angle);
	BRepPrimAPI_MakeTorus(const gp_Ax2& Axes,const Standard_Real R1,const Standard_Real R2,const Standard_Real angle1,const Standard_Real angle2);
	BRepPrimAPI_MakeTorus(const gp_Ax2& Axes,const Standard_Real R1,const Standard_Real R2,const Standard_Real angle1,const Standard_Real angle2,const Standard_Real angle);
	//BRepPrim_Torus& Torus();
};

class BRepPrimAPI_MakeWedge  : public BRepBuilderAPI_MakeShape
{
	public:
	BRepPrimAPI_MakeWedge(const Standard_Real dx,const Standard_Real dy,const Standard_Real dz,const Standard_Real ltx);
	BRepPrimAPI_MakeWedge(const gp_Ax2& Axes,const Standard_Real dx,const Standard_Real dy,const Standard_Real dz,const Standard_Real ltx);
	BRepPrimAPI_MakeWedge(const Standard_Real dx,const Standard_Real dy,const Standard_Real dz,const Standard_Real xmin,const Standard_Real zmin,const Standard_Real xmax,const Standard_Real zmax);
	BRepPrimAPI_MakeWedge(const gp_Ax2& Axes,const Standard_Real dx,const Standard_Real dy,const Standard_Real dz,const Standard_Real xmin,const Standard_Real zmin,const Standard_Real xmax,const Standard_Real zmax);
	//BRepPrim_Wedge& Wedge();
	void Build();
	const TopoDS_Shell& Shell();
	const TopoDS_Solid& Solid();
};
