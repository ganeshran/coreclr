// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly test_21_try {}

.class TestClass{

//+desc: leave from inner try{} to outside
.method public static void test_21_try(){
.locals(int32 locInt1)

//init locals
  ldc.i4.1
  stloc locInt1


// print a message
  ldstr      "Test is running"
  call       void [mscorlib]System.Console::WriteLine(class System.String)  
//exception handler goes here
lbl_21_startTry:
	lbl_21_startTry1:

	  leave lbl_21_exitSEH	
	lbl_21_endTry1:
	lbl_21_startCatch1:

	  leave lbl_21_exitSEH1
	lbl_21_endCatch1:
	lbl_21_exitSEH1:

  leave lbl_21_exitSEH	
lbl_21_endTry:
lbl_21_startCatch:

  leave lbl_21_exitSEH
lbl_21_endCatch:
lbl_21_exitSEH:

.try   lbl_21_startTry1 to  lbl_21_endTry1 catch ['mscorlib']System.Exception handler lbl_21_startCatch1 to  lbl_21_endCatch1
.try   lbl_21_startTry to  lbl_21_endTry catch ['mscorlib']System.Exception handler lbl_21_startCatch to  lbl_21_endCatch

  ret


}




.method public static int32 Main(class ['mscorlib']System.String[] arg)
{
    call void TestClass::test_21_try()
    .entrypoint
    ldc.i4 100
    ret
}


  .method public specialname rtspecialname instance void .ctor() il managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void ['mscorlib']System.Object::.ctor()
    IL_0006:  ret
  } // end of method 'TestClass::.ctor'

}
