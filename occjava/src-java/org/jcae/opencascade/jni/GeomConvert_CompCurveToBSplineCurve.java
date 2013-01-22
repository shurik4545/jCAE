/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.jcae.opencascade.jni;

public class GeomConvert_CompCurveToBSplineCurve {
  private long swigCPtr;
  protected boolean swigCMemOwn;

  public GeomConvert_CompCurveToBSplineCurve(long cPtr, boolean cMemoryOwn) {
    swigCMemOwn = cMemoryOwn;
    swigCPtr = cPtr;
  }

  public static long getCPtr(GeomConvert_CompCurveToBSplineCurve obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        OccJavaJNI.delete_GeomConvert_CompCurveToBSplineCurve(swigCPtr);
      }
      swigCPtr = 0;
    }
  }

  public GeomConvert_CompCurveToBSplineCurve(Geom_BoundedCurve BasisCurve, Convert_ParameterisationType Parameterisation) {
    this(OccJavaJNI.new_GeomConvert_CompCurveToBSplineCurve__SWIG_0(Geom_BoundedCurve.getCPtr(BasisCurve), BasisCurve, Parameterisation.swigValue()), true);
  }

  public GeomConvert_CompCurveToBSplineCurve(Geom_BoundedCurve BasisCurve) {
    this(OccJavaJNI.new_GeomConvert_CompCurveToBSplineCurve__SWIG_1(Geom_BoundedCurve.getCPtr(BasisCurve), BasisCurve), true);
  }

  public boolean Add(Geom_BoundedCurve NewCurve, double Tolerance, boolean After, boolean WithRatio, int MinM) {
	return OccJavaJNI.GeomConvert_CompCurveToBSplineCurve_Add__SWIG_0(swigCPtr, this, Geom_BoundedCurve.getCPtr(NewCurve), NewCurve, Tolerance, After, WithRatio, MinM);
}

  public boolean Add(Geom_BoundedCurve NewCurve, double Tolerance, boolean After, boolean WithRatio) {
	return OccJavaJNI.GeomConvert_CompCurveToBSplineCurve_Add__SWIG_1(swigCPtr, this, Geom_BoundedCurve.getCPtr(NewCurve), NewCurve, Tolerance, After, WithRatio);
}

  public boolean Add(Geom_BoundedCurve NewCurve, double Tolerance, boolean After) {
	return OccJavaJNI.GeomConvert_CompCurveToBSplineCurve_Add__SWIG_2(swigCPtr, this, Geom_BoundedCurve.getCPtr(NewCurve), NewCurve, Tolerance, After);
}

  public boolean Add(Geom_BoundedCurve NewCurve, double Tolerance) {
	return OccJavaJNI.GeomConvert_CompCurveToBSplineCurve_Add__SWIG_3(swigCPtr, this, Geom_BoundedCurve.getCPtr(NewCurve), NewCurve, Tolerance);
}

  public Geom_BSplineCurve BSplineCurve() {
    return new Geom_BSplineCurve(OccJavaJNI.GeomConvert_CompCurveToBSplineCurve_BSplineCurve(swigCPtr, this), true);
  }

}
