/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.jcae.opencascade.jni;

public class GP_Cylinder {
  private long swigCPtr;
  protected boolean swigCMemOwn;

  public GP_Cylinder(long cPtr, boolean cMemoryOwn) {
    swigCMemOwn = cMemoryOwn;
    swigCPtr = cPtr;
  }

  public static long getCPtr(GP_Cylinder obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        OccJavaJNI.delete_GP_Cylinder(swigCPtr);
      }
      swigCPtr = 0;
    }
  }

  public GP_Cylinder() {
    this(OccJavaJNI.new_GP_Cylinder__SWIG_0(), true);
  }

  public GP_Cylinder(double[] A3, double Radius) {
    this(OccJavaJNI.new_GP_Cylinder__SWIG_1(A3, Radius), true);
  }

}
