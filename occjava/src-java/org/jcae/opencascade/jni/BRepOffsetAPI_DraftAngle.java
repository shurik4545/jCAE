/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.jcae.opencascade.jni;

public class BRepOffsetAPI_DraftAngle extends BRepBuilderAPI_ModifyShape {
  private long swigCPtr;

  public BRepOffsetAPI_DraftAngle(long cPtr, boolean cMemoryOwn) {
    super(OccJavaJNI.BRepOffsetAPI_DraftAngle_SWIGUpcast(cPtr), cMemoryOwn);
    swigCPtr = cPtr;
  }

  public static long getCPtr(BRepOffsetAPI_DraftAngle obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        OccJavaJNI.delete_BRepOffsetAPI_DraftAngle(swigCPtr);
      }
      swigCPtr = 0;
    }
    super.delete();
  }

  public BRepOffsetAPI_DraftAngle() {
    this(OccJavaJNI.new_BRepOffsetAPI_DraftAngle__SWIG_0(), true);
  }

  public BRepOffsetAPI_DraftAngle(TopoDS_Shape S) {
    this(OccJavaJNI.new_BRepOffsetAPI_DraftAngle__SWIG_1(TopoDS_Shape.getCPtr(S), S), true);
  }

  public void Clear() {
    OccJavaJNI.BRepOffsetAPI_DraftAngle_Clear(swigCPtr, this);
  }

  public void Init(TopoDS_Shape S) {
    OccJavaJNI.BRepOffsetAPI_DraftAngle_Init(swigCPtr, this, TopoDS_Shape.getCPtr(S), S);
  }

  public void Add(TopoDS_Face F, double[] Direction, double Angle, double[] NeutralPlane, boolean Flag) {
    OccJavaJNI.BRepOffsetAPI_DraftAngle_Add__SWIG_0(swigCPtr, this, TopoDS_Face.getCPtr(F), F, Direction, Angle, NeutralPlane, Flag);
  }

  public void Add(TopoDS_Face F, double[] Direction, double Angle, double[] NeutralPlane) {
    OccJavaJNI.BRepOffsetAPI_DraftAngle_Add__SWIG_1(swigCPtr, this, TopoDS_Face.getCPtr(F), F, Direction, Angle, NeutralPlane);
  }

  public boolean AddDone() {
	return OccJavaJNI.BRepOffsetAPI_DraftAngle_AddDone(swigCPtr, this);
}

  public void Remove(TopoDS_Face F) {
    OccJavaJNI.BRepOffsetAPI_DraftAngle_Remove(swigCPtr, this, TopoDS_Face.getCPtr(F), F);
  }

  public TopoDS_Shape ProblematicShape() {
    long cPtr = OccJavaJNI.BRepOffsetAPI_DraftAngle_ProblematicShape(swigCPtr, this);
    return (TopoDS_Shape)TopoDS_Shape.create(cPtr);
}

  public TopoDS_Shape[] ConnectedFaces(TopoDS_Face F) {
	return TopoDS_Shape.cArrayWrap(OccJavaJNI.BRepOffsetAPI_DraftAngle_ConnectedFaces(swigCPtr, this, TopoDS_Face.getCPtr(F), F));
}

  public TopoDS_Shape[] ModifiedFaces() {
	return TopoDS_Shape.cArrayWrap(OccJavaJNI.BRepOffsetAPI_DraftAngle_ModifiedFaces(swigCPtr, this));
}

  public void Build() {
    OccJavaJNI.BRepOffsetAPI_DraftAngle_Build(swigCPtr, this);
  }

  public void CorrectWires() {
    OccJavaJNI.BRepOffsetAPI_DraftAngle_CorrectWires(swigCPtr, this);
  }

  public TopoDS_Shape[] Generated(TopoDS_Shape S) {
	return TopoDS_Shape.cArrayWrap(OccJavaJNI.BRepOffsetAPI_DraftAngle_Generated(swigCPtr, this, TopoDS_Shape.getCPtr(S), S));
}

  public TopoDS_Shape[] Modified(TopoDS_Shape S) {
	return TopoDS_Shape.cArrayWrap(OccJavaJNI.BRepOffsetAPI_DraftAngle_Modified(swigCPtr, this, TopoDS_Shape.getCPtr(S), S));
}

}