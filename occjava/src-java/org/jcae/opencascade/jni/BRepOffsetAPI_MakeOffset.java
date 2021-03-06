/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.jcae.opencascade.jni;

public class BRepOffsetAPI_MakeOffset extends BRepBuilderAPI_MakeShape {
  private long swigCPtr;

  public BRepOffsetAPI_MakeOffset(long cPtr, boolean cMemoryOwn) {
    super(OccJavaJNI.BRepOffsetAPI_MakeOffset_SWIGUpcast(cPtr), cMemoryOwn);
    swigCPtr = cPtr;
  }

  public static long getCPtr(BRepOffsetAPI_MakeOffset obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        OccJavaJNI.delete_BRepOffsetAPI_MakeOffset(swigCPtr);
      }
      swigCPtr = 0;
    }
    super.delete();
  }

  public BRepOffsetAPI_MakeOffset() {
    this(OccJavaJNI.new_BRepOffsetAPI_MakeOffset__SWIG_0(), true);
  }

  public BRepOffsetAPI_MakeOffset(TopoDS_Face Spine, GeomAbs_JoinType Join) {
    this(OccJavaJNI.new_BRepOffsetAPI_MakeOffset__SWIG_1(TopoDS_Face.getCPtr(Spine), Spine, Join.swigValue()), true);
  }

  public BRepOffsetAPI_MakeOffset(TopoDS_Face Spine) {
    this(OccJavaJNI.new_BRepOffsetAPI_MakeOffset__SWIG_2(TopoDS_Face.getCPtr(Spine), Spine), true);
  }

  public void Init(TopoDS_Face Spine, GeomAbs_JoinType Join) {
    OccJavaJNI.BRepOffsetAPI_MakeOffset_Init__SWIG_0(swigCPtr, this, TopoDS_Face.getCPtr(Spine), Spine, Join.swigValue());
  }

  public void Init(TopoDS_Face Spine) {
    OccJavaJNI.BRepOffsetAPI_MakeOffset_Init__SWIG_1(swigCPtr, this, TopoDS_Face.getCPtr(Spine), Spine);
  }

  public BRepOffsetAPI_MakeOffset(TopoDS_Wire Spine, GeomAbs_JoinType Join) {
    this(OccJavaJNI.new_BRepOffsetAPI_MakeOffset__SWIG_3(TopoDS_Wire.getCPtr(Spine), Spine, Join.swigValue()), true);
  }

  public BRepOffsetAPI_MakeOffset(TopoDS_Wire Spine) {
    this(OccJavaJNI.new_BRepOffsetAPI_MakeOffset__SWIG_4(TopoDS_Wire.getCPtr(Spine), Spine), true);
  }

  public void Init(GeomAbs_JoinType Join) {
    OccJavaJNI.BRepOffsetAPI_MakeOffset_Init__SWIG_2(swigCPtr, this, Join.swigValue());
  }

  public void Init() {
    OccJavaJNI.BRepOffsetAPI_MakeOffset_Init__SWIG_3(swigCPtr, this);
  }

  public void AddWire(TopoDS_Wire Spine) {
    OccJavaJNI.BRepOffsetAPI_MakeOffset_AddWire(swigCPtr, this, TopoDS_Wire.getCPtr(Spine), Spine);
  }

  public void Perform(double Offset, double Alt) {
    OccJavaJNI.BRepOffsetAPI_MakeOffset_Perform__SWIG_0(swigCPtr, this, Offset, Alt);
  }

  public void Perform(double Offset) {
    OccJavaJNI.BRepOffsetAPI_MakeOffset_Perform__SWIG_1(swigCPtr, this, Offset);
  }

  public void Build() {
    OccJavaJNI.BRepOffsetAPI_MakeOffset_Build(swigCPtr, this);
  }

  public TopoDS_Shape[] Generated(TopoDS_Shape S) {
	return TopoDS_Shape.cArrayWrap(OccJavaJNI.BRepOffsetAPI_MakeOffset_Generated(swigCPtr, this, TopoDS_Shape.getCPtr(S), S));
}

}
