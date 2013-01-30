/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.jcae.opencascade.jni;

public class Geom_RectangularTrimmedSurface extends Geom_BoundedSurface {
  private long swigCPtr;

  public Geom_RectangularTrimmedSurface(long cPtr, boolean cMemoryOwn) {
    super(OccJavaJNI.Geom_RectangularTrimmedSurface_SWIGUpcast(cPtr), cMemoryOwn);
    swigCPtr = cPtr;
  }

  public static long getCPtr(Geom_RectangularTrimmedSurface obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        OccJavaJNI.delete_Geom_RectangularTrimmedSurface(swigCPtr);
      }
      swigCPtr = 0;
    }
    super.delete();
  }

  public Geom_RectangularTrimmedSurface(Geom_Surface S, double U1, double U2, double V1, double V2, boolean USense, boolean VSense) {
    this(OccJavaJNI.new_Geom_RectangularTrimmedSurface__SWIG_0(Geom_Surface.getCPtr(S), S, U1, U2, V1, V2, USense, VSense), true);
  }

  public Geom_RectangularTrimmedSurface(Geom_Surface S, double U1, double U2, double V1, double V2, boolean USense) {
    this(OccJavaJNI.new_Geom_RectangularTrimmedSurface__SWIG_1(Geom_Surface.getCPtr(S), S, U1, U2, V1, V2, USense), true);
  }

  public Geom_RectangularTrimmedSurface(Geom_Surface S, double U1, double U2, double V1, double V2) {
    this(OccJavaJNI.new_Geom_RectangularTrimmedSurface__SWIG_2(Geom_Surface.getCPtr(S), S, U1, U2, V1, V2), true);
  }

  public Geom_RectangularTrimmedSurface(Geom_Surface S, double Param1, double Param2, boolean UTrim, boolean Sense) {
    this(OccJavaJNI.new_Geom_RectangularTrimmedSurface__SWIG_3(Geom_Surface.getCPtr(S), S, Param1, Param2, UTrim, Sense), true);
  }

  public Geom_RectangularTrimmedSurface(Geom_Surface S, double Param1, double Param2, boolean UTrim) {
    this(OccJavaJNI.new_Geom_RectangularTrimmedSurface__SWIG_4(Geom_Surface.getCPtr(S), S, Param1, Param2, UTrim), true);
  }

  public void SetTrim(double U1, double U2, double V1, double V2, boolean USense, boolean VSense) {
    OccJavaJNI.Geom_RectangularTrimmedSurface_SetTrim__SWIG_0(swigCPtr, this, U1, U2, V1, V2, USense, VSense);
  }

  public void SetTrim(double U1, double U2, double V1, double V2, boolean USense) {
    OccJavaJNI.Geom_RectangularTrimmedSurface_SetTrim__SWIG_1(swigCPtr, this, U1, U2, V1, V2, USense);
  }

  public void SetTrim(double U1, double U2, double V1, double V2) {
    OccJavaJNI.Geom_RectangularTrimmedSurface_SetTrim__SWIG_2(swigCPtr, this, U1, U2, V1, V2);
  }

  public void SetTrim(double Param1, double Param2, boolean UTrim, boolean Sense) {
    OccJavaJNI.Geom_RectangularTrimmedSurface_SetTrim__SWIG_3(swigCPtr, this, Param1, Param2, UTrim, Sense);
  }

  public void SetTrim(double Param1, double Param2, boolean UTrim) {
    OccJavaJNI.Geom_RectangularTrimmedSurface_SetTrim__SWIG_4(swigCPtr, this, Param1, Param2, UTrim);
  }

  public Geom_Surface BasisSurface() {
    return new Geom_Surface(OccJavaJNI.Geom_RectangularTrimmedSurface_BasisSurface(swigCPtr, this), true);
  }

  public void UReverse() {
    OccJavaJNI.Geom_RectangularTrimmedSurface_UReverse(swigCPtr, this);
  }

  public double UReversedParameter(double U) {
    return OccJavaJNI.Geom_RectangularTrimmedSurface_UReversedParameter(swigCPtr, this, U);
  }

  public void VReverse() {
    OccJavaJNI.Geom_RectangularTrimmedSurface_VReverse(swigCPtr, this);
  }

  public double VReversedParameter(double V) {
    return OccJavaJNI.Geom_RectangularTrimmedSurface_VReversedParameter(swigCPtr, this, V);
  }

  public void Bounds(double[] U1, double[] U2, double[] V1, double[] V2) {
    OccJavaJNI.Geom_RectangularTrimmedSurface_Bounds(swigCPtr, this, U1, U2, V1, V2);
  }

  public GeomAbs_Shape Continuity() {
    return GeomAbs_Shape.swigToEnum(OccJavaJNI.Geom_RectangularTrimmedSurface_Continuity(swigCPtr, this));
  }

  public boolean IsUClosed() {
	return OccJavaJNI.Geom_RectangularTrimmedSurface_IsUClosed(swigCPtr, this);
}

  public boolean IsVClosed() {
	return OccJavaJNI.Geom_RectangularTrimmedSurface_IsVClosed(swigCPtr, this);
}

  public boolean IsCNu(int N) {
	return OccJavaJNI.Geom_RectangularTrimmedSurface_IsCNu(swigCPtr, this, N);
}

  public boolean IsCNv(int N) {
	return OccJavaJNI.Geom_RectangularTrimmedSurface_IsCNv(swigCPtr, this, N);
}

  public boolean IsUPeriodic() {
	return OccJavaJNI.Geom_RectangularTrimmedSurface_IsUPeriodic(swigCPtr, this);
}

  public double UPeriod() {
    return OccJavaJNI.Geom_RectangularTrimmedSurface_UPeriod(swigCPtr, this);
  }

  public boolean IsVPeriodic() {
	return OccJavaJNI.Geom_RectangularTrimmedSurface_IsVPeriodic(swigCPtr, this);
}

  public double VPeriod() {
    return OccJavaJNI.Geom_RectangularTrimmedSurface_VPeriod(swigCPtr, this);
  }

  public Geom_Curve UIso(double U) {
    return new Geom_Curve(OccJavaJNI.Geom_RectangularTrimmedSurface_UIso(swigCPtr, this, U), true);
  }

  public Geom_Curve VIso(double V) {
    return new Geom_Curve(OccJavaJNI.Geom_RectangularTrimmedSurface_VIso(swigCPtr, this, V), true);
  }

  public void D0(double U, double V, double[] P) {
    OccJavaJNI.Geom_RectangularTrimmedSurface_D0(swigCPtr, this, U, V, P);
  }

  public void D1(double U, double V, double[] P, double[] D1U, double[] D1V) {
    OccJavaJNI.Geom_RectangularTrimmedSurface_D1(swigCPtr, this, U, V, P, D1U, D1V);
  }

  public void D2(double U, double V, double[] P, double[] D1U, double[] D1V, double[] D2U, double[] D2V, double[] D2UV) {
    OccJavaJNI.Geom_RectangularTrimmedSurface_D2(swigCPtr, this, U, V, P, D1U, D1V, D2U, D2V, D2UV);
  }

  public void D3(double U, double V, double[] P, double[] D1U, double[] D1V, double[] D2U, double[] D2V, double[] D2UV, double[] D3U, double[] D3V, double[] D3UUV, double[] D3UVV) {
    OccJavaJNI.Geom_RectangularTrimmedSurface_D3(swigCPtr, this, U, V, P, D1U, D1V, D2U, D2V, D2UV, D3U, D3V, D3UUV, D3UVV);
  }

  public double[] DN(double U, double V, int Nu, int Nv) {
	return OccJavaJNI.Geom_RectangularTrimmedSurface_DN(swigCPtr, this, U, V, Nu, Nv);
}

  public void Transform(GP_Trsf T) {
    OccJavaJNI.Geom_RectangularTrimmedSurface_Transform(swigCPtr, this, GP_Trsf.getCPtr(T), T);
  }

  public void TransformParameters(double U, double V, GP_Trsf T) {
    OccJavaJNI.Geom_RectangularTrimmedSurface_TransformParameters(swigCPtr, this, U, V, GP_Trsf.getCPtr(T), T);
  }

}