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

%{#include <BRepAlgoAPI_BooleanOperation.hxx>%}
%{#include <BRepAlgoAPI_Fuse.hxx>%}
%{#include <BRepAlgoAPI_Common.hxx>%}
%{#include <BRepAlgoAPI_Cut.hxx>%}
%{#include <BRepAlgoAPI_Section.hxx>%}
%{#include <gp_Pln.hxx>%}

class BRepAlgoAPI_BooleanOperation: public BRepBuilderAPI_MakeShape
{
	BRepAlgoAPI_BooleanOperation()=0;
	public:
	void Build();
	const TopoDS_Shape& Shape1() const;
	const TopoDS_Shape& Shape2() const;
	Standard_Boolean FuseEdges() const;
	void RefineEdges();
	Standard_Boolean BuilderCanWork() const;
	Standard_Integer ErrorStatus() const;
	const TopTools_ListOfShape& Modified(const TopoDS_Shape& aS) ;
	Standard_Boolean IsDeleted(const TopoDS_Shape& aS) ;
	const TopTools_ListOfShape& Modified2(const TopoDS_Shape& aS) ;
	const TopTools_ListOfShape& Generated(const TopoDS_Shape& S) ;
	Standard_Boolean HasModified() const;
	Standard_Boolean HasGenerated() const;
	Standard_Boolean HasDeleted() const;
	void Destroy();
	const TopTools_ListOfShape& SectionEdges();
};

class BRepAlgoAPI_Fuse: public BRepAlgoAPI_BooleanOperation
{
	public:
	BRepAlgoAPI_Fuse(const TopoDS_Shape& S1,const TopoDS_Shape& S2);
};

class BRepAlgoAPI_Common: public BRepAlgoAPI_BooleanOperation
{
	public:
	BRepAlgoAPI_Common(const TopoDS_Shape& S1,const TopoDS_Shape& S2);
};

class BRepAlgoAPI_Cut: public BRepAlgoAPI_BooleanOperation
{
	public:
	BRepAlgoAPI_Cut(const TopoDS_Shape& S1,const TopoDS_Shape& S2);
};

class BRepAlgoAPI_Section: public BRepAlgoAPI_BooleanOperation
{
	public:
	BRepAlgoAPI_Section(const TopoDS_Shape& Sh1,const TopoDS_Shape& Sh2);
	BRepAlgoAPI_Section(const TopoDS_Shape& Sh,const gp_Pln& Pl);
	BRepAlgoAPI_Section(const TopoDS_Shape& Sh,const Handle_Geom_Surface& Sf);
	BRepAlgoAPI_Section(const Handle_Geom_Surface& Sf,const TopoDS_Shape& Sh);
	BRepAlgoAPI_Section(const Handle_Geom_Surface& Sf1,const Handle_Geom_Surface& Sf2);
	void Init1(const TopoDS_Shape& S1);
	void Init1(const gp_Pln& Pl);
	void Init1(const Handle_Geom_Surface& Sf);
	void Init2(const TopoDS_Shape& S2);
	void Init2(const gp_Pln& Pl);
	void Init2(const Handle_Geom_Surface& Sf);
	void Approximation(const Standard_Boolean B);
	void ComputePCurveOn1(const Standard_Boolean B);
	void ComputePCurveOn2(const Standard_Boolean B);
	void Build();
	Standard_Boolean HasAncestorFaceOn1(const TopoDS_Shape& E,TopoDS_Shape& F) const;
	Standard_Boolean HasAncestorFaceOn2(const TopoDS_Shape& E,TopoDS_Shape& F) const;
	Handle_Geom2d_Curve PCurveOn1(const TopoDS_Shape& E) const;
	Handle_Geom2d_Curve PCurveOn2(const TopoDS_Shape& E) const;

};

