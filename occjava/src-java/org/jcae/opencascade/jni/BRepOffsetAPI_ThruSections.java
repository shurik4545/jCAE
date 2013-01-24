/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.jcae.opencascade.jni;

public class BRepOffsetAPI_ThruSections extends BRepBuilderAPI_MakeShape {
  private long swigCPtr;

  public BRepOffsetAPI_ThruSections(long cPtr, boolean cMemoryOwn) {
    super(OccJavaJNI.BRepOffsetAPI_ThruSections_SWIGUpcast(cPtr), cMemoryOwn);
    swigCPtr = cPtr;
  }

  public static long getCPtr(BRepOffsetAPI_ThruSections obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        OccJavaJNI.delete_BRepOffsetAPI_ThruSections(swigCPtr);
      }
      swigCPtr = 0;
    }
    super.delete();
  }

  public BRepOffsetAPI_ThruSections(boolean isSolid, boolean ruled, double pres3d) {
    this(OccJavaJNI.new_BRepOffsetAPI_ThruSections__SWIG_0(isSolid, ruled, pres3d), true);
  }

  public BRepOffsetAPI_ThruSections(boolean isSolid, boolean ruled) {
    this(OccJavaJNI.new_BRepOffsetAPI_ThruSections__SWIG_1(isSolid, ruled), true);
  }

  public BRepOffsetAPI_ThruSections(boolean isSolid) {
    this(OccJavaJNI.new_BRepOffsetAPI_ThruSections__SWIG_2(isSolid), true);
  }

  public BRepOffsetAPI_ThruSections() {
    this(OccJavaJNI.new_BRepOffsetAPI_ThruSections__SWIG_3(), true);
  }

  public void Init(boolean isSolid, boolean ruled, double pres3d) {
    OccJavaJNI.BRepOffsetAPI_ThruSections_Init__SWIG_0(swigCPtr, this, isSolid, ruled, pres3d);
  }

  public void Init(boolean isSolid, boolean ruled) {
    OccJavaJNI.BRepOffsetAPI_ThruSections_Init__SWIG_1(swigCPtr, this, isSolid, ruled);
  }

  public void Init(boolean isSolid) {
    OccJavaJNI.BRepOffsetAPI_ThruSections_Init__SWIG_2(swigCPtr, this, isSolid);
  }

  public void Init() {
    OccJavaJNI.BRepOffsetAPI_ThruSections_Init__SWIG_3(swigCPtr, this);
  }

  public void AddWire(TopoDS_Wire wire) {
    OccJavaJNI.BRepOffsetAPI_ThruSections_AddWire(swigCPtr, this, TopoDS_Wire.getCPtr(wire), wire);
  }

  public void AddVertex(TopoDS_Vertex aVertex) {
    OccJavaJNI.BRepOffsetAPI_ThruSections_AddVertex(swigCPtr, this, TopoDS_Vertex.getCPtr(aVertex), aVertex);
  }

  public void CheckCompatibility(boolean check) {
    OccJavaJNI.BRepOffsetAPI_ThruSections_CheckCompatibility__SWIG_0(swigCPtr, this, check);
  }

  public void CheckCompatibility() {
    OccJavaJNI.BRepOffsetAPI_ThruSections_CheckCompatibility__SWIG_1(swigCPtr, this);
  }

  public void SetSmoothing(boolean UseSmoothing) {
    OccJavaJNI.BRepOffsetAPI_ThruSections_SetSmoothing(swigCPtr, this, UseSmoothing);
  }

  public void SetParType(Approx_ParametrizationType ParType) {
    OccJavaJNI.BRepOffsetAPI_ThruSections_SetParType(swigCPtr, this, ParType.swigValue());
  }

  public void SetContinuity(GeomAbs_Shape C) {
    OccJavaJNI.BRepOffsetAPI_ThruSections_SetContinuity(swigCPtr, this, C.swigValue());
  }

  public void SetCriteriumWeight(double W1, double W2, double W3) {
    OccJavaJNI.BRepOffsetAPI_ThruSections_SetCriteriumWeight(swigCPtr, this, W1, W2, W3);
  }

  public void SetMaxDegree(int MaxDeg) {
    OccJavaJNI.BRepOffsetAPI_ThruSections_SetMaxDegree(swigCPtr, this, MaxDeg);
  }

  public Approx_ParametrizationType ParType() {
    return Approx_ParametrizationType.swigToEnum(OccJavaJNI.BRepOffsetAPI_ThruSections_ParType(swigCPtr, this));
  }

  public GeomAbs_Shape Continuity() {
    return GeomAbs_Shape.swigToEnum(OccJavaJNI.BRepOffsetAPI_ThruSections_Continuity(swigCPtr, this));
  }

  public int MaxDegree() {
    return OccJavaJNI.BRepOffsetAPI_ThruSections_MaxDegree(swigCPtr, this);
  }

  public boolean UseSmoothing() {
	return OccJavaJNI.BRepOffsetAPI_ThruSections_UseSmoothing(swigCPtr, this);
}

  public void CriteriumWeight(double W1, double W2, double W3) {
    OccJavaJNI.BRepOffsetAPI_ThruSections_CriteriumWeight(swigCPtr, this, W1, W2, W3);
  }

  public void Build() {
    OccJavaJNI.BRepOffsetAPI_ThruSections_Build(swigCPtr, this);
  }

  public TopoDS_Shape FirstShape() {
    long cPtr = OccJavaJNI.BRepOffsetAPI_ThruSections_FirstShape(swigCPtr, this);
    return (TopoDS_Shape)TopoDS_Shape.create(cPtr);
}

  public TopoDS_Shape LastShape() {
    long cPtr = OccJavaJNI.BRepOffsetAPI_ThruSections_LastShape(swigCPtr, this);
    return (TopoDS_Shape)TopoDS_Shape.create(cPtr);
}

  public TopoDS_Shape GeneratedFace(TopoDS_Shape Edge) {
    long cPtr = OccJavaJNI.BRepOffsetAPI_ThruSections_GeneratedFace(swigCPtr, this, TopoDS_Shape.getCPtr(Edge), Edge);
    return (TopoDS_Shape)TopoDS_Shape.create(cPtr);
}

}
