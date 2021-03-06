/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.jcae.opencascade.jni;

public class BRepFill_PipeShell {
  private long swigCPtr;
  protected boolean swigCMemOwn;

  public BRepFill_PipeShell(long cPtr, boolean cMemoryOwn) {
    swigCMemOwn = cMemoryOwn;
    swigCPtr = cPtr;
  }

  public static long getCPtr(BRepFill_PipeShell obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        OccJavaJNI.delete_BRepFill_PipeShell(swigCPtr);
      }
      swigCPtr = 0;
    }
  }

  public BRepFill_PipeShell(TopoDS_Wire Spine) {
    this(OccJavaJNI.new_BRepFill_PipeShell(TopoDS_Wire.getCPtr(Spine), Spine), true);
  }

  public void Set(boolean Frenet) {
    OccJavaJNI.BRepFill_PipeShell_Set__SWIG_0(swigCPtr, this, Frenet);
  }

  public void Set() {
    OccJavaJNI.BRepFill_PipeShell_Set__SWIG_1(swigCPtr, this);
  }

  public void Set(double[] Axe) {
    OccJavaJNI.BRepFill_PipeShell_Set__SWIG_2(swigCPtr, this, Axe);
  }

  public boolean Set(TopoDS_Shape SpineSupport) {
	return OccJavaJNI.BRepFill_PipeShell_Set__SWIG_3(swigCPtr, this, TopoDS_Shape.getCPtr(SpineSupport), SpineSupport);
}

  public void Set(TopoDS_Wire AuxiliarySpine, boolean CurvilinearEquivalence, boolean KeepContact) {
    OccJavaJNI.BRepFill_PipeShell_Set__SWIG_4(swigCPtr, this, TopoDS_Wire.getCPtr(AuxiliarySpine), AuxiliarySpine, CurvilinearEquivalence, KeepContact);
  }

  public void Set(TopoDS_Wire AuxiliarySpine, boolean CurvilinearEquivalence) {
    OccJavaJNI.BRepFill_PipeShell_Set__SWIG_5(swigCPtr, this, TopoDS_Wire.getCPtr(AuxiliarySpine), AuxiliarySpine, CurvilinearEquivalence);
  }

  public void Set(TopoDS_Wire AuxiliarySpine) {
    OccJavaJNI.BRepFill_PipeShell_Set__SWIG_6(swigCPtr, this, TopoDS_Wire.getCPtr(AuxiliarySpine), AuxiliarySpine);
  }

  public void Add(TopoDS_Shape Profile, boolean WithContact, boolean WithCorrection) {
    OccJavaJNI.BRepFill_PipeShell_Add__SWIG_0(swigCPtr, this, TopoDS_Shape.getCPtr(Profile), Profile, WithContact, WithCorrection);
  }

  public void Add(TopoDS_Shape Profile, boolean WithContact) {
    OccJavaJNI.BRepFill_PipeShell_Add__SWIG_1(swigCPtr, this, TopoDS_Shape.getCPtr(Profile), Profile, WithContact);
  }

  public void Add(TopoDS_Shape Profile) {
    OccJavaJNI.BRepFill_PipeShell_Add__SWIG_2(swigCPtr, this, TopoDS_Shape.getCPtr(Profile), Profile);
  }

  public void Add(TopoDS_Shape Profile, TopoDS_Vertex Location, boolean WithContact, boolean WithCorrection) {
    OccJavaJNI.BRepFill_PipeShell_Add__SWIG_3(swigCPtr, this, TopoDS_Shape.getCPtr(Profile), Profile, TopoDS_Vertex.getCPtr(Location), Location, WithContact, WithCorrection);
  }

  public void Add(TopoDS_Shape Profile, TopoDS_Vertex Location, boolean WithContact) {
    OccJavaJNI.BRepFill_PipeShell_Add__SWIG_4(swigCPtr, this, TopoDS_Shape.getCPtr(Profile), Profile, TopoDS_Vertex.getCPtr(Location), Location, WithContact);
  }

  public void Add(TopoDS_Shape Profile, TopoDS_Vertex Location) {
    OccJavaJNI.BRepFill_PipeShell_Add__SWIG_5(swigCPtr, this, TopoDS_Shape.getCPtr(Profile), Profile, TopoDS_Vertex.getCPtr(Location), Location);
  }

  public void Delete(TopoDS_Shape Profile) {
    OccJavaJNI.BRepFill_PipeShell_Delete(swigCPtr, this, TopoDS_Shape.getCPtr(Profile), Profile);
  }

  public boolean IsReady() {
	return OccJavaJNI.BRepFill_PipeShell_IsReady(swigCPtr, this);
}

  public GeomFill_PipeError GetStatus() {
    return GeomFill_PipeError.swigToEnum(OccJavaJNI.BRepFill_PipeShell_GetStatus(swigCPtr, this));
  }

  public void SetTolerance(double Tol3d, double BoundTol, double TolAngular) {
    OccJavaJNI.BRepFill_PipeShell_SetTolerance__SWIG_0(swigCPtr, this, Tol3d, BoundTol, TolAngular);
  }

  public void SetTolerance(double Tol3d, double BoundTol) {
    OccJavaJNI.BRepFill_PipeShell_SetTolerance__SWIG_1(swigCPtr, this, Tol3d, BoundTol);
  }

  public void SetTolerance(double Tol3d) {
    OccJavaJNI.BRepFill_PipeShell_SetTolerance__SWIG_2(swigCPtr, this, Tol3d);
  }

  public void SetTolerance() {
    OccJavaJNI.BRepFill_PipeShell_SetTolerance__SWIG_3(swigCPtr, this);
  }

  public void SetTransition(BRepFill_TransitionStyle Mode, double Angmin, double Angmax) {
    OccJavaJNI.BRepFill_PipeShell_SetTransition__SWIG_0(swigCPtr, this, Mode.swigValue(), Angmin, Angmax);
  }

  public void SetTransition(BRepFill_TransitionStyle Mode, double Angmin) {
    OccJavaJNI.BRepFill_PipeShell_SetTransition__SWIG_1(swigCPtr, this, Mode.swigValue(), Angmin);
  }

  public void SetTransition(BRepFill_TransitionStyle Mode) {
    OccJavaJNI.BRepFill_PipeShell_SetTransition__SWIG_2(swigCPtr, this, Mode.swigValue());
  }

  public void SetTransition() {
    OccJavaJNI.BRepFill_PipeShell_SetTransition__SWIG_3(swigCPtr, this);
  }

  public void Simulate(int NumberOfSection, TopoDS_Shape[] Sections) {
    OccJavaJNI.BRepFill_PipeShell_Simulate(swigCPtr, this, NumberOfSection, TopoDS_Shape.cArrayUnwrap(Sections));
  }

  public boolean Build() {
	return OccJavaJNI.BRepFill_PipeShell_Build(swigCPtr, this);
}

  public boolean MakeSolid() {
	return OccJavaJNI.BRepFill_PipeShell_MakeSolid(swigCPtr, this);
}

  public TopoDS_Shape Shape() {
    long cPtr = OccJavaJNI.BRepFill_PipeShell_Shape(swigCPtr, this);
    return (TopoDS_Shape)TopoDS_Shape.create(cPtr);
}

  public TopoDS_Shape FirstShape() {
    long cPtr = OccJavaJNI.BRepFill_PipeShell_FirstShape(swigCPtr, this);
    return (TopoDS_Shape)TopoDS_Shape.create(cPtr);
}

  public TopoDS_Shape LastShape() {
    long cPtr = OccJavaJNI.BRepFill_PipeShell_LastShape(swigCPtr, this);
    return (TopoDS_Shape)TopoDS_Shape.create(cPtr);
}

  public void Generated(TopoDS_Shape S, TopoDS_Shape[] L) {
    OccJavaJNI.BRepFill_PipeShell_Generated(swigCPtr, this, TopoDS_Shape.getCPtr(S), S, TopoDS_Shape.cArrayUnwrap(L));
  }

}
