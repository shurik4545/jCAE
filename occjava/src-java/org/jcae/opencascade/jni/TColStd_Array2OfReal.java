/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.jcae.opencascade.jni;

public class TColStd_Array2OfReal {
  private long swigCPtr;
  protected boolean swigCMemOwn;

  public TColStd_Array2OfReal(long cPtr, boolean cMemoryOwn) {
    swigCMemOwn = cMemoryOwn;
    swigCPtr = cPtr;
  }

  public static long getCPtr(TColStd_Array2OfReal obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        OccJavaJNI.delete_TColStd_Array2OfReal(swigCPtr);
      }
      swigCPtr = 0;
    }
  }

  public TColStd_Array2OfReal(int R1, int R2, int C1, int C2) {
    this(OccJavaJNI.new_TColStd_Array2OfReal__SWIG_0(R1, R2, C1, C2), true);
  }

  public TColStd_Array2OfReal(double Item, int R1, int R2, int C1, int C2) {
    this(OccJavaJNI.new_TColStd_Array2OfReal__SWIG_1(Item, R1, R2, C1, C2), true);
  }

  public void Init(double V) {
    OccJavaJNI.TColStd_Array2OfReal_Init(swigCPtr, this, V);
  }

  public void Destroy() {
    OccJavaJNI.TColStd_Array2OfReal_Destroy(swigCPtr, this);
  }

  public int ColLength() {
    return OccJavaJNI.TColStd_Array2OfReal_ColLength(swigCPtr, this);
  }

  public int RowLength() {
    return OccJavaJNI.TColStd_Array2OfReal_RowLength(swigCPtr, this);
  }

  public int LowerCol() {
    return OccJavaJNI.TColStd_Array2OfReal_LowerCol(swigCPtr, this);
  }

  public int LowerRow() {
    return OccJavaJNI.TColStd_Array2OfReal_LowerRow(swigCPtr, this);
  }

  public int UpperCol() {
    return OccJavaJNI.TColStd_Array2OfReal_UpperCol(swigCPtr, this);
  }

  public int UpperRow() {
    return OccJavaJNI.TColStd_Array2OfReal_UpperRow(swigCPtr, this);
  }

  public void SetValue(int Row, int Col, double Value) {
    OccJavaJNI.TColStd_Array2OfReal_SetValue(swigCPtr, this, Row, Col, Value);
  }

  public double Value(int Row, int Col) {
    return OccJavaJNI.TColStd_Array2OfReal_Value(swigCPtr, this, Row, Col);
  }

  public double ChangeValue(int Row, int Col) {
    return OccJavaJNI.TColStd_Array2OfReal_ChangeValue(swigCPtr, this, Row, Col);
  }

}