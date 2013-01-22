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
#include <LocOpe_ProjectedWires.hxx>
#include <LocOpe_WiresOnShape.hxx>
#include <LocOpe_Spliter.hxx>
%}


class  LocOpe_ProjectedWires
{
	public:
	void InitEdgeIterator()=0;
	Standard_Boolean MoreEdge()=0;
	TopoDS_Edge Edge()=0;
	TopoDS_Face OnFace()=0;
	Standard_Boolean OnEdge(TopoDS_Edge& E)=0;
	void NextEdge()=0;
	Standard_Boolean OnVertex(const TopoDS_Vertex& Vwire,TopoDS_Vertex& Vshape)=0;
	Standard_Boolean OnEdge(const TopoDS_Vertex& V,TopoDS_Edge& E,Standard_Real P)=0;
};

class  LocOpe_Spliter
{
	public:
	LocOpe_Spliter();
	LocOpe_Spliter(const TopoDS_Shape& S);
	void Init(const TopoDS_Shape& S);
};


class LocOpe_WiresOnShape : public LocOpe_ProjectedWires 
{
	public:
	LocOpe_WiresOnShape(const TopoDS_Shape& S);
	void InitEdgeIterator();
	Standard_Boolean OnEdge(TopoDS_Edge& E);
	void NextEdge();
	//void Init(const TopoDS_Shape& S);
	Standard_Boolean MoreEdge();
	Standard_Boolean IsDone() const;
};



