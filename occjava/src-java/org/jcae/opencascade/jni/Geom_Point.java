/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.jcae.opencascade.jni;

public class Geom_Point extends Geom_Geometry {
  private long swigCPtr;

  public Geom_Point(long cPtr, boolean cMemoryOwn) {
    super(OccJavaJNI.Geom_Point_SWIGUpcast(cPtr), cMemoryOwn);
    swigCPtr = cPtr;
  }

  public static long getCPtr(Geom_Point obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        OccJavaJNI.delete_Geom_Point(swigCPtr);
      }
      swigCPtr = 0;
    }
    super.delete();
  }

  public void Coord(double[] X, double[] Y, double[] Z) {
    OccJavaJNI.Geom_Point_Coord(swigCPtr, this, X, Y, Z);
  }

  public double[] Pnt() {
	return OccJavaJNI.Geom_Point_Pnt(swigCPtr, this);
}

  public double X() {
    return OccJavaJNI.Geom_Point_X(swigCPtr, this);
  }

  public double Y() {
    return OccJavaJNI.Geom_Point_Y(swigCPtr, this);
  }

  public double Z() {
    return OccJavaJNI.Geom_Point_Z(swigCPtr, this);
  }

  public double Distance(Geom_Point Other) {
    return OccJavaJNI.Geom_Point_Distance(swigCPtr, this, Geom_Point.getCPtr(Other), Other);
  }

  public double SquareDistance(Geom_Point Other) {
    return OccJavaJNI.Geom_Point_SquareDistance(swigCPtr, this, Geom_Point.getCPtr(Other), Other);
  }

}
