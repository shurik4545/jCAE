/*
 * Project Info:  http://jcae.sourceforge.net
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 *
 *
 */
 
 /**
 * Handle_TColgp_HArray1OfBoolean
 */
 %{#include <TColStd_HArray1OfBoolean.hxx>%}
 class Handle_TColStd_HArray1OfBoolean
{
	Handle_TColStd_HArray1OfBoolean()=0;
};

%typemap(jni) Handle_TColStd_HArray1OfBoolean, const Handle_TColStd_HArray1OfBoolean&   "jbooleanArray"
%typemap(jtype) Handle_TColStd_HArray1OfBoolean, const Handle_TColStd_HArray1OfBoolean& "boolean[]"
%typemap(jstype) Handle_TColStd_HArray1OfBoolean, const Handle_TColStd_HArray1OfBoolean& "boolean[]"
%typemap(javain) Handle_TColStd_HArray1OfBoolean, const Handle_TColStd_HArray1OfBoolean& "$javainput"

%typemap(in) Handle_TColStd_HArray1OfBoolean, const Handle_TColStd_HArray1OfBoolean&, Handle_TColStd_HArray1OfBoolean&
{
	int i,j;
	if (!$input)
	{
		SWIG_JavaThrowException(jenv, SWIG_JavaNullPointerException, "null array");
		return $null;
	}
	jsize sz = JCALL1(GetArrayLength, jenv, $input);
	jboolean* jarr = JCALL2(GetBooleanArrayElements, jenv, $input, NULL);
	
	if (!jarr)
	{
		//sinn? - modulo test 3
		SWIG_JavaThrowException(jenv, SWIG_JavaNullPointerException, "null array (2)");
		return $null;
	}
	TColStd_HArray1OfBoolean *a = new TColStd_HArray1OfBoolean(1,sz);
	for (i=1,j=0; i<=sz; i++,j++) {
	  a->SetValue(i,Standard_Boolean(jarr[j]));
	}
	
	Handle_TColStd_HArray1OfBoolean *c = new Handle_TColStd_HArray1OfBoolean(a);
	$1 = *(Handle_TColStd_HArray1OfBoolean **)&c;
	
}

%typemap(freearg) TColgp_Array1OfBoolean, const TColgp_Array1OfBoolean& 
{
	delete $1;
}
 
 /**
 * Handle_TColgp_HArray1OfPnt
 */
%{#include <TColgp_HArray1OfPnt.hxx>%}
/*class TColgp_HArray1OfPnt {

  public:
  TColgp_HArray1OfPnt(const Standard_Integer Low,const Standard_Integer Up);
  void SetValue(const Standard_Integer Index,const gp_Pnt& Value);
};*//*
%rename(TColgp_HArray1OfPnt) Handle_TColgp_HArray1OfPnt;
 */
class Handle_TColgp_HArray1OfPnt
{
	Handle_TColgp_HArray1OfPnt()=0;
};

%typemap(jni) Handle_TColgp_HArray1OfPnt, const Handle_TColgp_HArray1OfPnt&   "jdoubleArray"
%typemap(jtype) Handle_TColgp_HArray1OfPnt, const Handle_TColgp_HArray1OfPnt& "double[]"
%typemap(jstype) Handle_TColgp_HArray1OfPnt, const Handle_TColgp_HArray1OfPnt& "double[]"
%typemap(javain)Handle_TColgp_HArray1OfPnt, const Handle_TColgp_HArray1OfPnt& "$javainput"
%typemap(in) Handle_TColgp_HArray1OfPnt, const  Handle_TColgp_HArray1OfPnt, const Handle_TColgp_HArray1OfPnt&, Handle_TColgp_HArray1OfPnt&
{
	int i,j;
	if (!$input)
	{
		SWIG_JavaThrowException(jenv, SWIG_JavaNullPointerException, "null array");
		return $null;
	}
	jsize sz = JCALL1(GetArrayLength, jenv, $input);
	jdouble* jarr = JCALL2(GetDoubleArrayElements, jenv, $input, NULL);
	
	if (!jarr)
	{
		//sinn? - modulo test 3
		SWIG_JavaThrowException(jenv, SWIG_JavaNullPointerException, "null array (2)");
		return $null;
	}
	//Handle(TColgp_HArray1OfPnt) b = new TColgp_HArray1OfPnt(1,sz/3);
	//TODO: this is a leak!
	TColgp_HArray1OfPnt *a = new TColgp_HArray1OfPnt(1,sz/3);
	//Handle(TColgp_HArray1OfPnt) a = new TColgp_HArray1OfPnt(1,sz/3);
	
	for (i=1,j=0; i<=sz/3; i++,j=j+3) {
	  a->SetValue(i,gp_Pnt(jarr[j],jarr[j+1],jarr[j+2]));
	}
	
	Handle_TColgp_HArray1OfPnt *c = new Handle_TColgp_HArray1OfPnt(a);
	$1 = *(Handle_TColgp_HArray1OfPnt **)&c;
	
	/*
	
	arg1 = *(TColgp_HArray1OfPnt **)&jarg1;
	
	TColgp_HArray1OfPnt $1 = a;*/
	//Handle_TColgp_HArray1OfPnt $1 = Handle(a);
	
}

/**
 * TColgp_Array1OfVec
 */
%{#include <TColgp_Array1OfVec.hxx>%}
%typemap(jni) TColgp_Array1OfVec, const TColgp_Array1OfVec&   "jdoubleArray"
%typemap(jtype) TColgp_Array1OfVec, const TColgp_Array1OfVec& "double[]"
%typemap(jstype) TColgp_Array1OfVec, const TColgp_Array1OfVec& "double[]"
%typemap(javain)TColgp_Array1OfVec, const TColgp_Array1OfVec& "$javainput"

%typemap(in) TColgp_Array1OfVec, const TColgp_Array1OfVec&, TColgp_Array1OfVec&
{
	int i,j;
	if (!$input)
	{
		SWIG_JavaThrowException(jenv, SWIG_JavaNullPointerException, "null array");
		return $null;
	}
	jsize sz = JCALL1(GetArrayLength, jenv, $input);
	jdouble* jarr = JCALL2(GetDoubleArrayElements, jenv, $input, NULL);
	
	if (!jarr)
	{
		//sinn? - modulo test 3
		SWIG_JavaThrowException(jenv, SWIG_JavaNullPointerException, "null array (2)");
		return $null;
	}
	$1 = new TColgp_Array1OfVec(1,sz/3);
	for (i=1,j=0; i<=sz/3; i++,j=j+3) {
	  $1->SetValue(i,gp_Vec(gp_Dir(jarr[j],jarr[j+1],jarr[j+2])));
	}
	
}

%typemap(freearg) TColgp_Array1OfVec, const TColgp_Array1OfVec& 
{
	delete $1;
}

 
/**
 * TColgp_Array1OfPnt
 */
%{#include <TColgp_Array1OfPnt.hxx>%}
%typemap(jni) TColgp_Array1OfPnt, const TColgp_Array1OfPnt&, TColgp_Array1OfPnt&   "jdoubleArray"
%typemap(jtype) TColgp_Array1OfPnt, const TColgp_Array1OfPnt&, TColgp_Array1OfPnt& "double[]"
%typemap(jstype) TColgp_Array1OfPnt, const TColgp_Array1OfPnt&, TColgp_Array1OfPnt& "double[]"
%typemap(javain)TColgp_Array1OfPnt, const TColgp_Array1OfPnt&, TColgp_Array1OfPnt& "$javainput"
%typemap(javaout)TColgp_Array1OfPnt, const TColgp_Array1OfPnt&, TColgp_Array1OfPnt&
{
	return $jnicall;
}

%typemap(out) TColgp_Array1OfPnt&
{
    const TColgp_Array1OfPnt &Nodes = *$1;
    int i,j,s;
    s=Nodes.Length()*3;
    jdouble * ns=(jdouble *)malloc(sizeof(jdouble)*s);
    for(j=0,i=Nodes.Lower();i<=Nodes.Upper();j+=3,i++)
    {
        ns[j]=Nodes(i).X();
        ns[j+1]=Nodes(i).Y();
        ns[j+2]=Nodes(i).Z();
    }
    jdoubleArray jarray=JCALL1(NewDoubleArray, jenv, s);
	JCALL4(SetDoubleArrayRegion, jenv, jarray, 0, s, ns);
    free(ns);
    $result=jarray;
}

/*
 * @author Jens Schmidt
 *
 */
%typemap(in) TColgp_Array1OfPnt, const TColgp_Array1OfPnt&, TColgp_Array1OfPnt& /*(jdouble *jarr, jsize sz)*/
{
	int i,j;
	if (!$input)
	{
		SWIG_JavaThrowException(jenv, SWIG_JavaNullPointerException, "null array");
		return $null;
	}
	jsize sz = JCALL1(GetArrayLength, jenv, $input);
	jdouble* jarr = JCALL2(GetDoubleArrayElements, jenv, $input, NULL);
	
	if (!jarr)
	{
		//sinn? - modulo test 3
		SWIG_JavaThrowException(jenv, SWIG_JavaNullPointerException, "null array (2)");
		return $null;
	}
	$1 = new TColgp_Array1OfPnt(1,sz/3);
	for (i=1,j=0; i<=sz/3; i++,j=j+3) {
	  $1->SetValue(i,gp_Pnt(jarr[j],jarr[j+1],jarr[j+2]));
	}
	
}

%typemap(freearg) TColgp_Array1OfPnt, const TColgp_Array1OfPnt&, TColgp_Array1OfPnt& 
{
	delete $1;
}

%{#include <TColgp_Array2OfPnt.hxx>%}

class TColgp_Array2OfPnt
{
	public:
	TColgp_Array2OfPnt(const Standard_Integer R1,const Standard_Integer R2,const Standard_Integer C1,const Standard_Integer C2);
	TColgp_Array2OfPnt(const gp_Pnt& Item,const Standard_Integer R1,const Standard_Integer R2,const Standard_Integer C1,const Standard_Integer C2);
	void Init(const gp_Pnt& V);
	void Destroy();
	Standard_Integer ColLength() const;
	Standard_Integer RowLength() const;
	Standard_Integer LowerCol() const;
	Standard_Integer LowerRow() const;
	Standard_Integer UpperCol() const;
	Standard_Integer UpperRow() const;
	void SetValue(const Standard_Integer Row,const Standard_Integer Col,const gp_Pnt& Value);
	const gp_Pnt& Value(const Standard_Integer Row,const Standard_Integer Col) const;
	gp_Pnt& ChangeValue(const Standard_Integer Row,const Standard_Integer Col);
};

/**
 * TColgp_Array1OfPnt2d
 */
%{#include <TColgp_Array1OfPnt2d.hxx>%}
%typemap(jni) TColgp_Array1OfPnt2d&  "jdoubleArray"
%typemap(jtype) TColgp_Array1OfPnt2d& "double[]"
%typemap(jstype) TColgp_Array1OfPnt2d& "double[]"
%typemap(javaout) TColgp_Array1OfPnt2d&
{
	return $jnicall;
}

%typemap(out) TColgp_Array1OfPnt2d&
{
    const TColgp_Array1OfPnt2d &Nodes2d = *$1;
    int i,j,s;
    s=Nodes2d.Length()*2;
    jdouble * ns=(jdouble *)malloc(sizeof(jdouble)*s);
    for(j=0,i=Nodes2d.Lower();i<=Nodes2d.Upper();j+=2,i++)
    {
        ns[j]=Nodes2d(i).X();
        ns[j+1]=Nodes2d(i).Y();
    }
    jdoubleArray jarray=JCALL1(NewDoubleArray, jenv, s);
	JCALL4(SetDoubleArrayRegion, jenv, jarray, 0, s, ns);
    free(ns);
    $result=jarray;
}

%{#include <TColStd_Array1OfInteger.hxx>%}
%typemap(jni) TColStd_Array1OfInteger, const TColStd_Array1OfInteger&, TColStd_Array1OfInteger&  "jintArray"
%typemap(jtype) TColStd_Array1OfInteger, const TColStd_Array1OfInteger&, TColStd_Array1OfInteger& "int[]"
%typemap(jstype) TColStd_Array1OfInteger, const TColStd_Array1OfInteger&, TColStd_Array1OfInteger& "int[]"
%typemap(javain) TColStd_Array1OfInteger, const TColStd_Array1OfInteger&, TColStd_Array1OfInteger& "$javainput"
%typemap(javaout) TColStd_Array1OfInteger, const TColStd_Array1OfInteger&, TColStd_Array1OfInteger&
{
	return $jnicall;
}

%typemap(out) TColStd_Array1OfInteger, const TColStd_Array1OfInteger&, TColStd_Array1OfInteger&
{
    
    const TColStd_Array1OfInteger &Integers = *$1;
    int i,j,s;
    s=Integers.Length();
    jint* ns=(jint*)malloc(sizeof(jint)*s);
    for(j=0,i=Integers.Lower();i<=Integers.Upper();j+=1,i++)
    {
		ns[j]=Integers(i);
    }
    jintArray jarray=JCALL1(NewIntArray, jenv, s);
    JCALL4(SetIntArrayRegion, jenv, jarray, 0, s, ns);
    free(ns);
    $result=jarray;
}

%typemap(in) TColStd_Array1OfInteger, const TColStd_Array1OfInteger&, TColStd_Array1OfInteger&
{
	int i,j;
	if (!$input)
	{
		SWIG_JavaThrowException(jenv, SWIG_JavaNullPointerException, "null array");
		return $null;
	}
	jsize sz = JCALL1(GetArrayLength, jenv, $input);
	jint* jarr = JCALL2(GetIntArrayElements, jenv, $input, NULL);

	$1 = new TColStd_Array1OfInteger(1,sz);
	for (i=1,j=0; i<=sz; i++,j++) {
	  $1->SetValue(i,Standard_Integer(jarr[j]));
	}
	
}

%typemap(freearg) TColStd_Array1OfInteger, const TColStd_Array1OfInteger&, TColStd_Array1OfInteger&
{
	delete $1;
}


/**
 * TColStd_Array1OfReal
 */
%{#include <TColStd_Array1OfReal.hxx>%}
%typemap(jni) TColStd_Array1OfReal, const TColStd_Array1OfReal&, TColStd_Array1OfReal&  "jdoubleArray"
%typemap(jtype) TColStd_Array1OfReal, const TColStd_Array1OfReal&, TColStd_Array1OfReal& "double[]"
%typemap(jstype) TColStd_Array1OfReal, const TColStd_Array1OfReal&, TColStd_Array1OfReal& "double[]"
%typemap(javain) TColStd_Array1OfReal, const TColStd_Array1OfReal&, TColStd_Array1OfReal& "$javainput"
%typemap(javaout) TColStd_Array1OfReal, const TColStd_Array1OfReal&, TColStd_Array1OfReal&
{
	return $jnicall;
}

%typemap(out) TColStd_Array1OfReal, const TColStd_Array1OfReal&, TColStd_Array1OfReal&
{
   
	const TColgp_Array1OfReal &Reals = *$1;
    int i,j,s;
    s=Reals.Length();
    jdouble * ns=(jdouble *)malloc(sizeof(jdouble)*s);
    for(j=0,i=Reals.Lower();i<=Reals.Upper();j+=1,i++)
    {
		ns[j]=Reals(i);
    }
    jdoubleArray jarray=JCALL1(NewDoubleArray, jenv, s);
	JCALL4(SetDoubleArrayRegion, jenv, jarray, 0, s, ns);
    free(ns);
    $result=jarray;
}

%typemap(in) TColStd_Array1OfReal, const TColStd_Array1OfReal&, TColStd_Array1OfReal&
{
	int i,j;
	if (!$input)
	{
		SWIG_JavaThrowException(jenv, SWIG_JavaNullPointerException, "null array");
		return $null;
	}
	jsize sz = JCALL1(GetArrayLength, jenv, $input);
	jdouble* jarr = JCALL2(GetDoubleArrayElements, jenv, $input, NULL);

	$1 = new TColStd_Array1OfReal(1,sz);
	for (i=1,j=0; i<=sz; i++,j++) {
	  $1->SetValue(i,Standard_Real(jarr[j]));
	}
	
}

%typemap(freearg) TColStd_Array1OfReal, const TColStd_Array1OfReal&, TColStd_Array1OfReal&
{
	delete $1;
}

%{#include <TColStd_Array2OfReal.hxx>%}

class TColStd_Array2OfReal
{
	public:
	TColStd_Array2OfReal(const Standard_Integer R1,const Standard_Integer R2,const Standard_Integer C1,const Standard_Integer C2);
	TColStd_Array2OfReal(const Standard_Real Item,const Standard_Integer R1,const Standard_Integer R2,const Standard_Integer C1,const Standard_Integer C2);
	void Init(const Standard_Real V);
	void Destroy();
	Standard_Integer ColLength() const;
	Standard_Integer RowLength() const;
	Standard_Integer LowerCol() const;
	Standard_Integer LowerRow() const;
	Standard_Integer UpperCol() const;
	Standard_Integer UpperRow() const;
	void SetValue(const Standard_Integer Row,const Standard_Integer Col,const Standard_Real Value);
	const Standard_Real Value(const Standard_Integer Row,const Standard_Integer Col) const;
	Standard_Real ChangeValue(const Standard_Integer Row,const Standard_Integer Col);
};
