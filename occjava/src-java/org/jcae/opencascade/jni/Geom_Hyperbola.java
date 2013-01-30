/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.jcae.opencascade.jni;

public class Geom_Hyperbola extends Geom_Conic {
  private long swigCPtr;

  public Geom_Hyperbola(long cPtr, boolean cMemoryOwn) {
    super(OccJavaJNI.Geom_Hyperbola_SWIGUpcast(cPtr), cMemoryOwn);
    swigCPtr = cPtr;
  }

  public static long getCPtr(Geom_Hyperbola obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        OccJavaJNI.delete_Geom_Hyperbola(swigCPtr);
      }
      swigCPtr = 0;
    }
    super.delete();
  }

  public Geom_Hyperbola(GP_Hypr H) {
    this(OccJavaJNI.new_Geom_Hyperbola__SWIG_0(GP_Hypr.getCPtr(H), H), true);
  }

  public Geom_Hyperbola(double[] A2, double MajorRadius, double MinorRadius) {
    this(OccJavaJNI.new_Geom_Hyperbola__SWIG_1(A2, MajorRadius, MinorRadius), true);
  }

  public void SetHypr(GP_Hypr H) {
    OccJavaJNI.Geom_Hyperbola_SetHypr(swigCPtr, this, GP_Hypr.getCPtr(H), H);
  }

  public void SetMajorRadius(double MajorRadius) {
    OccJavaJNI.Geom_Hyperbola_SetMajorRadius(swigCPtr, this, MajorRadius);
  }

  public void SetMinorRadius(double MinorRadius) {
    OccJavaJNI.Geom_Hyperbola_SetMinorRadius(swigCPtr, this, MinorRadius);
  }

  public GP_Hypr Hypr() {
    return new GP_Hypr(OccJavaJNI.Geom_Hyperbola_Hypr(swigCPtr, this), true);
  }

  public double ReversedParameter(double U) {
    return OccJavaJNI.Geom_Hyperbola_ReversedParameter(swigCPtr, this, U);
  }

  public double FirstParameter() {
    return OccJavaJNI.Geom_Hyperbola_FirstParameter(swigCPtr, this);
  }

  public double LastParameter() {
    return OccJavaJNI.Geom_Hyperbola_LastParameter(swigCPtr, this);
  }

  public boolean IsClosed() {
	return OccJavaJNI.Geom_Hyperbola_IsClosed(swigCPtr, this);
}

  public boolean IsPeriodic() {
	return OccJavaJNI.Geom_Hyperbola_IsPeriodic(swigCPtr, this);
}

  public double[] Asymptote1() {
	return OccJavaJNI.Geom_Hyperbola_Asymptote1(swigCPtr, this);
}

  public double[] Asymptote2() {
	return OccJavaJNI.Geom_Hyperbola_Asymptote2(swigCPtr, this);
}

  public GP_Hypr ConjugateBranch1() {
    return new GP_Hypr(OccJavaJNI.Geom_Hyperbola_ConjugateBranch1(swigCPtr, this), true);
  }

  public GP_Hypr ConjugateBranch2() {
    return new GP_Hypr(OccJavaJNI.Geom_Hyperbola_ConjugateBranch2(swigCPtr, this), true);
  }

  public double[] Directrix1() {
	return OccJavaJNI.Geom_Hyperbola_Directrix1(swigCPtr, this);
}

  public double[] Directrix2() {
	return OccJavaJNI.Geom_Hyperbola_Directrix2(swigCPtr, this);
}

  public double Eccentricity() {
    return OccJavaJNI.Geom_Hyperbola_Eccentricity(swigCPtr, this);
  }

  public double Focal() {
    return OccJavaJNI.Geom_Hyperbola_Focal(swigCPtr, this);
  }

  public double[] Focus1() {
	return OccJavaJNI.Geom_Hyperbola_Focus1(swigCPtr, this);
}

  public double[] Focus2() {
	return OccJavaJNI.Geom_Hyperbola_Focus2(swigCPtr, this);
}

  public double MajorRadius() {
    return OccJavaJNI.Geom_Hyperbola_MajorRadius(swigCPtr, this);
  }

  public double MinorRadius() {
    return OccJavaJNI.Geom_Hyperbola_MinorRadius(swigCPtr, this);
  }

  public GP_Hypr OtherBranch() {
    return new GP_Hypr(OccJavaJNI.Geom_Hyperbola_OtherBranch(swigCPtr, this), true);
  }

  public double Parameter() {
    return OccJavaJNI.Geom_Hyperbola_Parameter(swigCPtr, this);
  }

  public void D0(double U, double[] P) {
    OccJavaJNI.Geom_Hyperbola_D0(swigCPtr, this, U, P);
  }

  public void D1(double U, double[] P, double[] V1) {
    OccJavaJNI.Geom_Hyperbola_D1(swigCPtr, this, U, P, V1);
  }

  public void D2(double U, double[] P, double[] V1, double[] V2) {
    OccJavaJNI.Geom_Hyperbola_D2(swigCPtr, this, U, P, V1, V2);
  }

  public void D3(double U, double[] P, double[] V1, double[] V2, double[] V3) {
    OccJavaJNI.Geom_Hyperbola_D3(swigCPtr, this, U, P, V1, V2, V3);
  }

  public double[] DN(double U, int N) {
	return OccJavaJNI.Geom_Hyperbola_DN(swigCPtr, this, U, N);
}

  public void Transform(GP_Trsf T) {
    OccJavaJNI.Geom_Hyperbola_Transform(swigCPtr, this, GP_Trsf.getCPtr(T), T);
  }

}