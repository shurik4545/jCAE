/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.jcae.opencascade.jni;

public class Geom_SurfaceOfRevolution extends Geom_SweptSurface {
  private long swigCPtr;

  public Geom_SurfaceOfRevolution(long cPtr, boolean cMemoryOwn) {
    super(OccJavaJNI.Geom_SurfaceOfRevolution_SWIGUpcast(cPtr), cMemoryOwn);
    swigCPtr = cPtr;
  }

  public static long getCPtr(Geom_SurfaceOfRevolution obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        OccJavaJNI.delete_Geom_SurfaceOfRevolution(swigCPtr);
      }
      swigCPtr = 0;
    }
    super.delete();
  }

  public Geom_SurfaceOfRevolution(Geom_Curve C, double[] A1) {
    this(OccJavaJNI.new_Geom_SurfaceOfRevolution(Geom_Curve.getCPtr(C), C, A1), true);
  }

  public void SetAxis(double[] A1) {
    OccJavaJNI.Geom_SurfaceOfRevolution_SetAxis(swigCPtr, this, A1);
  }

  public void SetDirection(double[] V) {
    OccJavaJNI.Geom_SurfaceOfRevolution_SetDirection(swigCPtr, this, V);
  }

  public void SetBasisCurve(Geom_Curve C) {
    OccJavaJNI.Geom_SurfaceOfRevolution_SetBasisCurve(swigCPtr, this, Geom_Curve.getCPtr(C), C);
  }

  public void SetLocation(double[] P) {
    OccJavaJNI.Geom_SurfaceOfRevolution_SetLocation(swigCPtr, this, P);
  }

  public double[] Axis() {
	return OccJavaJNI.Geom_SurfaceOfRevolution_Axis(swigCPtr, this);
}

  public double[] Location() {
	return OccJavaJNI.Geom_SurfaceOfRevolution_Location(swigCPtr, this);
}

  public double[] ReferencePlane() {
	return OccJavaJNI.Geom_SurfaceOfRevolution_ReferencePlane(swigCPtr, this);
}

  public void UReverse() {
    OccJavaJNI.Geom_SurfaceOfRevolution_UReverse(swigCPtr, this);
  }

  public double UReversedParameter(double U) {
    return OccJavaJNI.Geom_SurfaceOfRevolution_UReversedParameter(swigCPtr, this, U);
  }

  public void VReverse() {
    OccJavaJNI.Geom_SurfaceOfRevolution_VReverse(swigCPtr, this);
  }

  public double VReversedParameter(double V) {
    return OccJavaJNI.Geom_SurfaceOfRevolution_VReversedParameter(swigCPtr, this, V);
  }

  public void TransformParameters(double U, double V, GP_Trsf T) {
    OccJavaJNI.Geom_SurfaceOfRevolution_TransformParameters(swigCPtr, this, U, V, GP_Trsf.getCPtr(T), T);
  }

  public void Bounds(double U1, double U2, double V1, double V2) {
    OccJavaJNI.Geom_SurfaceOfRevolution_Bounds(swigCPtr, this, U1, U2, V1, V2);
  }

  public boolean IsUClosed() {
	return OccJavaJNI.Geom_SurfaceOfRevolution_IsUClosed(swigCPtr, this);
}

  public boolean IsVClosed() {
	return OccJavaJNI.Geom_SurfaceOfRevolution_IsVClosed(swigCPtr, this);
}

  public boolean IsCNu(int N) {
	return OccJavaJNI.Geom_SurfaceOfRevolution_IsCNu(swigCPtr, this, N);
}

  public boolean IsCNv(int N) {
	return OccJavaJNI.Geom_SurfaceOfRevolution_IsCNv(swigCPtr, this, N);
}

  public boolean IsUPeriodic() {
	return OccJavaJNI.Geom_SurfaceOfRevolution_IsUPeriodic(swigCPtr, this);
}

  public boolean IsVPeriodic() {
	return OccJavaJNI.Geom_SurfaceOfRevolution_IsVPeriodic(swigCPtr, this);
}

  public Geom_Curve UIso(double U) {
    return new Geom_Curve(OccJavaJNI.Geom_SurfaceOfRevolution_UIso(swigCPtr, this, U), true);
  }

  public Geom_Curve VIso(double V) {
    return new Geom_Curve(OccJavaJNI.Geom_SurfaceOfRevolution_VIso(swigCPtr, this, V), true);
  }

  public void D0(double U, double V, double[] P) {
    OccJavaJNI.Geom_SurfaceOfRevolution_D0(swigCPtr, this, U, V, P);
  }

  public void D1(double U, double V, double[] P, double[] D1U, double[] D1V) {
    OccJavaJNI.Geom_SurfaceOfRevolution_D1(swigCPtr, this, U, V, P, D1U, D1V);
  }

  public void D2(double U, double V, double[] P, double[] D1U, double[] D1V, double[] D2U, double[] D2V, double[] D2UV) {
    OccJavaJNI.Geom_SurfaceOfRevolution_D2(swigCPtr, this, U, V, P, D1U, D1V, D2U, D2V, D2UV);
  }

  public void D3(double U, double V, double[] P, double[] D1U, double[] D1V, double[] D2U, double[] D2V, double[] D2UV, double[] D3U, double[] D3V, double[] D3UUV, double[] D3UVV) {
    OccJavaJNI.Geom_SurfaceOfRevolution_D3(swigCPtr, this, U, V, P, D1U, D1V, D2U, D2V, D2UV, D3U, D3V, D3UUV, D3UVV);
  }

  public double[] DN(double U, double V, int Nu, int Nv) {
	return OccJavaJNI.Geom_SurfaceOfRevolution_DN(swigCPtr, this, U, V, Nu, Nv);
}

  public void LocalD0(double U, double V, int USide, double[] P) {
    OccJavaJNI.Geom_SurfaceOfRevolution_LocalD0(swigCPtr, this, U, V, USide, P);
  }

  public void LocalD1(double U, double V, int USide, double[] P, double[] D1U, double[] D1V) {
    OccJavaJNI.Geom_SurfaceOfRevolution_LocalD1(swigCPtr, this, U, V, USide, P, D1U, D1V);
  }

  public void LocalD2(double U, double V, int USide, double[] P, double[] D1U, double[] D1V, double[] D2U, double[] D2V, double[] D2UV) {
    OccJavaJNI.Geom_SurfaceOfRevolution_LocalD2(swigCPtr, this, U, V, USide, P, D1U, D1V, D2U, D2V, D2UV);
  }

  public void LocalD3(double U, double V, int USide, double[] P, double[] D1U, double[] D1V, double[] D2U, double[] D2V, double[] D2UV, double[] D3U, double[] D3V, double[] D3UUV, double[] D3UVV) {
    OccJavaJNI.Geom_SurfaceOfRevolution_LocalD3(swigCPtr, this, U, V, USide, P, D1U, D1V, D2U, D2V, D2UV, D3U, D3V, D3UUV, D3UVV);
  }

  public double[] LocalDN(double U, double V, int USide, int Nu, int Nv) {
	return OccJavaJNI.Geom_SurfaceOfRevolution_LocalDN(swigCPtr, this, U, V, USide, Nu, Nv);
}

  public void Transform(GP_Trsf T) {
    OccJavaJNI.Geom_SurfaceOfRevolution_Transform(swigCPtr, this, GP_Trsf.getCPtr(T), T);
  }

}
