/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.jcae.opencascade.jni;

public class BRepFeat_LocalOperation extends BRepFeat_Builder {
  private long swigCPtr;

  public BRepFeat_LocalOperation(long cPtr, boolean cMemoryOwn) {
    super(OccJavaJNI.BRepFeat_LocalOperation_SWIGUpcast(cPtr), cMemoryOwn);
    swigCPtr = cPtr;
  }

  public static long getCPtr(BRepFeat_LocalOperation obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        OccJavaJNI.delete_BRepFeat_LocalOperation(swigCPtr);
      }
      swigCPtr = 0;
    }
    super.delete();
  }

  public void Build() {
    OccJavaJNI.BRepFeat_LocalOperation_Build(swigCPtr, this);
  }

}
