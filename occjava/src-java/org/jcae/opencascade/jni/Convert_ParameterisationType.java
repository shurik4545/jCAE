/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.jcae.opencascade.jni;

public enum Convert_ParameterisationType {
  Convert_TgtThetaOver2,
  Convert_TgtThetaOver2_1,
  Convert_TgtThetaOver2_2,
  Convert_TgtThetaOver2_3,
  Convert_TgtThetaOver2_4,
  Convert_QuasiAngular,
  Convert_RationalC1,
  Convert_Polynomial;

  public final int swigValue() {
    return swigValue;
  }

  public static Convert_ParameterisationType swigToEnum(int swigValue) {
    Convert_ParameterisationType[] swigValues = Convert_ParameterisationType.class.getEnumConstants();
    if (swigValue < swigValues.length && swigValue >= 0 && swigValues[swigValue].swigValue == swigValue)
      return swigValues[swigValue];
    for (Convert_ParameterisationType swigEnum : swigValues)
      if (swigEnum.swigValue == swigValue)
        return swigEnum;
    throw new IllegalArgumentException("No enum " + Convert_ParameterisationType.class + " with value " + swigValue);
  }

  @SuppressWarnings("unused")
  private Convert_ParameterisationType() {
    this.swigValue = SwigNext.next++;
  }

  @SuppressWarnings("unused")
  private Convert_ParameterisationType(int swigValue) {
    this.swigValue = swigValue;
    SwigNext.next = swigValue+1;
  }

  @SuppressWarnings("unused")
  private Convert_ParameterisationType(Convert_ParameterisationType swigEnum) {
    this.swigValue = swigEnum.swigValue;
    SwigNext.next = this.swigValue+1;
  }

  private final int swigValue;

  private static class SwigNext {
    private static int next = 0;
  }
}

