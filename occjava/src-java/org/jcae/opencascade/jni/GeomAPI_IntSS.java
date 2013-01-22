/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.jcae.opencascade.jni;

public class GeomAPI_IntSS {
  private long swigCPtr;
  protected boolean swigCMemOwn;

  public GeomAPI_IntSS(long cPtr, boolean cMemoryOwn) {
    swigCMemOwn = cMemoryOwn;
    swigCPtr = cPtr;
  }

  public static long getCPtr(GeomAPI_IntSS obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        OccJavaJNI.delete_GeomAPI_IntSS(swigCPtr);
      }
      swigCPtr = 0;
    }
  }

  public GeomAPI_IntSS() {
    this(OccJavaJNI.new_GeomAPI_IntSS__SWIG_0(), true);
  }

  public GeomAPI_IntSS(Geom_Surface S1, Geom_Surface S2, double Tol) {
    this(OccJavaJNI.new_GeomAPI_IntSS__SWIG_1(Geom_Surface.getCPtr(S1), S1, Geom_Surface.getCPtr(S2), S2, Tol), true);
  }

  public void Perform(Geom_Surface S1, Geom_Surface S2, double Tol) {
    OccJavaJNI.GeomAPI_IntSS_Perform(swigCPtr, this, Geom_Surface.getCPtr(S1), S1, Geom_Surface.getCPtr(S2), S2, Tol);
  }

  public boolean IsDone() {
	return OccJavaJNI.GeomAPI_IntSS_IsDone(swigCPtr, this);
}

  public int NbLines() {
    return OccJavaJNI.GeomAPI_IntSS_NbLines(swigCPtr, this);
  }

  public Geom_Curve Line(int Index) {
    return new Geom_Curve(OccJavaJNI.GeomAPI_IntSS_Line(swigCPtr, this, Index), false);
  }

}
