/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.jcae.opencascade.jni;

public enum GeomFill_FillingStyle {
  GeomFill_StretchStyle,
  GeomFill_CoonsStyle,
  GeomFill_CurvedStyle;

  public final int swigValue() {
    return swigValue;
  }

  public static GeomFill_FillingStyle swigToEnum(int swigValue) {
    GeomFill_FillingStyle[] swigValues = GeomFill_FillingStyle.class.getEnumConstants();
    if (swigValue < swigValues.length && swigValue >= 0 && swigValues[swigValue].swigValue == swigValue)
      return swigValues[swigValue];
    for (GeomFill_FillingStyle swigEnum : swigValues)
      if (swigEnum.swigValue == swigValue)
        return swigEnum;
    throw new IllegalArgumentException("No enum " + GeomFill_FillingStyle.class + " with value " + swigValue);
  }

  @SuppressWarnings("unused")
  private GeomFill_FillingStyle() {
    this.swigValue = SwigNext.next++;
  }

  @SuppressWarnings("unused")
  private GeomFill_FillingStyle(int swigValue) {
    this.swigValue = swigValue;
    SwigNext.next = swigValue+1;
  }

  @SuppressWarnings("unused")
  private GeomFill_FillingStyle(GeomFill_FillingStyle swigEnum) {
    this.swigValue = swigEnum.swigValue;
    SwigNext.next = this.swigValue+1;
  }

  private final int swigValue;

  private static class SwigNext {
    private static int next = 0;
  }
}

