/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.jcae.opencascade.jni;

public enum BRepFill_TransitionStyle {
  BRepFill_Modified,
  BRepFill_Right,
  BRepFill_Round;

  public final int swigValue() {
    return swigValue;
  }

  public static BRepFill_TransitionStyle swigToEnum(int swigValue) {
    BRepFill_TransitionStyle[] swigValues = BRepFill_TransitionStyle.class.getEnumConstants();
    if (swigValue < swigValues.length && swigValue >= 0 && swigValues[swigValue].swigValue == swigValue)
      return swigValues[swigValue];
    for (BRepFill_TransitionStyle swigEnum : swigValues)
      if (swigEnum.swigValue == swigValue)
        return swigEnum;
    throw new IllegalArgumentException("No enum " + BRepFill_TransitionStyle.class + " with value " + swigValue);
  }

  @SuppressWarnings("unused")
  private BRepFill_TransitionStyle() {
    this.swigValue = SwigNext.next++;
  }

  @SuppressWarnings("unused")
  private BRepFill_TransitionStyle(int swigValue) {
    this.swigValue = swigValue;
    SwigNext.next = swigValue+1;
  }

  @SuppressWarnings("unused")
  private BRepFill_TransitionStyle(BRepFill_TransitionStyle swigEnum) {
    this.swigValue = swigEnum.swigValue;
    SwigNext.next = this.swigValue+1;
  }

  private final int swigValue;

  private static class SwigNext {
    private static int next = 0;
  }
}

