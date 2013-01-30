/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.jcae.opencascade.jni;

public class Geom_BezierSurface extends Geom_BoundedSurface {
  private long swigCPtr;

  public Geom_BezierSurface(long cPtr, boolean cMemoryOwn) {
    super(OccJavaJNI.Geom_BezierSurface_SWIGUpcast(cPtr), cMemoryOwn);
    swigCPtr = cPtr;
  }

  public static long getCPtr(Geom_BezierSurface obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        OccJavaJNI.delete_Geom_BezierSurface(swigCPtr);
      }
      swigCPtr = 0;
    }
    super.delete();
  }

  public Geom_BezierSurface(TColgp_Array2OfPnt SurfacePoles) {
    this(OccJavaJNI.new_Geom_BezierSurface__SWIG_0(TColgp_Array2OfPnt.getCPtr(SurfacePoles), SurfacePoles), true);
  }

  public Geom_BezierSurface(TColgp_Array2OfPnt SurfacePoles, TColStd_Array2OfReal PoleWeights) {
    this(OccJavaJNI.new_Geom_BezierSurface__SWIG_1(TColgp_Array2OfPnt.getCPtr(SurfacePoles), SurfacePoles, TColStd_Array2OfReal.getCPtr(PoleWeights), PoleWeights), true);
  }

  public void ExchangeUV() {
    OccJavaJNI.Geom_BezierSurface_ExchangeUV(swigCPtr, this);
  }

  public void Increase(int UDeg, int VDeg) {
    OccJavaJNI.Geom_BezierSurface_Increase(swigCPtr, this, UDeg, VDeg);
  }

  public void InsertPoleColAfter(int VIndex, double[] CPoles) {
    OccJavaJNI.Geom_BezierSurface_InsertPoleColAfter__SWIG_0(swigCPtr, this, VIndex, CPoles);
  }

  public void InsertPoleColAfter(int VIndex, double[] CPoles, double[] CPoleWeights) {
    OccJavaJNI.Geom_BezierSurface_InsertPoleColAfter__SWIG_1(swigCPtr, this, VIndex, CPoles, CPoleWeights);
  }

  public void InsertPoleColBefore(int VIndex, double[] CPoles) {
    OccJavaJNI.Geom_BezierSurface_InsertPoleColBefore__SWIG_0(swigCPtr, this, VIndex, CPoles);
  }

  public void InsertPoleColBefore(int VIndex, double[] CPoles, double[] CPoleWeights) {
    OccJavaJNI.Geom_BezierSurface_InsertPoleColBefore__SWIG_1(swigCPtr, this, VIndex, CPoles, CPoleWeights);
  }

  public void InsertPoleRowAfter(int UIndex, double[] CPoles) {
    OccJavaJNI.Geom_BezierSurface_InsertPoleRowAfter__SWIG_0(swigCPtr, this, UIndex, CPoles);
  }

  public void InsertPoleRowAfter(int UIndex, double[] CPoles, double[] CPoleWeights) {
    OccJavaJNI.Geom_BezierSurface_InsertPoleRowAfter__SWIG_1(swigCPtr, this, UIndex, CPoles, CPoleWeights);
  }

  public void InsertPoleRowBefore(int UIndex, double[] CPoles) {
    OccJavaJNI.Geom_BezierSurface_InsertPoleRowBefore__SWIG_0(swigCPtr, this, UIndex, CPoles);
  }

  public void InsertPoleRowBefore(int UIndex, double[] CPoles, double[] CPoleWeights) {
    OccJavaJNI.Geom_BezierSurface_InsertPoleRowBefore__SWIG_1(swigCPtr, this, UIndex, CPoles, CPoleWeights);
  }

  public void RemovePoleCol(int VIndex) {
    OccJavaJNI.Geom_BezierSurface_RemovePoleCol(swigCPtr, this, VIndex);
  }

  public void RemovePoleRow(int UIndex) {
    OccJavaJNI.Geom_BezierSurface_RemovePoleRow(swigCPtr, this, UIndex);
  }

  public void Segment(double U1, double U2, double V1, double V2) {
    OccJavaJNI.Geom_BezierSurface_Segment(swigCPtr, this, U1, U2, V1, V2);
  }

  public void SetPole(int UIndex, int VIndex, double[] P) {
    OccJavaJNI.Geom_BezierSurface_SetPole__SWIG_0(swigCPtr, this, UIndex, VIndex, P);
  }

  public void SetPole(int UIndex, int VIndex, double[] P, double Weight) {
    OccJavaJNI.Geom_BezierSurface_SetPole__SWIG_1(swigCPtr, this, UIndex, VIndex, P, Weight);
  }

  public void SetPoleCol(int VIndex, double[] CPoles) {
    OccJavaJNI.Geom_BezierSurface_SetPoleCol__SWIG_0(swigCPtr, this, VIndex, CPoles);
  }

  public void SetPoleCol(int VIndex, double[] CPoles, double[] CPoleWeights) {
    OccJavaJNI.Geom_BezierSurface_SetPoleCol__SWIG_1(swigCPtr, this, VIndex, CPoles, CPoleWeights);
  }

  public void SetPoleRow(int UIndex, double[] CPoles) {
    OccJavaJNI.Geom_BezierSurface_SetPoleRow__SWIG_0(swigCPtr, this, UIndex, CPoles);
  }

  public void SetPoleRow(int UIndex, double[] CPoles, double[] CPoleWeights) {
    OccJavaJNI.Geom_BezierSurface_SetPoleRow__SWIG_1(swigCPtr, this, UIndex, CPoles, CPoleWeights);
  }

  public void SetWeight(int UIndex, int VIndex, double Weight) {
    OccJavaJNI.Geom_BezierSurface_SetWeight(swigCPtr, this, UIndex, VIndex, Weight);
  }

  public void SetWeightCol(int VIndex, double[] CPoleWeights) {
    OccJavaJNI.Geom_BezierSurface_SetWeightCol(swigCPtr, this, VIndex, CPoleWeights);
  }

  public void SetWeightRow(int UIndex, double[] CPoleWeights) {
    OccJavaJNI.Geom_BezierSurface_SetWeightRow(swigCPtr, this, UIndex, CPoleWeights);
  }

  public void UReverse() {
    OccJavaJNI.Geom_BezierSurface_UReverse(swigCPtr, this);
  }

  public double UReversedParameter(double U) {
    return OccJavaJNI.Geom_BezierSurface_UReversedParameter(swigCPtr, this, U);
  }

  public void VReverse() {
    OccJavaJNI.Geom_BezierSurface_VReverse(swigCPtr, this);
  }

  public double VReversedParameter(double V) {
    return OccJavaJNI.Geom_BezierSurface_VReversedParameter(swigCPtr, this, V);
  }

  public void Bounds(double[] U1, double[] U2, double[] V1, double[] V2) {
    OccJavaJNI.Geom_BezierSurface_Bounds(swigCPtr, this, U1, U2, V1, V2);
  }

  public GeomAbs_Shape Continuity() {
    return GeomAbs_Shape.swigToEnum(OccJavaJNI.Geom_BezierSurface_Continuity(swigCPtr, this));
  }

  public void D0(double U, double V, double[] P) {
    OccJavaJNI.Geom_BezierSurface_D0(swigCPtr, this, U, V, P);
  }

  public void D1(double U, double V, double[] P, double[] D1U, double[] D1V) {
    OccJavaJNI.Geom_BezierSurface_D1(swigCPtr, this, U, V, P, D1U, D1V);
  }

  public void D2(double U, double V, double[] P, double[] D1U, double[] D1V, double[] D2U, double[] D2V, double[] D2UV) {
    OccJavaJNI.Geom_BezierSurface_D2(swigCPtr, this, U, V, P, D1U, D1V, D2U, D2V, D2UV);
  }

  public void D3(double U, double V, double[] P, double[] D1U, double[] D1V, double[] D2U, double[] D2V, double[] D2UV, double[] D3U, double[] D3V, double[] D3UUV, double[] D3UVV) {
    OccJavaJNI.Geom_BezierSurface_D3(swigCPtr, this, U, V, P, D1U, D1V, D2U, D2V, D2UV, D3U, D3V, D3UUV, D3UVV);
  }

  public double[] DN(double U, double V, int Nu, int Nv) {
	return OccJavaJNI.Geom_BezierSurface_DN(swigCPtr, this, U, V, Nu, Nv);
}

  public int NbUPoles() {
    return OccJavaJNI.Geom_BezierSurface_NbUPoles(swigCPtr, this);
  }

  public int NbVPoles() {
    return OccJavaJNI.Geom_BezierSurface_NbVPoles(swigCPtr, this);
  }

  public double[] Pole(int UIndex, int VIndex) {
	return OccJavaJNI.Geom_BezierSurface_Pole(swigCPtr, this, UIndex, VIndex);
}

  public void Poles(TColgp_Array2OfPnt P) {
    OccJavaJNI.Geom_BezierSurface_Poles(swigCPtr, this, TColgp_Array2OfPnt.getCPtr(P), P);
  }

  public int UDegree() {
    return OccJavaJNI.Geom_BezierSurface_UDegree(swigCPtr, this);
  }

  public Geom_Curve UIso(double U) {
    return new Geom_Curve(OccJavaJNI.Geom_BezierSurface_UIso(swigCPtr, this, U), true);
  }

  public int VDegree() {
    return OccJavaJNI.Geom_BezierSurface_VDegree(swigCPtr, this);
  }

  public Geom_Curve VIso(double V) {
    return new Geom_Curve(OccJavaJNI.Geom_BezierSurface_VIso(swigCPtr, this, V), true);
  }

  public double Weight(int UIndex, int VIndex) {
    return OccJavaJNI.Geom_BezierSurface_Weight(swigCPtr, this, UIndex, VIndex);
  }

  public void Weights(TColStd_Array2OfReal W) {
    OccJavaJNI.Geom_BezierSurface_Weights(swigCPtr, this, TColStd_Array2OfReal.getCPtr(W), W);
  }

  public boolean IsUClosed() {
	return OccJavaJNI.Geom_BezierSurface_IsUClosed(swigCPtr, this);
}

  public boolean IsVClosed() {
	return OccJavaJNI.Geom_BezierSurface_IsVClosed(swigCPtr, this);
}

  public boolean IsCNu(int N) {
	return OccJavaJNI.Geom_BezierSurface_IsCNu(swigCPtr, this, N);
}

  public boolean IsCNv(int N) {
	return OccJavaJNI.Geom_BezierSurface_IsCNv(swigCPtr, this, N);
}

  public boolean IsUPeriodic() {
	return OccJavaJNI.Geom_BezierSurface_IsUPeriodic(swigCPtr, this);
}

  public boolean IsVPeriodic() {
	return OccJavaJNI.Geom_BezierSurface_IsVPeriodic(swigCPtr, this);
}

  public boolean IsURational() {
	return OccJavaJNI.Geom_BezierSurface_IsURational(swigCPtr, this);
}

  public boolean IsVRational() {
	return OccJavaJNI.Geom_BezierSurface_IsVRational(swigCPtr, this);
}

  public void Transform(GP_Trsf T) {
    OccJavaJNI.Geom_BezierSurface_Transform(swigCPtr, this, GP_Trsf.getCPtr(T), T);
  }

  public int MaxDegree() {
    return OccJavaJNI.Geom_BezierSurface_MaxDegree(swigCPtr, this);
  }

  public void Resolution(double Tolerance3D, double[] UTolerance, double[] VTolerance) {
    OccJavaJNI.Geom_BezierSurface_Resolution(swigCPtr, this, Tolerance3D, UTolerance, VTolerance);
  }

}