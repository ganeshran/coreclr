// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly b05617
{
}
.class _simple {

.method static int32 main(class System.String[]) {
.entrypoint
.maxstack	100

.locals (int32)
ldc.i4 1
stloc.0

 ldc.i4.2
 ldc.i4.2
 ldc.r4 2.564783e+007
 conv.u1
 ldc.i4.8
 conv.r4
 ldc.r4 6.558334e+008
 mul
 conv.i1
 ldc.i4.M1
 ldloc 0
 add
 mul
 sub
 sub
 or
ldc.i8 4294967086
conv.u4
sub

ldc.i4 100
add
ret
}
}