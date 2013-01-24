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

%{
#include <BRepFeat_Builder.hxx>
#include <BRepFeat_Form.hxx>
#include <BRepFeat_Gluer.hxx>
#include <BRepFeat_LocalOperation.hxx>
#include <BRepFeat_MakeCylindricalHole.hxx>
#include <BRepFeat_SplitShape.hxx>
%}

class BRepFeat_Builder:public BRepBuilderAPI_MakeShape 
{
	public:
	//void Init(const TopoDS_Shape& S);
	//void Init(const TopoDS_Shape& S,const TopoDS_Shape& T);
	const TopTools_ListOfShape& Modified(const TopoDS_Shape& F);
};

class BRepFeat_Form:public BRepBuilderAPI_MakeShape 
{
	public:
	const TopTools_ListOfShape& Modified(const TopoDS_Shape& F);
	const TopTools_ListOfShape& Generated(const TopoDS_Shape& S);
	Standard_Boolean IsDeleted(const TopoDS_Shape& S);
	/*const TopTools_ListOfShape& FirstShape() const;
	const TopTools_ListOfShape& LastShape() const;
	const TopTools_ListOfShape& NewEdges() const;
	const TopTools_ListOfShape& TgtEdges() const;*/
	void BasisShapeValid();
	void GeneratedShapeValid();
	void ShapeFromValid();
	void ShapeUntilValid();
	void GluedFacesValid();
	void SketchFaceValid();
	void PerfSelectionValid();
};

class BRepFeat_Gluer:public BRepBuilderAPI_MakeShape 
{
	public:
	/*BRepFeat_Gluer();
	BRepFeat_Gluer(const TopoDS_Shape& Snew,const TopoDS_Shape& Sbase);
	void Init(const TopoDS_Shape& Snew,const TopoDS_Shape& Sbase);
	void Bind(const TopoDS_Face& Fnew,const TopoDS_Face& Fbase);
	void Bind(const TopoDS_Edge& Enew,const TopoDS_Edge& Ebase);
	LocOpe_Operation OpeType() const;
	const TopoDS_Shape& BasisShape() const;
	const TopoDS_Shape& GluedShape() const;*/
	void Build();
	Standard_Boolean IsDeleted(const TopoDS_Shape& F);
	const TopTools_ListOfShape& Modified(const TopoDS_Shape& F);
};

class BRepFeat_LocalOperation:public BRepFeat_Builder 
{
	public:
	/*BRepFeat_LocalOperation();
	BRepFeat_LocalOperation(const TopoDS_Shape& S);
	BRepFeat_LocalOperation(const TopoDS_Shape& S1,const TopoDS_Shape& S2);
	void Perform(const TopoDS_Shape& T,const TopTools_ListOfShape& L,const Standard_Boolean Fuse);
	void Perform(const TopTools_ListOfShape& LShape,const TopTools_ListOfShape& LTool,const Standard_Boolean Fuse);
	void BuildPartsOfTool();
	const TopTools_ListOfShape& PartsOfTool() const;
	void RemovePart(const TopoDS_Shape& S);
	void ActivatePart(const TopoDS_Shape& S);*/
	void Build();
};

class BRepFeat_MakeCylindricalHole:public BRepFeat_Builder 
{
	public:
	/*BRepFeat_MakeCylindricalHole();
	BRepFeat_MakeCylindricalHole(const TopoDS_Shape& S);
	BRepFeat_MakeCylindricalHole(const TopoDS_Shape& S,const gp_Ax1& Axis);
	void Init(const gp_Ax1& Axis);
	void Init(const TopoDS_Shape& S,const gp_Ax1& Axis);
	void Perform(const Standard_Real Radius);
	void Perform(const Standard_Real Radius,const Standard_Real PFrom,const Standard_Real PTo,const Standard_Boolean WithControl = Standard_True);
	void PerformThruNext(const Standard_Real Radius,const Standard_Boolean WithControl = Standard_True);
	void PerformUntilEnd(const Standard_Real Radius,const Standard_Boolean WithControl = Standard_True);
	void PerformBlind(const Standard_Real Radius,const Standard_Real Length,const Standard_Boolean WithControl = Standard_True);*/
	void Build();
};

class BRepFeat_SplitShape: public BRepBuilderAPI_MakeShape
{	
	public:
	//void Init(const TopoDS_Shape& S);
	void Build();
	Standard_Boolean IsDeleted(const TopoDS_Shape& S);
	const TopTools_ListOfShape& Modified(const TopoDS_Shape& F);
};


