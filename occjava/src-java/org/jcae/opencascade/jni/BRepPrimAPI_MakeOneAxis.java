/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.jcae.opencascade.jni;

public class BRepPrimAPI_MakeOneAxis extends BRepBuilderAPI_MakeShape {
  private long swigCPtr;

  public BRepPrimAPI_MakeOneAxis(long cPtr, boolean cMemoryOwn) {
    super(OccJavaJNI.BRepPrimAPI_MakeOneAxis_SWIGUpcast(cPtr), cMemoryOwn);
    swigCPtr = cPtr;
  }

  public static long getCPtr(BRepPrimAPI_MakeOneAxis obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        OccJavaJNI.delete_BRepPrimAPI_MakeOneAxis(swigCPtr);
      }
      swigCPtr = 0;
    }
    super.delete();
  }

  public void Build() {
    OccJavaJNI.BRepPrimAPI_MakeOneAxis_Build(swigCPtr, this);
  }

  public TopoDS_Face Face() {
    return new TopoDS_Face(OccJavaJNI.BRepPrimAPI_MakeOneAxis_Face(swigCPtr, this), false);
  }

  public TopoDS_Shell Shell() {
    return new TopoDS_Shell(OccJavaJNI.BRepPrimAPI_MakeOneAxis_Shell(swigCPtr, this), false);
  }

  public TopoDS_Solid Solid() {
    return new TopoDS_Solid(OccJavaJNI.BRepPrimAPI_MakeOneAxis_Solid(swigCPtr, this), false);
  }

}