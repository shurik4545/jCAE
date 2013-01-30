/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.jcae.opencascade.jni;

public class GeomConvert {
  private long swigCPtr;
  protected boolean swigCMemOwn;

  public GeomConvert(long cPtr, boolean cMemoryOwn) {
    swigCMemOwn = cMemoryOwn;
    swigCPtr = cPtr;
  }

  public static long getCPtr(GeomConvert obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        OccJavaJNI.delete_GeomConvert(swigCPtr);
      }
      swigCPtr = 0;
    }
  }

  public Geom_BSplineCurve SplitBSplineCurve(Geom_BSplineCurve C, int FromK1, int ToK2, boolean SameOrientation) {
    return new Geom_BSplineCurve(OccJavaJNI.GeomConvert_SplitBSplineCurve__SWIG_0(swigCPtr, this, Geom_BSplineCurve.getCPtr(C), C, FromK1, ToK2, SameOrientation), true);
  }

  public Geom_BSplineCurve SplitBSplineCurve(Geom_BSplineCurve C, int FromK1, int ToK2) {
    return new Geom_BSplineCurve(OccJavaJNI.GeomConvert_SplitBSplineCurve__SWIG_1(swigCPtr, this, Geom_BSplineCurve.getCPtr(C), C, FromK1, ToK2), true);
  }

  public Geom_BSplineCurve SplitBSplineCurve(Geom_BSplineCurve C, double FromU1, double ToU2, double ParametricTolerance, boolean SameOrientation) {
    return new Geom_BSplineCurve(OccJavaJNI.GeomConvert_SplitBSplineCurve__SWIG_2(swigCPtr, this, Geom_BSplineCurve.getCPtr(C), C, FromU1, ToU2, ParametricTolerance, SameOrientation), true);
  }

  public Geom_BSplineCurve SplitBSplineCurve(Geom_BSplineCurve C, double FromU1, double ToU2, double ParametricTolerance) {
    return new Geom_BSplineCurve(OccJavaJNI.GeomConvert_SplitBSplineCurve__SWIG_3(swigCPtr, this, Geom_BSplineCurve.getCPtr(C), C, FromU1, ToU2, ParametricTolerance), true);
  }

  public Geom_BSplineSurface SplitBSplineSurface(Geom_BSplineSurface S, int FromUK1, int ToUK2, int FromVK1, int ToVK2, boolean SameUOrientation, boolean SameVOrientation) {
    return new Geom_BSplineSurface(OccJavaJNI.GeomConvert_SplitBSplineSurface__SWIG_0(swigCPtr, this, Geom_BSplineSurface.getCPtr(S), S, FromUK1, ToUK2, FromVK1, ToVK2, SameUOrientation, SameVOrientation), true);
  }

  public Geom_BSplineSurface SplitBSplineSurface(Geom_BSplineSurface S, int FromUK1, int ToUK2, int FromVK1, int ToVK2, boolean SameUOrientation) {
    return new Geom_BSplineSurface(OccJavaJNI.GeomConvert_SplitBSplineSurface__SWIG_1(swigCPtr, this, Geom_BSplineSurface.getCPtr(S), S, FromUK1, ToUK2, FromVK1, ToVK2, SameUOrientation), true);
  }

  public Geom_BSplineSurface SplitBSplineSurface(Geom_BSplineSurface S, int FromUK1, int ToUK2, int FromVK1, int ToVK2) {
    return new Geom_BSplineSurface(OccJavaJNI.GeomConvert_SplitBSplineSurface__SWIG_2(swigCPtr, this, Geom_BSplineSurface.getCPtr(S), S, FromUK1, ToUK2, FromVK1, ToVK2), true);
  }

  public Geom_BSplineSurface SplitBSplineSurface(Geom_BSplineSurface S, int FromK1, int ToK2, boolean USplit, boolean SameOrientation) {
    return new Geom_BSplineSurface(OccJavaJNI.GeomConvert_SplitBSplineSurface__SWIG_3(swigCPtr, this, Geom_BSplineSurface.getCPtr(S), S, FromK1, ToK2, USplit, SameOrientation), true);
  }

  public Geom_BSplineSurface SplitBSplineSurface(Geom_BSplineSurface S, int FromK1, int ToK2, boolean USplit) {
    return new Geom_BSplineSurface(OccJavaJNI.GeomConvert_SplitBSplineSurface__SWIG_4(swigCPtr, this, Geom_BSplineSurface.getCPtr(S), S, FromK1, ToK2, USplit), true);
  }

  public Geom_BSplineSurface SplitBSplineSurface(Geom_BSplineSurface S, double FromU1, double ToU2, double FromV1, double ToV2, double ParametricTolerance, boolean SameUOrientation, boolean SameVOrientation) {
    return new Geom_BSplineSurface(OccJavaJNI.GeomConvert_SplitBSplineSurface__SWIG_5(swigCPtr, this, Geom_BSplineSurface.getCPtr(S), S, FromU1, ToU2, FromV1, ToV2, ParametricTolerance, SameUOrientation, SameVOrientation), true);
  }

  public Geom_BSplineSurface SplitBSplineSurface(Geom_BSplineSurface S, double FromU1, double ToU2, double FromV1, double ToV2, double ParametricTolerance, boolean SameUOrientation) {
    return new Geom_BSplineSurface(OccJavaJNI.GeomConvert_SplitBSplineSurface__SWIG_6(swigCPtr, this, Geom_BSplineSurface.getCPtr(S), S, FromU1, ToU2, FromV1, ToV2, ParametricTolerance, SameUOrientation), true);
  }

  public Geom_BSplineSurface SplitBSplineSurface(Geom_BSplineSurface S, double FromU1, double ToU2, double FromV1, double ToV2, double ParametricTolerance) {
    return new Geom_BSplineSurface(OccJavaJNI.GeomConvert_SplitBSplineSurface__SWIG_7(swigCPtr, this, Geom_BSplineSurface.getCPtr(S), S, FromU1, ToU2, FromV1, ToV2, ParametricTolerance), true);
  }

  public Geom_BSplineSurface SplitBSplineSurface(Geom_BSplineSurface S, double FromParam1, double ToParam2, boolean USplit, double ParametricTolerance, boolean SameOrientation) {
    return new Geom_BSplineSurface(OccJavaJNI.GeomConvert_SplitBSplineSurface__SWIG_8(swigCPtr, this, Geom_BSplineSurface.getCPtr(S), S, FromParam1, ToParam2, USplit, ParametricTolerance, SameOrientation), true);
  }

  public Geom_BSplineSurface SplitBSplineSurface(Geom_BSplineSurface S, double FromParam1, double ToParam2, boolean USplit, double ParametricTolerance) {
    return new Geom_BSplineSurface(OccJavaJNI.GeomConvert_SplitBSplineSurface__SWIG_9(swigCPtr, this, Geom_BSplineSurface.getCPtr(S), S, FromParam1, ToParam2, USplit, ParametricTolerance), true);
  }

  public Geom_BSplineCurve CurveToBSplineCurve(Geom_Curve C, Convert_ParameterisationType Parameterisation) {
    return new Geom_BSplineCurve(OccJavaJNI.GeomConvert_CurveToBSplineCurve__SWIG_0(swigCPtr, this, Geom_Curve.getCPtr(C), C, Parameterisation.swigValue()), true);
  }

  public Geom_BSplineCurve CurveToBSplineCurve(Geom_Curve C) {
    return new Geom_BSplineCurve(OccJavaJNI.GeomConvert_CurveToBSplineCurve__SWIG_1(swigCPtr, this, Geom_Curve.getCPtr(C), C), true);
  }

  public Geom_BSplineSurface SurfaceToBSplineSurface(Geom_Surface S) {
    return new Geom_BSplineSurface(OccJavaJNI.GeomConvert_SurfaceToBSplineSurface(swigCPtr, this, Geom_Surface.getCPtr(S), S), true);
  }

  public GeomConvert() {
    this(OccJavaJNI.new_GeomConvert(), true);
  }

}