/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.jcae.opencascade.jni;

public class GeomAPI_PointsToBSpline {
  private long swigCPtr;
  protected boolean swigCMemOwn;

  public GeomAPI_PointsToBSpline(long cPtr, boolean cMemoryOwn) {
    swigCMemOwn = cMemoryOwn;
    swigCPtr = cPtr;
  }

  public static long getCPtr(GeomAPI_PointsToBSpline obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        OccJavaJNI.delete_GeomAPI_PointsToBSpline(swigCPtr);
      }
      swigCPtr = 0;
    }
  }

  public GeomAPI_PointsToBSpline() {
    this(OccJavaJNI.new_GeomAPI_PointsToBSpline__SWIG_0(), true);
  }

  public GeomAPI_PointsToBSpline(double[] Points, int DegMin, int DegMax, GeomAbs_Shape Continuity, double Tol3D) {
    this(OccJavaJNI.new_GeomAPI_PointsToBSpline__SWIG_1(Points, DegMin, DegMax, Continuity.swigValue(), Tol3D), true);
  }

  public GeomAPI_PointsToBSpline(double[] Points, int DegMin, int DegMax, GeomAbs_Shape Continuity) {
    this(OccJavaJNI.new_GeomAPI_PointsToBSpline__SWIG_2(Points, DegMin, DegMax, Continuity.swigValue()), true);
  }

  public GeomAPI_PointsToBSpline(double[] Points, int DegMin, int DegMax) {
    this(OccJavaJNI.new_GeomAPI_PointsToBSpline__SWIG_3(Points, DegMin, DegMax), true);
  }

  public GeomAPI_PointsToBSpline(double[] Points, int DegMin) {
    this(OccJavaJNI.new_GeomAPI_PointsToBSpline__SWIG_4(Points, DegMin), true);
  }

  public GeomAPI_PointsToBSpline(double[] Points) {
    this(OccJavaJNI.new_GeomAPI_PointsToBSpline__SWIG_5(Points), true);
  }

  public GeomAPI_PointsToBSpline(double[] Points, Approx_ParametrizationType ParType, int DegMin, int DegMax, GeomAbs_Shape Continuity, double Tol3D) {
    this(OccJavaJNI.new_GeomAPI_PointsToBSpline__SWIG_6(Points, ParType.swigValue(), DegMin, DegMax, Continuity.swigValue(), Tol3D), true);
  }

  public GeomAPI_PointsToBSpline(double[] Points, Approx_ParametrizationType ParType, int DegMin, int DegMax, GeomAbs_Shape Continuity) {
    this(OccJavaJNI.new_GeomAPI_PointsToBSpline__SWIG_7(Points, ParType.swigValue(), DegMin, DegMax, Continuity.swigValue()), true);
  }

  public GeomAPI_PointsToBSpline(double[] Points, Approx_ParametrizationType ParType, int DegMin, int DegMax) {
    this(OccJavaJNI.new_GeomAPI_PointsToBSpline__SWIG_8(Points, ParType.swigValue(), DegMin, DegMax), true);
  }

  public GeomAPI_PointsToBSpline(double[] Points, Approx_ParametrizationType ParType, int DegMin) {
    this(OccJavaJNI.new_GeomAPI_PointsToBSpline__SWIG_9(Points, ParType.swigValue(), DegMin), true);
  }

  public GeomAPI_PointsToBSpline(double[] Points, Approx_ParametrizationType ParType) {
    this(OccJavaJNI.new_GeomAPI_PointsToBSpline__SWIG_10(Points, ParType.swigValue()), true);
  }

  public GeomAPI_PointsToBSpline(double[] Points, double[] Parameters, int DegMin, int DegMax, GeomAbs_Shape Continuity, double Tol3D) {
    this(OccJavaJNI.new_GeomAPI_PointsToBSpline__SWIG_11(Points, Parameters, DegMin, DegMax, Continuity.swigValue(), Tol3D), true);
  }

  public GeomAPI_PointsToBSpline(double[] Points, double[] Parameters, int DegMin, int DegMax, GeomAbs_Shape Continuity) {
    this(OccJavaJNI.new_GeomAPI_PointsToBSpline__SWIG_12(Points, Parameters, DegMin, DegMax, Continuity.swigValue()), true);
  }

  public GeomAPI_PointsToBSpline(double[] Points, double[] Parameters, int DegMin, int DegMax) {
    this(OccJavaJNI.new_GeomAPI_PointsToBSpline__SWIG_13(Points, Parameters, DegMin, DegMax), true);
  }

  public GeomAPI_PointsToBSpline(double[] Points, double[] Parameters, int DegMin) {
    this(OccJavaJNI.new_GeomAPI_PointsToBSpline__SWIG_14(Points, Parameters, DegMin), true);
  }

  public GeomAPI_PointsToBSpline(double[] Points, double[] Parameters) {
    this(OccJavaJNI.new_GeomAPI_PointsToBSpline__SWIG_15(Points, Parameters), true);
  }

  public GeomAPI_PointsToBSpline(double[] Points, double Weight1, double Weight2, double Weight3, int DegMax, GeomAbs_Shape Continuity, double Tol3D) {
    this(OccJavaJNI.new_GeomAPI_PointsToBSpline__SWIG_16(Points, Weight1, Weight2, Weight3, DegMax, Continuity.swigValue(), Tol3D), true);
  }

  public GeomAPI_PointsToBSpline(double[] Points, double Weight1, double Weight2, double Weight3, int DegMax, GeomAbs_Shape Continuity) {
    this(OccJavaJNI.new_GeomAPI_PointsToBSpline__SWIG_17(Points, Weight1, Weight2, Weight3, DegMax, Continuity.swigValue()), true);
  }

  public GeomAPI_PointsToBSpline(double[] Points, double Weight1, double Weight2, double Weight3, int DegMax) {
    this(OccJavaJNI.new_GeomAPI_PointsToBSpline__SWIG_18(Points, Weight1, Weight2, Weight3, DegMax), true);
  }

  public GeomAPI_PointsToBSpline(double[] Points, double Weight1, double Weight2, double Weight3) {
    this(OccJavaJNI.new_GeomAPI_PointsToBSpline__SWIG_19(Points, Weight1, Weight2, Weight3), true);
  }

  public void Init(double[] Points, int DegMin, int DegMax, GeomAbs_Shape Continuity, double Tol3D) {
    OccJavaJNI.GeomAPI_PointsToBSpline_Init__SWIG_0(swigCPtr, this, Points, DegMin, DegMax, Continuity.swigValue(), Tol3D);
  }

  public void Init(double[] Points, int DegMin, int DegMax, GeomAbs_Shape Continuity) {
    OccJavaJNI.GeomAPI_PointsToBSpline_Init__SWIG_1(swigCPtr, this, Points, DegMin, DegMax, Continuity.swigValue());
  }

  public void Init(double[] Points, int DegMin, int DegMax) {
    OccJavaJNI.GeomAPI_PointsToBSpline_Init__SWIG_2(swigCPtr, this, Points, DegMin, DegMax);
  }

  public void Init(double[] Points, int DegMin) {
    OccJavaJNI.GeomAPI_PointsToBSpline_Init__SWIG_3(swigCPtr, this, Points, DegMin);
  }

  public void Init(double[] Points) {
    OccJavaJNI.GeomAPI_PointsToBSpline_Init__SWIG_4(swigCPtr, this, Points);
  }

  public void Init(double[] Points, Approx_ParametrizationType ParType, int DegMin, int DegMax, GeomAbs_Shape Continuity, double Tol3D) {
    OccJavaJNI.GeomAPI_PointsToBSpline_Init__SWIG_5(swigCPtr, this, Points, ParType.swigValue(), DegMin, DegMax, Continuity.swigValue(), Tol3D);
  }

  public void Init(double[] Points, Approx_ParametrizationType ParType, int DegMin, int DegMax, GeomAbs_Shape Continuity) {
    OccJavaJNI.GeomAPI_PointsToBSpline_Init__SWIG_6(swigCPtr, this, Points, ParType.swigValue(), DegMin, DegMax, Continuity.swigValue());
  }

  public void Init(double[] Points, Approx_ParametrizationType ParType, int DegMin, int DegMax) {
    OccJavaJNI.GeomAPI_PointsToBSpline_Init__SWIG_7(swigCPtr, this, Points, ParType.swigValue(), DegMin, DegMax);
  }

  public void Init(double[] Points, Approx_ParametrizationType ParType, int DegMin) {
    OccJavaJNI.GeomAPI_PointsToBSpline_Init__SWIG_8(swigCPtr, this, Points, ParType.swigValue(), DegMin);
  }

  public void Init(double[] Points, Approx_ParametrizationType ParType) {
    OccJavaJNI.GeomAPI_PointsToBSpline_Init__SWIG_9(swigCPtr, this, Points, ParType.swigValue());
  }

  public void Init(double[] Points, double[] Parameters, int DegMin, int DegMax, GeomAbs_Shape Continuity, double Tol3D) {
    OccJavaJNI.GeomAPI_PointsToBSpline_Init__SWIG_10(swigCPtr, this, Points, Parameters, DegMin, DegMax, Continuity.swigValue(), Tol3D);
  }

  public void Init(double[] Points, double[] Parameters, int DegMin, int DegMax, GeomAbs_Shape Continuity) {
    OccJavaJNI.GeomAPI_PointsToBSpline_Init__SWIG_11(swigCPtr, this, Points, Parameters, DegMin, DegMax, Continuity.swigValue());
  }

  public void Init(double[] Points, double[] Parameters, int DegMin, int DegMax) {
    OccJavaJNI.GeomAPI_PointsToBSpline_Init__SWIG_12(swigCPtr, this, Points, Parameters, DegMin, DegMax);
  }

  public void Init(double[] Points, double[] Parameters, int DegMin) {
    OccJavaJNI.GeomAPI_PointsToBSpline_Init__SWIG_13(swigCPtr, this, Points, Parameters, DegMin);
  }

  public void Init(double[] Points, double[] Parameters) {
    OccJavaJNI.GeomAPI_PointsToBSpline_Init__SWIG_14(swigCPtr, this, Points, Parameters);
  }

  public void Init(double[] Points, double Weight1, double Weight2, double Weight3, int DegMax, GeomAbs_Shape Continuity, double Tol3D) {
    OccJavaJNI.GeomAPI_PointsToBSpline_Init__SWIG_15(swigCPtr, this, Points, Weight1, Weight2, Weight3, DegMax, Continuity.swigValue(), Tol3D);
  }

  public void Init(double[] Points, double Weight1, double Weight2, double Weight3, int DegMax, GeomAbs_Shape Continuity) {
    OccJavaJNI.GeomAPI_PointsToBSpline_Init__SWIG_16(swigCPtr, this, Points, Weight1, Weight2, Weight3, DegMax, Continuity.swigValue());
  }

  public void Init(double[] Points, double Weight1, double Weight2, double Weight3, int DegMax) {
    OccJavaJNI.GeomAPI_PointsToBSpline_Init__SWIG_17(swigCPtr, this, Points, Weight1, Weight2, Weight3, DegMax);
  }

  public void Init(double[] Points, double Weight1, double Weight2, double Weight3) {
    OccJavaJNI.GeomAPI_PointsToBSpline_Init__SWIG_18(swigCPtr, this, Points, Weight1, Weight2, Weight3);
  }

  public Geom_BSplineCurve Curve() {
    return new Geom_BSplineCurve(OccJavaJNI.GeomAPI_PointsToBSpline_Curve(swigCPtr, this), false);
  }

  public boolean IsDone() {
	return OccJavaJNI.GeomAPI_PointsToBSpline_IsDone(swigCPtr, this);
}

}
