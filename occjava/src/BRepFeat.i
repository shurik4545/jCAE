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
#include <BRepFeat_SplitShape.hxx>
%}

class BRepFeat_SplitShape: public BRepBuilderAPI_MakeShape
{	
	%rename(isDeleted) IsDeleted;
	%rename(modified) Modified;
	public:
	//void Init(const TopoDS_Shape& S);
	void Build();
	Standard_Boolean IsDeleted(const TopoDS_Shape& S);
	const TopTools_ListOfShape& Modified(const TopoDS_Shape& F);
};


