/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.jcae.opencascade.jni;

public class GeomAPI_ProjectPointOnCurve {
  private long swigCPtr;
  protected boolean swigCMemOwn;

  public GeomAPI_ProjectPointOnCurve(long cPtr, boolean cMemoryOwn) {
    swigCMemOwn = cMemoryOwn;
    swigCPtr = cPtr;
  }

  public static long getCPtr(GeomAPI_ProjectPointOnCurve obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        OccJavaJNI.delete_GeomAPI_ProjectPointOnCurve(swigCPtr);
      }
      swigCPtr = 0;
    }
  }

  public GeomAPI_ProjectPointOnCurve() {
    this(OccJavaJNI.new_GeomAPI_ProjectPointOnCurve__SWIG_0(), true);
  }

  public GeomAPI_ProjectPointOnCurve(double[] P, Geom_Curve Curve) {
    this(OccJavaJNI.new_GeomAPI_ProjectPointOnCurve__SWIG_1(P, Geom_Curve.getCPtr(Curve), Curve), true);
  }

  public GeomAPI_ProjectPointOnCurve(double[] P, Geom_Curve Curve, double Umin, double Usup) {
    this(OccJavaJNI.new_GeomAPI_ProjectPointOnCurve__SWIG_2(P, Geom_Curve.getCPtr(Curve), Curve, Umin, Usup), true);
  }

  public void Init(double[] P, Geom_Curve Curve) {
    OccJavaJNI.GeomAPI_ProjectPointOnCurve_Init__SWIG_0(swigCPtr, this, P, Geom_Curve.getCPtr(Curve), Curve);
  }

  public void Init(double[] P, Geom_Curve Curve, double Umin, double Usup) {
    OccJavaJNI.GeomAPI_ProjectPointOnCurve_Init__SWIG_1(swigCPtr, this, P, Geom_Curve.getCPtr(Curve), Curve, Umin, Usup);
  }

  public void Init(Geom_Curve Curve, double Umin, double Usup) {
    OccJavaJNI.GeomAPI_ProjectPointOnCurve_Init__SWIG_2(swigCPtr, this, Geom_Curve.getCPtr(Curve), Curve, Umin, Usup);
  }

  public void Perform(double[] P) {
    OccJavaJNI.GeomAPI_ProjectPointOnCurve_Perform(swigCPtr, this, P);
  }

  public int NbPoints() {
    return OccJavaJNI.GeomAPI_ProjectPointOnCurve_NbPoints(swigCPtr, this);
  }

  public double[] Point(int Index) {
	return OccJavaJNI.GeomAPI_ProjectPointOnCurve_Point(swigCPtr, this, Index);
}

  public double Parameter(int Index) {
    return OccJavaJNI.GeomAPI_ProjectPointOnCurve_Parameter__SWIG_0(swigCPtr, this, Index);
  }

  public void Parameter(int Index, double U) {
    OccJavaJNI.GeomAPI_ProjectPointOnCurve_Parameter__SWIG_1(swigCPtr, this, Index, U);
  }

  public double Distance(int Index) {
    return OccJavaJNI.GeomAPI_ProjectPointOnCurve_Distance(swigCPtr, this, Index);
  }

  public double[] NearestPoint() {
	return OccJavaJNI.GeomAPI_ProjectPointOnCurve_NearestPoint(swigCPtr, this);
}

  public double LowerDistanceParameter() {
    return OccJavaJNI.GeomAPI_ProjectPointOnCurve_LowerDistanceParameter(swigCPtr, this);
  }

  public double LowerDistance() {
    return OccJavaJNI.GeomAPI_ProjectPointOnCurve_LowerDistance(swigCPtr, this);
  }

}
