// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly 'SignExpand'// as "SignExpand.exe" 
{
  
}
.class public C
{
  .method public static int32 main() 
  {
    .entrypoint
    .maxstack  10

    .locals(int8[] x)

    ldc.i4 20
    newarr int8
    stloc x
 
    ldloc x
    ldc.i4 0
    ldc.i4 -20
    stelem.i1

    ldloc x
    ldc.i4 0
    ldelem.i1
    call void [mscorlib]System.Console::WriteLine(int32)

    ldloc x
    ldc.i4 0
    ldelema int8
    ldind.i1
    call void [mscorlib]System.Console::WriteLine(int32)

    ldloc x
    ldc.i4 0
    ldelema int8
    ldobj int8
    call void [mscorlib]System.Console::WriteLine(int32)
    ldc.i4 100
    ret
  }

}      

