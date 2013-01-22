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

%{ #include <ShapeFix_Wireframe.hxx> %}
%{ #include <ShapeFix_Root.hxx> %}
%{ #include <ShapeBuild_ReShape.hxx> %}
%{ #include <ShapeFix_Face.hxx> %}

class ShapeFix_Root 
{
	ShapeFix_Root()=0;
	public:
	%rename(setPrecision) SetPrecision;
	%rename(getPrecision) Precision;
	%rename(setContext) SetContext;
	void SetPrecision(const Standard_Real preci) ;
	Standard_Real Precision() const;
	void SetContext(const ShapeBuild_ReShape * context) ;
};

%extend ShapeFix_Root
{
    ShapeBuild_ReShape * getContext()
    {
        Standard_Transient * p = self->Context();
        return dynamic_cast<ShapeBuild_ReShape *>(p);
    }
}

class ShapeFix_Face : public ShapeFix_Root {
	public:
	ShapeFix_Face();
	ShapeFix_Face(const TopoDS_Face& face);
	void ClearModes();
	void Init(const TopoDS_Face& face);
	void Init(const Handle_Geom_Surface& surf,const Standard_Real preci,const Standard_Boolean fwd = Standard_True);
	void SetPrecision(const Standard_Real preci); 
	void SetMinTolerance(const Standard_Real mintol);
	void SetMaxTolerance(const Standard_Real maxtol);
	Standard_Integer FixWireMode();
	Standard_Integer FixOrientationMode();
	Standard_Integer FixAddNaturalBoundMode();
	Standard_Integer FixMissingSeamMode();
	Standard_Integer FixSmallAreaWireMode();
	Standard_Integer FixIntersectingWiresMode();
	Standard_Integer FixLoopWiresMode();
	Standard_Integer FixSplitFaceMode();
	Standard_Integer AutoCorrectPrecisionMode();
	TopoDS_Face Face() const;
	TopoDS_Shape Result() const;
	void Add(const TopoDS_Wire& wire);
	Standard_Boolean Perform();
	Standard_Boolean FixOrientation();
	//Standard_Boolean FixOrientation(TopTools_DataMapOfShapeListOfShape& MapWires);
	Standard_Boolean FixAddNaturalBound();
	Standard_Boolean FixMissingSeam();
	Standard_Boolean FixSmallAreaWire();
	//Standard_Boolean FixLoopWire(TopTools_SequenceOfShape& aResWires);
	Standard_Boolean FixIntersectingWires();
	Standard_Boolean FixWiresTwoCoincEdges();
	//Standard_Boolean FixSplitFace(const TopTools_DataMapOfShapeListOfShape& MapWires);
};

class ShapeFix_Wireframe: public ShapeFix_Root
{

	public:
	ShapeFix_Wireframe(const TopoDS_Shape& shape);
	%rename(fixWireGaps) FixWireGaps;
	%rename(fixSmallEdges) FixSmallEdges;
	%rename(setLimitAngle) SetLimitAngle;
	%rename(getLimitAngle) LimitAngle;
	%rename(shape) Shape;
	%javamethodmodifiers FixWireGaps() "
	/** 
	 * Fixes gaps between ends of curves of adjacent edges (both 3d and pcurves)
	 * in wires. If precision is 0.0, uses Precision::Confusion().
	 */
	public";
	Standard_Boolean FixWireGaps();

	%javamethodmodifiers FixSmallEdges() "
	/**
	 * Fixes small edges in shape by merging adjacent edges.
	 * If precision is 0.0, uses Precision::Confusion().
	 */
	public";
	Standard_Boolean FixSmallEdges() ;

	%javamethodmodifiers SetLimitAngle(const Standard_Real theLimitAngle) "
	/**
	 * If two edges makes an angle greater this angle, these two edges
	 * will be not merged.
	 */
	public";
	void SetLimitAngle(const Standard_Real theLimitAngle) ;
	Standard_Real LimitAngle() const;
	TopoDS_Shape Shape() ;
};

%extend ShapeFix_Wireframe
{
	void setDropSmallEdges(bool b)
	{
		self->ModeDropSmallEdges()=b;
	}
	bool getDropSmallEdges()
	{
        return self->ModeDropSmallEdges()!=0;
	}
};