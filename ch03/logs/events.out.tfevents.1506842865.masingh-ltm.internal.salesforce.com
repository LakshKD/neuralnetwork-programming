       �K"	  @<&t�Abrain.Event:2���w:      1�=	G8p<&t�A"�t
N
PlaceholderPlaceholder*
dtype0*
shape: *
_output_shapes
:
P
Placeholder_1Placeholder*
dtype0*
shape: *
_output_shapes
:
Y
weight/initial_valueConst*
valueB
 *����*
dtype0*
_output_shapes
: 
j
weight
VariableV2*
shape: *
dtype0*
_output_shapes
: *
	container *
shared_name 
�
weight/AssignAssignweightweight/initial_value*
use_locking(*
T0*
validate_shape(*
_output_shapes
: *
_class
loc:@weight
[
weight/readIdentityweight*
T0*
_output_shapes
: *
_class
loc:@weight
W
bias/initial_valueConst*
valueB
 *tq�*
dtype0*
_output_shapes
: 
h
bias
VariableV2*
shape: *
dtype0*
_output_shapes
: *
	container *
shared_name 
�
bias/AssignAssignbiasbias/initial_value*
use_locking(*
T0*
validate_shape(*
_output_shapes
: *
_class
	loc:@bias
U
	bias/readIdentitybias*
T0*
_output_shapes
: *
_class
	loc:@bias
G
MulMulPlaceholderweight/read*
T0*
_output_shapes
:
=
AddAddMul	bias/read*
T0*
_output_shapes
:
A
subSubAddPlaceholder_1*
T0*
_output_shapes
:
J
Pow/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
9
PowPowsubPow/y*
T0*
_output_shapes
:
2
RankRankPow*
T0*
_output_shapes
: 
M
range/startConst*
value	B : *
dtype0*
_output_shapes
: 
M
range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
_
rangeRangerange/startRankrange/delta*

Tidx0*#
_output_shapes
:���������
V
SumSumPowrange*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
N
	truediv/yConst*
valueB
 *  B*
dtype0*
_output_shapes
: 
E
truedivRealDivSum	truediv/y*
T0*
_output_shapes
:
_
gradients/ShapeShapetruediv*
T0*
out_type0*#
_output_shapes
:���������
T
gradients/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
[
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
:
h
gradients/truediv_grad/ShapeShapeSum*
T0*
out_type0*#
_output_shapes
:���������
a
gradients/truediv_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
,gradients/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_grad/Shapegradients/truediv_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
g
gradients/truediv_grad/RealDivRealDivgradients/Fill	truediv/y*
T0*
_output_shapes
:
�
gradients/truediv_grad/SumSumgradients/truediv_grad/RealDiv,gradients/truediv_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
gradients/truediv_grad/ReshapeReshapegradients/truediv_grad/Sumgradients/truediv_grad/Shape*
T0*
_output_shapes
:*
Tshape0
I
gradients/truediv_grad/NegNegSum*
T0*
_output_shapes
:
u
 gradients/truediv_grad/RealDiv_1RealDivgradients/truediv_grad/Neg	truediv/y*
T0*
_output_shapes
:
{
 gradients/truediv_grad/RealDiv_2RealDiv gradients/truediv_grad/RealDiv_1	truediv/y*
T0*
_output_shapes
:
v
gradients/truediv_grad/mulMulgradients/Fill gradients/truediv_grad/RealDiv_2*
T0*
_output_shapes
:
�
gradients/truediv_grad/Sum_1Sumgradients/truediv_grad/mul.gradients/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
 gradients/truediv_grad/Reshape_1Reshapegradients/truediv_grad/Sum_1gradients/truediv_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0
s
'gradients/truediv_grad/tuple/group_depsNoOp^gradients/truediv_grad/Reshape!^gradients/truediv_grad/Reshape_1
�
/gradients/truediv_grad/tuple/control_dependencyIdentitygradients/truediv_grad/Reshape(^gradients/truediv_grad/tuple/group_deps*
T0*
_output_shapes
:*1
_class'
%#loc:@gradients/truediv_grad/Reshape
�
1gradients/truediv_grad/tuple/control_dependency_1Identity gradients/truediv_grad/Reshape_1(^gradients/truediv_grad/tuple/group_deps*
T0*
_output_shapes
: *3
_class)
'%loc:@gradients/truediv_grad/Reshape_1
d
gradients/Sum_grad/ShapeShapePow*
T0*
out_type0*#
_output_shapes
:���������
j
gradients/Sum_grad/SizeSizegradients/Sum_grad/Shape*
T0*
out_type0*
_output_shapes
: 
k
gradients/Sum_grad/addAddrangegradients/Sum_grad/Size*
T0*#
_output_shapes
:���������
�
gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*
T0*#
_output_shapes
:���������
p
gradients/Sum_grad/Shape_1Shapegradients/Sum_grad/mod*
T0*
out_type0*
_output_shapes
:
`
gradients/Sum_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
`
gradients/Sum_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*

Tidx0*#
_output_shapes
:���������
_
gradients/Sum_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: 
�
gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*
T0*#
_output_shapes
:���������
�
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*
T0*#
_output_shapes
:���������*
N
^
gradients/Sum_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*
T0*#
_output_shapes
:���������
�
gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*
T0*#
_output_shapes
:���������
�
gradients/Sum_grad/ReshapeReshape/gradients/truediv_grad/tuple/control_dependency gradients/Sum_grad/DynamicStitch*
T0*
_output_shapes
:*
Tshape0
�
gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*
T0*

Tmultiples0*
_output_shapes
:
d
gradients/Pow_grad/ShapeShapesub*
T0*
out_type0*#
_output_shapes
:���������
]
gradients/Pow_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
(gradients/Pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Pow_grad/Shapegradients/Pow_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
`
gradients/Pow_grad/mulMulgradients/Sum_grad/TilePow/y*
T0*
_output_shapes
:
]
gradients/Pow_grad/sub/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
_
gradients/Pow_grad/subSubPow/ygradients/Pow_grad/sub/y*
T0*
_output_shapes
: 
]
gradients/Pow_grad/PowPowsubgradients/Pow_grad/sub*
T0*
_output_shapes
:
r
gradients/Pow_grad/mul_1Mulgradients/Pow_grad/mulgradients/Pow_grad/Pow*
T0*
_output_shapes
:
�
gradients/Pow_grad/SumSumgradients/Pow_grad/mul_1(gradients/Pow_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
gradients/Pow_grad/ReshapeReshapegradients/Pow_grad/Sumgradients/Pow_grad/Shape*
T0*
_output_shapes
:*
Tshape0
a
gradients/Pow_grad/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
k
gradients/Pow_grad/GreaterGreatersubgradients/Pow_grad/Greater/y*
T0*
_output_shapes
:
E
gradients/Pow_grad/LogLogsub*
T0*
_output_shapes
:
R
gradients/Pow_grad/zeros_like	ZerosLikesub*
T0*
_output_shapes
:
�
gradients/Pow_grad/SelectSelectgradients/Pow_grad/Greatergradients/Pow_grad/Loggradients/Pow_grad/zeros_like*
T0*
_output_shapes
:
`
gradients/Pow_grad/mul_2Mulgradients/Sum_grad/TilePow*
T0*
_output_shapes
:
w
gradients/Pow_grad/mul_3Mulgradients/Pow_grad/mul_2gradients/Pow_grad/Select*
T0*
_output_shapes
:
�
gradients/Pow_grad/Sum_1Sumgradients/Pow_grad/mul_3*gradients/Pow_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
gradients/Pow_grad/Reshape_1Reshapegradients/Pow_grad/Sum_1gradients/Pow_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0
g
#gradients/Pow_grad/tuple/group_depsNoOp^gradients/Pow_grad/Reshape^gradients/Pow_grad/Reshape_1
�
+gradients/Pow_grad/tuple/control_dependencyIdentitygradients/Pow_grad/Reshape$^gradients/Pow_grad/tuple/group_deps*
T0*
_output_shapes
:*-
_class#
!loc:@gradients/Pow_grad/Reshape
�
-gradients/Pow_grad/tuple/control_dependency_1Identitygradients/Pow_grad/Reshape_1$^gradients/Pow_grad/tuple/group_deps*
T0*
_output_shapes
: */
_class%
#!loc:@gradients/Pow_grad/Reshape_1
d
gradients/sub_grad/ShapeShapeAdd*
T0*
out_type0*#
_output_shapes
:���������
p
gradients/sub_grad/Shape_1ShapePlaceholder_1*
T0*
out_type0*#
_output_shapes
:���������
�
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/sub_grad/SumSum+gradients/Pow_grad/tuple/control_dependency(gradients/sub_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
_output_shapes
:*
Tshape0
�
gradients/sub_grad/Sum_1Sum+gradients/Pow_grad/tuple/control_dependency*gradients/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_output_shapes
:
�
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0*
_output_shapes
:*
Tshape0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
�
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*
_output_shapes
:*-
_class#
!loc:@gradients/sub_grad/Reshape
�
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*
_output_shapes
:*/
_class%
#!loc:@gradients/sub_grad/Reshape_1
d
gradients/Add_grad/ShapeShapeMul*
T0*
out_type0*#
_output_shapes
:���������
]
gradients/Add_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
(gradients/Add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_grad/Shapegradients/Add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/Add_grad/SumSum+gradients/sub_grad/tuple/control_dependency(gradients/Add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
gradients/Add_grad/ReshapeReshapegradients/Add_grad/Sumgradients/Add_grad/Shape*
T0*
_output_shapes
:*
Tshape0
�
gradients/Add_grad/Sum_1Sum+gradients/sub_grad/tuple/control_dependency*gradients/Add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
gradients/Add_grad/Reshape_1Reshapegradients/Add_grad/Sum_1gradients/Add_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0
g
#gradients/Add_grad/tuple/group_depsNoOp^gradients/Add_grad/Reshape^gradients/Add_grad/Reshape_1
�
+gradients/Add_grad/tuple/control_dependencyIdentitygradients/Add_grad/Reshape$^gradients/Add_grad/tuple/group_deps*
T0*
_output_shapes
:*-
_class#
!loc:@gradients/Add_grad/Reshape
�
-gradients/Add_grad/tuple/control_dependency_1Identitygradients/Add_grad/Reshape_1$^gradients/Add_grad/tuple/group_deps*
T0*
_output_shapes
: */
_class%
#!loc:@gradients/Add_grad/Reshape_1
l
gradients/Mul_grad/ShapeShapePlaceholder*
T0*
out_type0*#
_output_shapes
:���������
]
gradients/Mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
(gradients/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_grad/Shapegradients/Mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
z
gradients/Mul_grad/mulMul+gradients/Add_grad/tuple/control_dependencyweight/read*
T0*
_output_shapes
:
�
gradients/Mul_grad/SumSumgradients/Mul_grad/mul(gradients/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
gradients/Mul_grad/ReshapeReshapegradients/Mul_grad/Sumgradients/Mul_grad/Shape*
T0*
_output_shapes
:*
Tshape0
|
gradients/Mul_grad/mul_1MulPlaceholder+gradients/Add_grad/tuple/control_dependency*
T0*
_output_shapes
:
�
gradients/Mul_grad/Sum_1Sumgradients/Mul_grad/mul_1*gradients/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
gradients/Mul_grad/Reshape_1Reshapegradients/Mul_grad/Sum_1gradients/Mul_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0
g
#gradients/Mul_grad/tuple/group_depsNoOp^gradients/Mul_grad/Reshape^gradients/Mul_grad/Reshape_1
�
+gradients/Mul_grad/tuple/control_dependencyIdentitygradients/Mul_grad/Reshape$^gradients/Mul_grad/tuple/group_deps*
T0*
_output_shapes
:*-
_class#
!loc:@gradients/Mul_grad/Reshape
�
-gradients/Mul_grad/tuple/control_dependency_1Identitygradients/Mul_grad/Reshape_1$^gradients/Mul_grad/tuple/group_deps*
T0*
_output_shapes
: */
_class%
#!loc:@gradients/Mul_grad/Reshape_1
b
GradientDescent/learning_rateConst*
valueB
 *
�#<*
dtype0*
_output_shapes
: 
�
2GradientDescent/update_weight/ApplyGradientDescentApplyGradientDescentweightGradientDescent/learning_rate-gradients/Mul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_output_shapes
: *
_class
loc:@weight
�
0GradientDescent/update_bias/ApplyGradientDescentApplyGradientDescentbiasGradientDescent/learning_rate-gradients/Add_grad/tuple/control_dependency_1*
use_locking( *
T0*
_output_shapes
: *
_class
	loc:@bias

GradientDescentNoOp3^GradientDescent/update_weight/ApplyGradientDescent1^GradientDescent/update_bias/ApplyGradientDescent
*
initNoOp^weight/Assign^bias/Assign"{��f�C      ���	o�s<&t�AJ܇
��
9
Add
x"T
y"T
z"T"
Ttype:
2	
�
ApplyGradientDescent
var"T�

alpha"T

delta"T
out"T�"
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
4
Fill
dims

value"T
output"T"	
Ttype
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
7
FloorMod
x"T
y"T
z"T"
Ttype:
2	
:
Greater
x"T
y"T
z
"
Ttype:
2		
.
Identity

input"T
output"T"	
Ttype
+
Log
x"T
y"T"
Ttype:	
2
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	�
<
Mul
x"T
y"T
z"T"
Ttype:
2	�
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
A
Placeholder
output"dtype"
dtypetype"
shapeshape: 
5
Pow
x"T
y"T
z"T"
Ttype:
	2	
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
)
Rank

input"T

output"	
Ttype
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
5
Sub
x"T
y"T
z"T"
Ttype:
	2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
&
	ZerosLike
x"T
y"T"	
Ttype*1.1.02v1.1.0-rc0-61-g1ec6ed5�t
N
PlaceholderPlaceholder*
dtype0*
shape: *
_output_shapes
:
P
Placeholder_1Placeholder*
dtype0*
shape: *
_output_shapes
:
Y
weight/initial_valueConst*
valueB
 *����*
dtype0*
_output_shapes
: 
j
weight
VariableV2*
shared_name *
shape: *
	container *
dtype0*
_output_shapes
: 
�
weight/AssignAssignweightweight/initial_value*
_class
loc:@weight*
use_locking(*
T0*
_output_shapes
: *
validate_shape(
[
weight/readIdentityweight*
T0*
_class
loc:@weight*
_output_shapes
: 
W
bias/initial_valueConst*
valueB
 *tq�*
dtype0*
_output_shapes
: 
h
bias
VariableV2*
shared_name *
shape: *
	container *
dtype0*
_output_shapes
: 
�
bias/AssignAssignbiasbias/initial_value*
_class
	loc:@bias*
use_locking(*
T0*
_output_shapes
: *
validate_shape(
U
	bias/readIdentitybias*
T0*
_class
	loc:@bias*
_output_shapes
: 
G
MulMulPlaceholderweight/read*
T0*
_output_shapes
:
=
AddAddMul	bias/read*
T0*
_output_shapes
:
A
subSubAddPlaceholder_1*
T0*
_output_shapes
:
J
Pow/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
9
PowPowsubPow/y*
T0*
_output_shapes
:
2
RankRankPow*
T0*
_output_shapes
: 
M
range/startConst*
value	B : *
dtype0*
_output_shapes
: 
M
range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
_
rangeRangerange/startRankrange/delta*

Tidx0*#
_output_shapes
:���������
V
SumSumPowrange*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
N
	truediv/yConst*
valueB
 *  B*
dtype0*
_output_shapes
: 
E
truedivRealDivSum	truediv/y*
T0*
_output_shapes
:
_
gradients/ShapeShapetruediv*
T0*
out_type0*#
_output_shapes
:���������
T
gradients/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
[
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
:
h
gradients/truediv_grad/ShapeShapeSum*
T0*
out_type0*#
_output_shapes
:���������
a
gradients/truediv_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
,gradients/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_grad/Shapegradients/truediv_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
g
gradients/truediv_grad/RealDivRealDivgradients/Fill	truediv/y*
T0*
_output_shapes
:
�
gradients/truediv_grad/SumSumgradients/truediv_grad/RealDiv,gradients/truediv_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
gradients/truediv_grad/ReshapeReshapegradients/truediv_grad/Sumgradients/truediv_grad/Shape*
T0*
Tshape0*
_output_shapes
:
I
gradients/truediv_grad/NegNegSum*
T0*
_output_shapes
:
u
 gradients/truediv_grad/RealDiv_1RealDivgradients/truediv_grad/Neg	truediv/y*
T0*
_output_shapes
:
{
 gradients/truediv_grad/RealDiv_2RealDiv gradients/truediv_grad/RealDiv_1	truediv/y*
T0*
_output_shapes
:
v
gradients/truediv_grad/mulMulgradients/Fill gradients/truediv_grad/RealDiv_2*
T0*
_output_shapes
:
�
gradients/truediv_grad/Sum_1Sumgradients/truediv_grad/mul.gradients/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
 gradients/truediv_grad/Reshape_1Reshapegradients/truediv_grad/Sum_1gradients/truediv_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
s
'gradients/truediv_grad/tuple/group_depsNoOp^gradients/truediv_grad/Reshape!^gradients/truediv_grad/Reshape_1
�
/gradients/truediv_grad/tuple/control_dependencyIdentitygradients/truediv_grad/Reshape(^gradients/truediv_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/truediv_grad/Reshape*
_output_shapes
:
�
1gradients/truediv_grad/tuple/control_dependency_1Identity gradients/truediv_grad/Reshape_1(^gradients/truediv_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_grad/Reshape_1*
_output_shapes
: 
d
gradients/Sum_grad/ShapeShapePow*
T0*
out_type0*#
_output_shapes
:���������
j
gradients/Sum_grad/SizeSizegradients/Sum_grad/Shape*
T0*
out_type0*
_output_shapes
: 
k
gradients/Sum_grad/addAddrangegradients/Sum_grad/Size*
T0*#
_output_shapes
:���������
�
gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*
T0*#
_output_shapes
:���������
p
gradients/Sum_grad/Shape_1Shapegradients/Sum_grad/mod*
T0*
out_type0*
_output_shapes
:
`
gradients/Sum_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
`
gradients/Sum_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*

Tidx0*#
_output_shapes
:���������
_
gradients/Sum_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: 
�
gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*
T0*#
_output_shapes
:���������
�
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*
T0*
N*#
_output_shapes
:���������
^
gradients/Sum_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*
T0*#
_output_shapes
:���������
�
gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*
T0*#
_output_shapes
:���������
�
gradients/Sum_grad/ReshapeReshape/gradients/truediv_grad/tuple/control_dependency gradients/Sum_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
�
gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*
T0*

Tmultiples0*
_output_shapes
:
d
gradients/Pow_grad/ShapeShapesub*
T0*
out_type0*#
_output_shapes
:���������
]
gradients/Pow_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
(gradients/Pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Pow_grad/Shapegradients/Pow_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
`
gradients/Pow_grad/mulMulgradients/Sum_grad/TilePow/y*
T0*
_output_shapes
:
]
gradients/Pow_grad/sub/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
_
gradients/Pow_grad/subSubPow/ygradients/Pow_grad/sub/y*
T0*
_output_shapes
: 
]
gradients/Pow_grad/PowPowsubgradients/Pow_grad/sub*
T0*
_output_shapes
:
r
gradients/Pow_grad/mul_1Mulgradients/Pow_grad/mulgradients/Pow_grad/Pow*
T0*
_output_shapes
:
�
gradients/Pow_grad/SumSumgradients/Pow_grad/mul_1(gradients/Pow_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
gradients/Pow_grad/ReshapeReshapegradients/Pow_grad/Sumgradients/Pow_grad/Shape*
T0*
Tshape0*
_output_shapes
:
a
gradients/Pow_grad/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
k
gradients/Pow_grad/GreaterGreatersubgradients/Pow_grad/Greater/y*
T0*
_output_shapes
:
E
gradients/Pow_grad/LogLogsub*
T0*
_output_shapes
:
R
gradients/Pow_grad/zeros_like	ZerosLikesub*
T0*
_output_shapes
:
�
gradients/Pow_grad/SelectSelectgradients/Pow_grad/Greatergradients/Pow_grad/Loggradients/Pow_grad/zeros_like*
T0*
_output_shapes
:
`
gradients/Pow_grad/mul_2Mulgradients/Sum_grad/TilePow*
T0*
_output_shapes
:
w
gradients/Pow_grad/mul_3Mulgradients/Pow_grad/mul_2gradients/Pow_grad/Select*
T0*
_output_shapes
:
�
gradients/Pow_grad/Sum_1Sumgradients/Pow_grad/mul_3*gradients/Pow_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
gradients/Pow_grad/Reshape_1Reshapegradients/Pow_grad/Sum_1gradients/Pow_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
g
#gradients/Pow_grad/tuple/group_depsNoOp^gradients/Pow_grad/Reshape^gradients/Pow_grad/Reshape_1
�
+gradients/Pow_grad/tuple/control_dependencyIdentitygradients/Pow_grad/Reshape$^gradients/Pow_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Pow_grad/Reshape*
_output_shapes
:
�
-gradients/Pow_grad/tuple/control_dependency_1Identitygradients/Pow_grad/Reshape_1$^gradients/Pow_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Pow_grad/Reshape_1*
_output_shapes
: 
d
gradients/sub_grad/ShapeShapeAdd*
T0*
out_type0*#
_output_shapes
:���������
p
gradients/sub_grad/Shape_1ShapePlaceholder_1*
T0*
out_type0*#
_output_shapes
:���������
�
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/sub_grad/SumSum+gradients/Pow_grad/tuple/control_dependency(gradients/sub_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0*
_output_shapes
:
�
gradients/sub_grad/Sum_1Sum+gradients/Pow_grad/tuple/control_dependency*gradients/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_output_shapes
:
�
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
�
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape*
_output_shapes
:
�
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*
_output_shapes
:
d
gradients/Add_grad/ShapeShapeMul*
T0*
out_type0*#
_output_shapes
:���������
]
gradients/Add_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
(gradients/Add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_grad/Shapegradients/Add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/Add_grad/SumSum+gradients/sub_grad/tuple/control_dependency(gradients/Add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
gradients/Add_grad/ReshapeReshapegradients/Add_grad/Sumgradients/Add_grad/Shape*
T0*
Tshape0*
_output_shapes
:
�
gradients/Add_grad/Sum_1Sum+gradients/sub_grad/tuple/control_dependency*gradients/Add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
gradients/Add_grad/Reshape_1Reshapegradients/Add_grad/Sum_1gradients/Add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
g
#gradients/Add_grad/tuple/group_depsNoOp^gradients/Add_grad/Reshape^gradients/Add_grad/Reshape_1
�
+gradients/Add_grad/tuple/control_dependencyIdentitygradients/Add_grad/Reshape$^gradients/Add_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Add_grad/Reshape*
_output_shapes
:
�
-gradients/Add_grad/tuple/control_dependency_1Identitygradients/Add_grad/Reshape_1$^gradients/Add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_grad/Reshape_1*
_output_shapes
: 
l
gradients/Mul_grad/ShapeShapePlaceholder*
T0*
out_type0*#
_output_shapes
:���������
]
gradients/Mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
(gradients/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_grad/Shapegradients/Mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
z
gradients/Mul_grad/mulMul+gradients/Add_grad/tuple/control_dependencyweight/read*
T0*
_output_shapes
:
�
gradients/Mul_grad/SumSumgradients/Mul_grad/mul(gradients/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
gradients/Mul_grad/ReshapeReshapegradients/Mul_grad/Sumgradients/Mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
|
gradients/Mul_grad/mul_1MulPlaceholder+gradients/Add_grad/tuple/control_dependency*
T0*
_output_shapes
:
�
gradients/Mul_grad/Sum_1Sumgradients/Mul_grad/mul_1*gradients/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
gradients/Mul_grad/Reshape_1Reshapegradients/Mul_grad/Sum_1gradients/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
g
#gradients/Mul_grad/tuple/group_depsNoOp^gradients/Mul_grad/Reshape^gradients/Mul_grad/Reshape_1
�
+gradients/Mul_grad/tuple/control_dependencyIdentitygradients/Mul_grad/Reshape$^gradients/Mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Mul_grad/Reshape*
_output_shapes
:
�
-gradients/Mul_grad/tuple/control_dependency_1Identitygradients/Mul_grad/Reshape_1$^gradients/Mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_grad/Reshape_1*
_output_shapes
: 
b
GradientDescent/learning_rateConst*
valueB
 *
�#<*
dtype0*
_output_shapes
: 
�
2GradientDescent/update_weight/ApplyGradientDescentApplyGradientDescentweightGradientDescent/learning_rate-gradients/Mul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@weight*
_output_shapes
: 
�
0GradientDescent/update_bias/ApplyGradientDescentApplyGradientDescentbiasGradientDescent/learning_rate-gradients/Add_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
	loc:@bias*
_output_shapes
: 

GradientDescentNoOp3^GradientDescent/update_weight/ApplyGradientDescent1^GradientDescent/update_bias/ApplyGradientDescent
*
initNoOp^weight/Assign^bias/Assign""
train_op

GradientDescent"]
	variablesPN
(
weight:0weight/Assignweight/read:0
"
bias:0bias/Assignbias/read:0"g
trainable_variablesPN
(
weight:0weight/Assignweight/read:0
"
bias:0bias/Assignbias/read:0s�