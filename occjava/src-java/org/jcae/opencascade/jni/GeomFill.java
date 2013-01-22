/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.jcae.opencascade.jni;

public class GeomFill {
  private long swigCPtr;
  protected boolean swigCMemOwn;

  public GeomFill(long cPtr, boolean cMemoryOwn) {
    swigCMemOwn = cMemoryOwn;
    swigCPtr = cPtr;
  }

  public static long getCPtr(GeomFill obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        OccJavaJNI.delete_GeomFill(swigCPtr);
      }
      swigCPtr = 0;
    }
  }

  public Geom_Surface Surface(Geom_Curve Curve1, Geom_Curve Curve2) {
    return new Geom_Surface(OccJavaJNI.GeomFill_Surface(swigCPtr, this, Geom_Curve.getCPtr(Curve1), Curve1, Geom_Curve.getCPtr(Curve2), Curve2), true);
  }

  public void GetShape(double MaxAng, int NbPoles, int NbKnots, int Degree, Convert_ParameterisationType TypeConv) {
    OccJavaJNI.GeomFill_GetShape(swigCPtr, this, MaxAng, NbPoles, NbKnots, Degree, TypeConv.swigValue());
  }

  public void Knots(Convert_ParameterisationType TypeConv, double[] TKnots) {
    OccJavaJNI.GeomFill_Knots(swigCPtr, this, TypeConv.swigValue(), TKnots);
  }

  public void Mults(Convert_ParameterisationType TypeConv, int[] TMults) {
    OccJavaJNI.GeomFill_Mults(swigCPtr, this, TypeConv.swigValue(), TMults);
  }

  public void GetMinimalWeights(Convert_ParameterisationType TConv, double AngleMin, double AngleMax, double[] Weigths) {
    OccJavaJNI.GeomFill_GetMinimalWeights(swigCPtr, this, TConv.swigValue(), AngleMin, AngleMax, Weigths);
  }

  public double GetTolerance(Convert_ParameterisationType TConv, double AngleMin, double Radius, double AngularTol, double SpatialTol) {
    return OccJavaJNI.GeomFill_GetTolerance(swigCPtr, this, TConv.swigValue(), AngleMin, Radius, AngularTol, SpatialTol);
  }

  public GeomFill() {
    this(OccJavaJNI.new_GeomFill(), true);
  }

}
