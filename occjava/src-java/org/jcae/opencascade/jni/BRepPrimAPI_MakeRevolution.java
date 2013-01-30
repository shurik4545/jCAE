/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.jcae.opencascade.jni;

public class BRepPrimAPI_MakeRevolution extends BRepPrimAPI_MakeOneAxis {
  private long swigCPtr;

  public BRepPrimAPI_MakeRevolution(long cPtr, boolean cMemoryOwn) {
    super(OccJavaJNI.BRepPrimAPI_MakeRevolution_SWIGUpcast(cPtr), cMemoryOwn);
    swigCPtr = cPtr;
  }

  public static long getCPtr(BRepPrimAPI_MakeRevolution obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        OccJavaJNI.delete_BRepPrimAPI_MakeRevolution(swigCPtr);
      }
      swigCPtr = 0;
    }
    super.delete();
  }

  public BRepPrimAPI_MakeRevolution(Geom_Curve Meridian) {
    this(OccJavaJNI.new_BRepPrimAPI_MakeRevolution__SWIG_0(Geom_Curve.getCPtr(Meridian), Meridian), true);
  }

  public BRepPrimAPI_MakeRevolution(Geom_Curve Meridian, double angle) {
    this(OccJavaJNI.new_BRepPrimAPI_MakeRevolution__SWIG_1(Geom_Curve.getCPtr(Meridian), Meridian, angle), true);
  }

  public BRepPrimAPI_MakeRevolution(Geom_Curve Meridian, double VMin, double VMax) {
    this(OccJavaJNI.new_BRepPrimAPI_MakeRevolution__SWIG_2(Geom_Curve.getCPtr(Meridian), Meridian, VMin, VMax), true);
  }

  public BRepPrimAPI_MakeRevolution(Geom_Curve Meridian, double VMin, double VMax, double angle) {
    this(OccJavaJNI.new_BRepPrimAPI_MakeRevolution__SWIG_3(Geom_Curve.getCPtr(Meridian), Meridian, VMin, VMax, angle), true);
  }

  public BRepPrimAPI_MakeRevolution(double[] Axes, Geom_Curve Meridian) {
    this(OccJavaJNI.new_BRepPrimAPI_MakeRevolution__SWIG_4(Axes, Geom_Curve.getCPtr(Meridian), Meridian), true);
  }

  public BRepPrimAPI_MakeRevolution(double[] Axes, Geom_Curve Meridian, double angle) {
    this(OccJavaJNI.new_BRepPrimAPI_MakeRevolution__SWIG_5(Axes, Geom_Curve.getCPtr(Meridian), Meridian, angle), true);
  }

  public BRepPrimAPI_MakeRevolution(double[] Axes, Geom_Curve Meridian, double VMin, double VMax) {
    this(OccJavaJNI.new_BRepPrimAPI_MakeRevolution__SWIG_6(Axes, Geom_Curve.getCPtr(Meridian), Meridian, VMin, VMax), true);
  }

  public BRepPrimAPI_MakeRevolution(double[] Axes, Geom_Curve Meridian, double VMin, double VMax, double angle) {
    this(OccJavaJNI.new_BRepPrimAPI_MakeRevolution__SWIG_7(Axes, Geom_Curve.getCPtr(Meridian), Meridian, VMin, VMax, angle), true);
  }

}