/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.jcae.opencascade.jni;

public class Geom_ConicalSurface extends Geom_ElementarySurface {
  private long swigCPtr;

  public Geom_ConicalSurface(long cPtr, boolean cMemoryOwn) {
    super(OccJavaJNI.Geom_ConicalSurface_SWIGUpcast(cPtr), cMemoryOwn);
    swigCPtr = cPtr;
  }

  public static long getCPtr(Geom_ConicalSurface obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        OccJavaJNI.delete_Geom_ConicalSurface(swigCPtr);
      }
      swigCPtr = 0;
    }
    super.delete();
  }

  public Geom_ConicalSurface(double[] A3, double Ang, double Radius) {
    this(OccJavaJNI.new_Geom_ConicalSurface__SWIG_0(A3, Ang, Radius), true);
  }

  public Geom_ConicalSurface(GP_Cone C) {
    this(OccJavaJNI.new_Geom_ConicalSurface__SWIG_1(GP_Cone.getCPtr(C), C), true);
  }

  public void SetCone(GP_Cone C) {
    OccJavaJNI.Geom_ConicalSurface_SetCone(swigCPtr, this, GP_Cone.getCPtr(C), C);
  }

  public void SetRadius(double R) {
    OccJavaJNI.Geom_ConicalSurface_SetRadius(swigCPtr, this, R);
  }

  public void SetSemiAngle(double Ang) {
    OccJavaJNI.Geom_ConicalSurface_SetSemiAngle(swigCPtr, this, Ang);
  }

  public GP_Cone Cone() {
    return new GP_Cone(OccJavaJNI.Geom_ConicalSurface_Cone(swigCPtr, this), true);
  }

  public double UReversedParameter(double U) {
    return OccJavaJNI.Geom_ConicalSurface_UReversedParameter(swigCPtr, this, U);
  }

  public double VReversedParameter(double V) {
    return OccJavaJNI.Geom_ConicalSurface_VReversedParameter(swigCPtr, this, V);
  }

  public void VReverse() {
    OccJavaJNI.Geom_ConicalSurface_VReverse(swigCPtr, this);
  }

  public void TransformParameters(double U, double V, GP_Trsf T) {
    OccJavaJNI.Geom_ConicalSurface_TransformParameters(swigCPtr, this, U, V, GP_Trsf.getCPtr(T), T);
  }

  public double[] Apex() {
	return OccJavaJNI.Geom_ConicalSurface_Apex(swigCPtr, this);
}

  public void Bounds(double U1, double U2, double V1, double V2) {
    OccJavaJNI.Geom_ConicalSurface_Bounds(swigCPtr, this, U1, U2, V1, V2);
  }

  public void Coefficients(double A1, double A2, double A3, double B1, double B2, double B3, double C1, double C2, double C3, double D) {
    OccJavaJNI.Geom_ConicalSurface_Coefficients(swigCPtr, this, A1, A2, A3, B1, B2, B3, C1, C2, C3, D);
  }

  public double RefRadius() {
    return OccJavaJNI.Geom_ConicalSurface_RefRadius(swigCPtr, this);
  }

  public double SemiAngle() {
    return OccJavaJNI.Geom_ConicalSurface_SemiAngle(swigCPtr, this);
  }

  public boolean IsUClosed() {
	return OccJavaJNI.Geom_ConicalSurface_IsUClosed(swigCPtr, this);
}

  public boolean IsVClosed() {
	return OccJavaJNI.Geom_ConicalSurface_IsVClosed(swigCPtr, this);
}

  public boolean IsUPeriodic() {
	return OccJavaJNI.Geom_ConicalSurface_IsUPeriodic(swigCPtr, this);
}

  public boolean IsVPeriodic() {
	return OccJavaJNI.Geom_ConicalSurface_IsVPeriodic(swigCPtr, this);
}

  public Geom_Curve UIso(double U) {
    return new Geom_Curve(OccJavaJNI.Geom_ConicalSurface_UIso(swigCPtr, this, U), true);
  }

  public Geom_Curve VIso(double V) {
    return new Geom_Curve(OccJavaJNI.Geom_ConicalSurface_VIso(swigCPtr, this, V), true);
  }

  public void D0(double U, double V, double[] P) {
    OccJavaJNI.Geom_ConicalSurface_D0(swigCPtr, this, U, V, P);
  }

  public void D1(double U, double V, double[] P, double[] D1U, double[] D1V) {
    OccJavaJNI.Geom_ConicalSurface_D1(swigCPtr, this, U, V, P, D1U, D1V);
  }

  public void D2(double U, double V, double[] P, double[] D1U, double[] D1V, double[] D2U, double[] D2V, double[] D2UV) {
    OccJavaJNI.Geom_ConicalSurface_D2(swigCPtr, this, U, V, P, D1U, D1V, D2U, D2V, D2UV);
  }

  public void D3(double U, double V, double[] P, double[] D1U, double[] D1V, double[] D2U, double[] D2V, double[] D2UV, double[] D3U, double[] D3V, double[] D3UUV, double[] D3UVV) {
    OccJavaJNI.Geom_ConicalSurface_D3(swigCPtr, this, U, V, P, D1U, D1V, D2U, D2V, D2UV, D3U, D3V, D3UUV, D3UVV);
  }

  public double[] DN(double U, double V, int Nu, int Nv) {
	return OccJavaJNI.Geom_ConicalSurface_DN(swigCPtr, this, U, V, Nu, Nv);
}

  public void Transform(GP_Trsf T) {
    OccJavaJNI.Geom_ConicalSurface_Transform(swigCPtr, this, GP_Trsf.getCPtr(T), T);
  }

}