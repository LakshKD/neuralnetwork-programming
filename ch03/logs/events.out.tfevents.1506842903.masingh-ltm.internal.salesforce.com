       гK"	  └E&t╓Abrain.Event:2:▓╤hK      ёХЧ╤	┤╦╘E&t╓A"█Ц
N
PlaceholderPlaceholder*
_output_shapes
:*
shape: *
dtype0
P
Placeholder_1Placeholder*
_output_shapes
:*
shape: *
dtype0
Y
weight/initial_valueConst*
_output_shapes
: *
valueB
 *uе?*
dtype0
j
weight
VariableV2*
_output_shapes
: *
	container *
shape: *
dtype0*
shared_name 
Ъ
weight/AssignAssignweightweight/initial_value*
_class
loc:@weight*
use_locking(*
_output_shapes
: *
T0*
validate_shape(
[
weight/readIdentityweight*
_class
loc:@weight*
_output_shapes
: *
T0
W
bias/initial_valueConst*
_output_shapes
: *
valueB
 *2a=*
dtype0
h
bias
VariableV2*
_output_shapes
: *
	container *
shape: *
dtype0*
shared_name 
Т
bias/AssignAssignbiasbias/initial_value*
_class
	loc:@bias*
use_locking(*
_output_shapes
: *
T0*
validate_shape(
U
	bias/readIdentitybias*
_class
	loc:@bias*
_output_shapes
: *
T0
G
MulMulPlaceholderweight/read*
_output_shapes
:*
T0
=
AddAddMul	bias/read*
_output_shapes
:*
T0
A
subSubAddPlaceholder_1*
_output_shapes
:*
T0
J
Pow/yConst*
_output_shapes
: *
valueB
 *   @*
dtype0
9
PowPowsubPow/y*
_output_shapes
:*
T0
2
RankRankPow*
_output_shapes
: *
T0
M
range/startConst*
_output_shapes
: *
value	B : *
dtype0
M
range/deltaConst*
_output_shapes
: *
value	B :*
dtype0
_
rangeRangerange/startRankrange/delta*#
_output_shapes
:         *

Tidx0
V
SumSumPowrange*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
N
	truediv/yConst*
_output_shapes
: *
valueB
 *  B*
dtype0
E
truedivRealDivSum	truediv/y*
_output_shapes
:*
T0
_
gradients/ShapeShapetruediv*#
_output_shapes
:         *
T0*
out_type0
T
gradients/ConstConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
[
gradients/FillFillgradients/Shapegradients/Const*
_output_shapes
:*
T0
h
gradients/truediv_grad/ShapeShapeSum*#
_output_shapes
:         *
T0*
out_type0
a
gradients/truediv_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
└
,gradients/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_grad/Shapegradients/truediv_grad/Shape_1*2
_output_shapes 
:         :         *
T0
g
gradients/truediv_grad/RealDivRealDivgradients/Fill	truediv/y*
_output_shapes
:*
T0
п
gradients/truediv_grad/SumSumgradients/truediv_grad/RealDiv,gradients/truediv_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ф
gradients/truediv_grad/ReshapeReshapegradients/truediv_grad/Sumgradients/truediv_grad/Shape*
_output_shapes
:*
T0*
Tshape0
I
gradients/truediv_grad/NegNegSum*
_output_shapes
:*
T0
u
 gradients/truediv_grad/RealDiv_1RealDivgradients/truediv_grad/Neg	truediv/y*
_output_shapes
:*
T0
{
 gradients/truediv_grad/RealDiv_2RealDiv gradients/truediv_grad/RealDiv_1	truediv/y*
_output_shapes
:*
T0
v
gradients/truediv_grad/mulMulgradients/Fill gradients/truediv_grad/RealDiv_2*
_output_shapes
:*
T0
п
gradients/truediv_grad/Sum_1Sumgradients/truediv_grad/mul.gradients/truediv_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ш
 gradients/truediv_grad/Reshape_1Reshapegradients/truediv_grad/Sum_1gradients/truediv_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
s
'gradients/truediv_grad/tuple/group_depsNoOp^gradients/truediv_grad/Reshape!^gradients/truediv_grad/Reshape_1
█
/gradients/truediv_grad/tuple/control_dependencyIdentitygradients/truediv_grad/Reshape(^gradients/truediv_grad/tuple/group_deps*1
_class'
%#loc:@gradients/truediv_grad/Reshape*
_output_shapes
:*
T0
▀
1gradients/truediv_grad/tuple/control_dependency_1Identity gradients/truediv_grad/Reshape_1(^gradients/truediv_grad/tuple/group_deps*3
_class)
'%loc:@gradients/truediv_grad/Reshape_1*
_output_shapes
: *
T0
d
gradients/Sum_grad/ShapeShapePow*#
_output_shapes
:         *
T0*
out_type0
j
gradients/Sum_grad/SizeSizegradients/Sum_grad/Shape*
_output_shapes
: *
T0*
out_type0
k
gradients/Sum_grad/addAddrangegradients/Sum_grad/Size*#
_output_shapes
:         *
T0
Б
gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*#
_output_shapes
:         *
T0
p
gradients/Sum_grad/Shape_1Shapegradients/Sum_grad/mod*
_output_shapes
:*
T0*
out_type0
`
gradients/Sum_grad/range/startConst*
_output_shapes
: *
value	B : *
dtype0
`
gradients/Sum_grad/range/deltaConst*
_output_shapes
: *
value	B :*
dtype0
л
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*#
_output_shapes
:         *

Tidx0
_
gradients/Sum_grad/Fill/valueConst*
_output_shapes
: *
value	B :*
dtype0
И
gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*#
_output_shapes
:         *
T0
═
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*#
_output_shapes
:         *
T0*
N
^
gradients/Sum_grad/Maximum/yConst*
_output_shapes
: *
value	B :*
dtype0
У
gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*#
_output_shapes
:         *
T0
Л
gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*#
_output_shapes
:         *
T0
й
gradients/Sum_grad/ReshapeReshape/gradients/truediv_grad/tuple/control_dependency gradients/Sum_grad/DynamicStitch*
_output_shapes
:*
T0*
Tshape0
Н
gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*
_output_shapes
:*

Tmultiples0*
T0
d
gradients/Pow_grad/ShapeShapesub*#
_output_shapes
:         *
T0*
out_type0
]
gradients/Pow_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
┤
(gradients/Pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Pow_grad/Shapegradients/Pow_grad/Shape_1*2
_output_shapes 
:         :         *
T0
`
gradients/Pow_grad/mulMulgradients/Sum_grad/TilePow/y*
_output_shapes
:*
T0
]
gradients/Pow_grad/sub/yConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
_
gradients/Pow_grad/subSubPow/ygradients/Pow_grad/sub/y*
_output_shapes
: *
T0
]
gradients/Pow_grad/PowPowsubgradients/Pow_grad/sub*
_output_shapes
:*
T0
r
gradients/Pow_grad/mul_1Mulgradients/Pow_grad/mulgradients/Pow_grad/Pow*
_output_shapes
:*
T0
б
gradients/Pow_grad/SumSumgradients/Pow_grad/mul_1(gradients/Pow_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
И
gradients/Pow_grad/ReshapeReshapegradients/Pow_grad/Sumgradients/Pow_grad/Shape*
_output_shapes
:*
T0*
Tshape0
a
gradients/Pow_grad/Greater/yConst*
_output_shapes
: *
valueB
 *    *
dtype0
k
gradients/Pow_grad/GreaterGreatersubgradients/Pow_grad/Greater/y*
_output_shapes
:*
T0
E
gradients/Pow_grad/LogLogsub*
_output_shapes
:*
T0
R
gradients/Pow_grad/zeros_like	ZerosLikesub*
_output_shapes
:*
T0
Щ
gradients/Pow_grad/SelectSelectgradients/Pow_grad/Greatergradients/Pow_grad/Loggradients/Pow_grad/zeros_like*
_output_shapes
:*
T0
`
gradients/Pow_grad/mul_2Mulgradients/Sum_grad/TilePow*
_output_shapes
:*
T0
w
gradients/Pow_grad/mul_3Mulgradients/Pow_grad/mul_2gradients/Pow_grad/Select*
_output_shapes
:*
T0
е
gradients/Pow_grad/Sum_1Sumgradients/Pow_grad/mul_3*gradients/Pow_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
М
gradients/Pow_grad/Reshape_1Reshapegradients/Pow_grad/Sum_1gradients/Pow_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
g
#gradients/Pow_grad/tuple/group_depsNoOp^gradients/Pow_grad/Reshape^gradients/Pow_grad/Reshape_1
╦
+gradients/Pow_grad/tuple/control_dependencyIdentitygradients/Pow_grad/Reshape$^gradients/Pow_grad/tuple/group_deps*-
_class#
!loc:@gradients/Pow_grad/Reshape*
_output_shapes
:*
T0
╧
-gradients/Pow_grad/tuple/control_dependency_1Identitygradients/Pow_grad/Reshape_1$^gradients/Pow_grad/tuple/group_deps*/
_class%
#!loc:@gradients/Pow_grad/Reshape_1*
_output_shapes
: *
T0
d
gradients/sub_grad/ShapeShapeAdd*#
_output_shapes
:         *
T0*
out_type0
p
gradients/sub_grad/Shape_1ShapePlaceholder_1*#
_output_shapes
:         *
T0*
out_type0
┤
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*2
_output_shapes 
:         :         *
T0
┤
gradients/sub_grad/SumSum+gradients/Pow_grad/tuple/control_dependency(gradients/sub_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
И
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
_output_shapes
:*
T0*
Tshape0
╕
gradients/sub_grad/Sum_1Sum+gradients/Pow_grad/tuple/control_dependency*gradients/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
_output_shapes
:*
T0
М
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
╦
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*-
_class#
!loc:@gradients/sub_grad/Reshape*
_output_shapes
:*
T0
╤
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*
_output_shapes
:*
T0
d
gradients/Add_grad/ShapeShapeMul*#
_output_shapes
:         *
T0*
out_type0
]
gradients/Add_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
┤
(gradients/Add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_grad/Shapegradients/Add_grad/Shape_1*2
_output_shapes 
:         :         *
T0
┤
gradients/Add_grad/SumSum+gradients/sub_grad/tuple/control_dependency(gradients/Add_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
И
gradients/Add_grad/ReshapeReshapegradients/Add_grad/Sumgradients/Add_grad/Shape*
_output_shapes
:*
T0*
Tshape0
╕
gradients/Add_grad/Sum_1Sum+gradients/sub_grad/tuple/control_dependency*gradients/Add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
М
gradients/Add_grad/Reshape_1Reshapegradients/Add_grad/Sum_1gradients/Add_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
g
#gradients/Add_grad/tuple/group_depsNoOp^gradients/Add_grad/Reshape^gradients/Add_grad/Reshape_1
╦
+gradients/Add_grad/tuple/control_dependencyIdentitygradients/Add_grad/Reshape$^gradients/Add_grad/tuple/group_deps*-
_class#
!loc:@gradients/Add_grad/Reshape*
_output_shapes
:*
T0
╧
-gradients/Add_grad/tuple/control_dependency_1Identitygradients/Add_grad/Reshape_1$^gradients/Add_grad/tuple/group_deps*/
_class%
#!loc:@gradients/Add_grad/Reshape_1*
_output_shapes
: *
T0
l
gradients/Mul_grad/ShapeShapePlaceholder*#
_output_shapes
:         *
T0*
out_type0
]
gradients/Mul_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
┤
(gradients/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_grad/Shapegradients/Mul_grad/Shape_1*2
_output_shapes 
:         :         *
T0
z
gradients/Mul_grad/mulMul+gradients/Add_grad/tuple/control_dependencyweight/read*
_output_shapes
:*
T0
Я
gradients/Mul_grad/SumSumgradients/Mul_grad/mul(gradients/Mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
И
gradients/Mul_grad/ReshapeReshapegradients/Mul_grad/Sumgradients/Mul_grad/Shape*
_output_shapes
:*
T0*
Tshape0
|
gradients/Mul_grad/mul_1MulPlaceholder+gradients/Add_grad/tuple/control_dependency*
_output_shapes
:*
T0
е
gradients/Mul_grad/Sum_1Sumgradients/Mul_grad/mul_1*gradients/Mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
М
gradients/Mul_grad/Reshape_1Reshapegradients/Mul_grad/Sum_1gradients/Mul_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
g
#gradients/Mul_grad/tuple/group_depsNoOp^gradients/Mul_grad/Reshape^gradients/Mul_grad/Reshape_1
╦
+gradients/Mul_grad/tuple/control_dependencyIdentitygradients/Mul_grad/Reshape$^gradients/Mul_grad/tuple/group_deps*-
_class#
!loc:@gradients/Mul_grad/Reshape*
_output_shapes
:*
T0
╧
-gradients/Mul_grad/tuple/control_dependency_1Identitygradients/Mul_grad/Reshape_1$^gradients/Mul_grad/tuple/group_deps*/
_class%
#!loc:@gradients/Mul_grad/Reshape_1*
_output_shapes
: *
T0
y
beta1_power/initial_valueConst*
_class
loc:@weight*
valueB
 *fff?*
_output_shapes
: *
dtype0
К
beta1_power
VariableV2*
_output_shapes
: *
shape: *
dtype0*
shared_name *
_class
loc:@weight*
	container 
й
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
_class
loc:@weight*
use_locking(*
_output_shapes
: *
T0*
validate_shape(
e
beta1_power/readIdentitybeta1_power*
_class
loc:@weight*
_output_shapes
: *
T0
y
beta2_power/initial_valueConst*
_class
loc:@weight*
valueB
 *w╛?*
_output_shapes
: *
dtype0
К
beta2_power
VariableV2*
_output_shapes
: *
shape: *
dtype0*
shared_name *
_class
loc:@weight*
	container 
й
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
_class
loc:@weight*
use_locking(*
_output_shapes
: *
T0*
validate_shape(
e
beta2_power/readIdentitybeta2_power*
_class
loc:@weight*
_output_shapes
: *
T0
}
weight/Adam/Initializer/ConstConst*
_class
loc:@weight*
valueB
 *    *
_output_shapes
: *
dtype0
К
weight/Adam
VariableV2*
_output_shapes
: *
shape: *
dtype0*
shared_name *
_class
loc:@weight*
	container 
н
weight/Adam/AssignAssignweight/Adamweight/Adam/Initializer/Const*
_class
loc:@weight*
use_locking(*
_output_shapes
: *
T0*
validate_shape(
e
weight/Adam/readIdentityweight/Adam*
_class
loc:@weight*
_output_shapes
: *
T0

weight/Adam_1/Initializer/ConstConst*
_class
loc:@weight*
valueB
 *    *
_output_shapes
: *
dtype0
М
weight/Adam_1
VariableV2*
_output_shapes
: *
shape: *
dtype0*
shared_name *
_class
loc:@weight*
	container 
│
weight/Adam_1/AssignAssignweight/Adam_1weight/Adam_1/Initializer/Const*
_class
loc:@weight*
use_locking(*
_output_shapes
: *
T0*
validate_shape(
i
weight/Adam_1/readIdentityweight/Adam_1*
_class
loc:@weight*
_output_shapes
: *
T0
y
bias/Adam/Initializer/ConstConst*
_class
	loc:@bias*
valueB
 *    *
_output_shapes
: *
dtype0
Ж
	bias/Adam
VariableV2*
_output_shapes
: *
shape: *
dtype0*
shared_name *
_class
	loc:@bias*
	container 
е
bias/Adam/AssignAssign	bias/Adambias/Adam/Initializer/Const*
_class
	loc:@bias*
use_locking(*
_output_shapes
: *
T0*
validate_shape(
_
bias/Adam/readIdentity	bias/Adam*
_class
	loc:@bias*
_output_shapes
: *
T0
{
bias/Adam_1/Initializer/ConstConst*
_class
	loc:@bias*
valueB
 *    *
_output_shapes
: *
dtype0
И
bias/Adam_1
VariableV2*
_output_shapes
: *
shape: *
dtype0*
shared_name *
_class
	loc:@bias*
	container 
л
bias/Adam_1/AssignAssignbias/Adam_1bias/Adam_1/Initializer/Const*
_class
	loc:@bias*
use_locking(*
_output_shapes
: *
T0*
validate_shape(
c
bias/Adam_1/readIdentitybias/Adam_1*
_class
	loc:@bias*
_output_shapes
: *
T0
W
Adam/learning_rateConst*
_output_shapes
: *
valueB
 *
╫#<*
dtype0
O

Adam/beta1Const*
_output_shapes
: *
valueB
 *fff?*
dtype0
O

Adam/beta2Const*
_output_shapes
: *
valueB
 *w╛?*
dtype0
Q
Adam/epsilonConst*
_output_shapes
: *
valueB
 *w╠+2*
dtype0
й
Adam/update_weight/ApplyAdam	ApplyAdamweightweight/Adamweight/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon-gradients/Mul_grad/tuple/control_dependency_1*
_class
loc:@weight*
use_locking( *
_output_shapes
: *
T0
Я
Adam/update_bias/ApplyAdam	ApplyAdambias	bias/Adambias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon-gradients/Add_grad/tuple/control_dependency_1*
_class
	loc:@bias*
use_locking( *
_output_shapes
: *
T0
е
Adam/mulMulbeta1_power/read
Adam/beta1^Adam/update_weight/ApplyAdam^Adam/update_bias/ApplyAdam*
_class
loc:@weight*
_output_shapes
: *
T0
С
Adam/AssignAssignbeta1_powerAdam/mul*
_class
loc:@weight*
use_locking( *
_output_shapes
: *
T0*
validate_shape(
з

Adam/mul_1Mulbeta2_power/read
Adam/beta2^Adam/update_weight/ApplyAdam^Adam/update_bias/ApplyAdam*
_class
loc:@weight*
_output_shapes
: *
T0
Х
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
_class
loc:@weight*
use_locking( *
_output_shapes
: *
T0*
validate_shape(
f
AdamNoOp^Adam/update_weight/ApplyAdam^Adam/update_bias/ApplyAdam^Adam/Assign^Adam/Assign_1
и
initNoOp^weight/Assign^bias/Assign^beta1_power/Assign^beta2_power/Assign^weight/Adam/Assign^weight/Adam_1/Assign^bias/Adam/Assign^bias/Adam_1/Assign"ХЫТ╬yV      ~∙m╛	C▄E&t╓AJьм
╙▒
9
Add
x"T
y"T
z"T"
Ttype:
2	
╤
	ApplyAdam
var"TА	
m"TА	
v"TА
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"TА"
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
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
2	Р
<
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
Й
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
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
&
	ZerosLike
x"T
y"T"	
Ttype*1.1.02v1.1.0-rc0-61-g1ec6ed5█Ц
N
PlaceholderPlaceholder*
_output_shapes
:*
shape: *
dtype0
P
Placeholder_1Placeholder*
_output_shapes
:*
shape: *
dtype0
Y
weight/initial_valueConst*
_output_shapes
: *
valueB
 *uе?*
dtype0
j
weight
VariableV2*
_output_shapes
: *
	container *
shape: *
dtype0*
shared_name 
Ъ
weight/AssignAssignweightweight/initial_value*
_class
loc:@weight*
use_locking(*
_output_shapes
: *
validate_shape(*
T0
[
weight/readIdentityweight*
_class
loc:@weight*
_output_shapes
: *
T0
W
bias/initial_valueConst*
_output_shapes
: *
valueB
 *2a=*
dtype0
h
bias
VariableV2*
_output_shapes
: *
	container *
shape: *
dtype0*
shared_name 
Т
bias/AssignAssignbiasbias/initial_value*
_class
	loc:@bias*
use_locking(*
_output_shapes
: *
validate_shape(*
T0
U
	bias/readIdentitybias*
_class
	loc:@bias*
_output_shapes
: *
T0
G
MulMulPlaceholderweight/read*
_output_shapes
:*
T0
=
AddAddMul	bias/read*
_output_shapes
:*
T0
A
subSubAddPlaceholder_1*
_output_shapes
:*
T0
J
Pow/yConst*
_output_shapes
: *
valueB
 *   @*
dtype0
9
PowPowsubPow/y*
_output_shapes
:*
T0
2
RankRankPow*
_output_shapes
: *
T0
M
range/startConst*
_output_shapes
: *
value	B : *
dtype0
M
range/deltaConst*
_output_shapes
: *
value	B :*
dtype0
_
rangeRangerange/startRankrange/delta*#
_output_shapes
:         *

Tidx0
V
SumSumPowrange*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
N
	truediv/yConst*
_output_shapes
: *
valueB
 *  B*
dtype0
E
truedivRealDivSum	truediv/y*
_output_shapes
:*
T0
_
gradients/ShapeShapetruediv*#
_output_shapes
:         *
T0*
out_type0
T
gradients/ConstConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
[
gradients/FillFillgradients/Shapegradients/Const*
_output_shapes
:*
T0
h
gradients/truediv_grad/ShapeShapeSum*#
_output_shapes
:         *
T0*
out_type0
a
gradients/truediv_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
└
,gradients/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_grad/Shapegradients/truediv_grad/Shape_1*2
_output_shapes 
:         :         *
T0
g
gradients/truediv_grad/RealDivRealDivgradients/Fill	truediv/y*
_output_shapes
:*
T0
п
gradients/truediv_grad/SumSumgradients/truediv_grad/RealDiv,gradients/truediv_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ф
gradients/truediv_grad/ReshapeReshapegradients/truediv_grad/Sumgradients/truediv_grad/Shape*
_output_shapes
:*
T0*
Tshape0
I
gradients/truediv_grad/NegNegSum*
_output_shapes
:*
T0
u
 gradients/truediv_grad/RealDiv_1RealDivgradients/truediv_grad/Neg	truediv/y*
_output_shapes
:*
T0
{
 gradients/truediv_grad/RealDiv_2RealDiv gradients/truediv_grad/RealDiv_1	truediv/y*
_output_shapes
:*
T0
v
gradients/truediv_grad/mulMulgradients/Fill gradients/truediv_grad/RealDiv_2*
_output_shapes
:*
T0
п
gradients/truediv_grad/Sum_1Sumgradients/truediv_grad/mul.gradients/truediv_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ш
 gradients/truediv_grad/Reshape_1Reshapegradients/truediv_grad/Sum_1gradients/truediv_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
s
'gradients/truediv_grad/tuple/group_depsNoOp^gradients/truediv_grad/Reshape!^gradients/truediv_grad/Reshape_1
█
/gradients/truediv_grad/tuple/control_dependencyIdentitygradients/truediv_grad/Reshape(^gradients/truediv_grad/tuple/group_deps*1
_class'
%#loc:@gradients/truediv_grad/Reshape*
_output_shapes
:*
T0
▀
1gradients/truediv_grad/tuple/control_dependency_1Identity gradients/truediv_grad/Reshape_1(^gradients/truediv_grad/tuple/group_deps*3
_class)
'%loc:@gradients/truediv_grad/Reshape_1*
_output_shapes
: *
T0
d
gradients/Sum_grad/ShapeShapePow*#
_output_shapes
:         *
T0*
out_type0
j
gradients/Sum_grad/SizeSizegradients/Sum_grad/Shape*
_output_shapes
: *
T0*
out_type0
k
gradients/Sum_grad/addAddrangegradients/Sum_grad/Size*#
_output_shapes
:         *
T0
Б
gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*#
_output_shapes
:         *
T0
p
gradients/Sum_grad/Shape_1Shapegradients/Sum_grad/mod*
_output_shapes
:*
T0*
out_type0
`
gradients/Sum_grad/range/startConst*
_output_shapes
: *
value	B : *
dtype0
`
gradients/Sum_grad/range/deltaConst*
_output_shapes
: *
value	B :*
dtype0
л
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*#
_output_shapes
:         *

Tidx0
_
gradients/Sum_grad/Fill/valueConst*
_output_shapes
: *
value	B :*
dtype0
И
gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*#
_output_shapes
:         *
T0
═
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*#
_output_shapes
:         *
T0*
N
^
gradients/Sum_grad/Maximum/yConst*
_output_shapes
: *
value	B :*
dtype0
У
gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*#
_output_shapes
:         *
T0
Л
gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*#
_output_shapes
:         *
T0
й
gradients/Sum_grad/ReshapeReshape/gradients/truediv_grad/tuple/control_dependency gradients/Sum_grad/DynamicStitch*
_output_shapes
:*
T0*
Tshape0
Н
gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*
_output_shapes
:*

Tmultiples0*
T0
d
gradients/Pow_grad/ShapeShapesub*#
_output_shapes
:         *
T0*
out_type0
]
gradients/Pow_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
┤
(gradients/Pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Pow_grad/Shapegradients/Pow_grad/Shape_1*2
_output_shapes 
:         :         *
T0
`
gradients/Pow_grad/mulMulgradients/Sum_grad/TilePow/y*
_output_shapes
:*
T0
]
gradients/Pow_grad/sub/yConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
_
gradients/Pow_grad/subSubPow/ygradients/Pow_grad/sub/y*
_output_shapes
: *
T0
]
gradients/Pow_grad/PowPowsubgradients/Pow_grad/sub*
_output_shapes
:*
T0
r
gradients/Pow_grad/mul_1Mulgradients/Pow_grad/mulgradients/Pow_grad/Pow*
_output_shapes
:*
T0
б
gradients/Pow_grad/SumSumgradients/Pow_grad/mul_1(gradients/Pow_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
И
gradients/Pow_grad/ReshapeReshapegradients/Pow_grad/Sumgradients/Pow_grad/Shape*
_output_shapes
:*
T0*
Tshape0
a
gradients/Pow_grad/Greater/yConst*
_output_shapes
: *
valueB
 *    *
dtype0
k
gradients/Pow_grad/GreaterGreatersubgradients/Pow_grad/Greater/y*
_output_shapes
:*
T0
E
gradients/Pow_grad/LogLogsub*
_output_shapes
:*
T0
R
gradients/Pow_grad/zeros_like	ZerosLikesub*
_output_shapes
:*
T0
Щ
gradients/Pow_grad/SelectSelectgradients/Pow_grad/Greatergradients/Pow_grad/Loggradients/Pow_grad/zeros_like*
_output_shapes
:*
T0
`
gradients/Pow_grad/mul_2Mulgradients/Sum_grad/TilePow*
_output_shapes
:*
T0
w
gradients/Pow_grad/mul_3Mulgradients/Pow_grad/mul_2gradients/Pow_grad/Select*
_output_shapes
:*
T0
е
gradients/Pow_grad/Sum_1Sumgradients/Pow_grad/mul_3*gradients/Pow_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
М
gradients/Pow_grad/Reshape_1Reshapegradients/Pow_grad/Sum_1gradients/Pow_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
g
#gradients/Pow_grad/tuple/group_depsNoOp^gradients/Pow_grad/Reshape^gradients/Pow_grad/Reshape_1
╦
+gradients/Pow_grad/tuple/control_dependencyIdentitygradients/Pow_grad/Reshape$^gradients/Pow_grad/tuple/group_deps*-
_class#
!loc:@gradients/Pow_grad/Reshape*
_output_shapes
:*
T0
╧
-gradients/Pow_grad/tuple/control_dependency_1Identitygradients/Pow_grad/Reshape_1$^gradients/Pow_grad/tuple/group_deps*/
_class%
#!loc:@gradients/Pow_grad/Reshape_1*
_output_shapes
: *
T0
d
gradients/sub_grad/ShapeShapeAdd*#
_output_shapes
:         *
T0*
out_type0
p
gradients/sub_grad/Shape_1ShapePlaceholder_1*#
_output_shapes
:         *
T0*
out_type0
┤
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*2
_output_shapes 
:         :         *
T0
┤
gradients/sub_grad/SumSum+gradients/Pow_grad/tuple/control_dependency(gradients/sub_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
И
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
_output_shapes
:*
T0*
Tshape0
╕
gradients/sub_grad/Sum_1Sum+gradients/Pow_grad/tuple/control_dependency*gradients/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
_output_shapes
:*
T0
М
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
╦
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*-
_class#
!loc:@gradients/sub_grad/Reshape*
_output_shapes
:*
T0
╤
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*
_output_shapes
:*
T0
d
gradients/Add_grad/ShapeShapeMul*#
_output_shapes
:         *
T0*
out_type0
]
gradients/Add_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
┤
(gradients/Add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_grad/Shapegradients/Add_grad/Shape_1*2
_output_shapes 
:         :         *
T0
┤
gradients/Add_grad/SumSum+gradients/sub_grad/tuple/control_dependency(gradients/Add_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
И
gradients/Add_grad/ReshapeReshapegradients/Add_grad/Sumgradients/Add_grad/Shape*
_output_shapes
:*
T0*
Tshape0
╕
gradients/Add_grad/Sum_1Sum+gradients/sub_grad/tuple/control_dependency*gradients/Add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
М
gradients/Add_grad/Reshape_1Reshapegradients/Add_grad/Sum_1gradients/Add_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
g
#gradients/Add_grad/tuple/group_depsNoOp^gradients/Add_grad/Reshape^gradients/Add_grad/Reshape_1
╦
+gradients/Add_grad/tuple/control_dependencyIdentitygradients/Add_grad/Reshape$^gradients/Add_grad/tuple/group_deps*-
_class#
!loc:@gradients/Add_grad/Reshape*
_output_shapes
:*
T0
╧
-gradients/Add_grad/tuple/control_dependency_1Identitygradients/Add_grad/Reshape_1$^gradients/Add_grad/tuple/group_deps*/
_class%
#!loc:@gradients/Add_grad/Reshape_1*
_output_shapes
: *
T0
l
gradients/Mul_grad/ShapeShapePlaceholder*#
_output_shapes
:         *
T0*
out_type0
]
gradients/Mul_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
┤
(gradients/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_grad/Shapegradients/Mul_grad/Shape_1*2
_output_shapes 
:         :         *
T0
z
gradients/Mul_grad/mulMul+gradients/Add_grad/tuple/control_dependencyweight/read*
_output_shapes
:*
T0
Я
gradients/Mul_grad/SumSumgradients/Mul_grad/mul(gradients/Mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
И
gradients/Mul_grad/ReshapeReshapegradients/Mul_grad/Sumgradients/Mul_grad/Shape*
_output_shapes
:*
T0*
Tshape0
|
gradients/Mul_grad/mul_1MulPlaceholder+gradients/Add_grad/tuple/control_dependency*
_output_shapes
:*
T0
е
gradients/Mul_grad/Sum_1Sumgradients/Mul_grad/mul_1*gradients/Mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
М
gradients/Mul_grad/Reshape_1Reshapegradients/Mul_grad/Sum_1gradients/Mul_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
g
#gradients/Mul_grad/tuple/group_depsNoOp^gradients/Mul_grad/Reshape^gradients/Mul_grad/Reshape_1
╦
+gradients/Mul_grad/tuple/control_dependencyIdentitygradients/Mul_grad/Reshape$^gradients/Mul_grad/tuple/group_deps*-
_class#
!loc:@gradients/Mul_grad/Reshape*
_output_shapes
:*
T0
╧
-gradients/Mul_grad/tuple/control_dependency_1Identitygradients/Mul_grad/Reshape_1$^gradients/Mul_grad/tuple/group_deps*/
_class%
#!loc:@gradients/Mul_grad/Reshape_1*
_output_shapes
: *
T0
y
beta1_power/initial_valueConst*
_class
loc:@weight*
valueB
 *fff?*
_output_shapes
: *
dtype0
К
beta1_power
VariableV2*
_class
loc:@weight*
shape: *
dtype0*
shared_name *
_output_shapes
: *
	container 
й
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
_class
loc:@weight*
use_locking(*
_output_shapes
: *
validate_shape(*
T0
e
beta1_power/readIdentitybeta1_power*
_class
loc:@weight*
_output_shapes
: *
T0
y
beta2_power/initial_valueConst*
_class
loc:@weight*
valueB
 *w╛?*
_output_shapes
: *
dtype0
К
beta2_power
VariableV2*
_class
loc:@weight*
shape: *
dtype0*
shared_name *
_output_shapes
: *
	container 
й
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
_class
loc:@weight*
use_locking(*
_output_shapes
: *
validate_shape(*
T0
e
beta2_power/readIdentitybeta2_power*
_class
loc:@weight*
_output_shapes
: *
T0
}
weight/Adam/Initializer/ConstConst*
_class
loc:@weight*
valueB
 *    *
_output_shapes
: *
dtype0
К
weight/Adam
VariableV2*
_class
loc:@weight*
shape: *
dtype0*
shared_name *
_output_shapes
: *
	container 
н
weight/Adam/AssignAssignweight/Adamweight/Adam/Initializer/Const*
_class
loc:@weight*
use_locking(*
_output_shapes
: *
validate_shape(*
T0
e
weight/Adam/readIdentityweight/Adam*
_class
loc:@weight*
_output_shapes
: *
T0

weight/Adam_1/Initializer/ConstConst*
_class
loc:@weight*
valueB
 *    *
_output_shapes
: *
dtype0
М
weight/Adam_1
VariableV2*
_class
loc:@weight*
shape: *
dtype0*
shared_name *
_output_shapes
: *
	container 
│
weight/Adam_1/AssignAssignweight/Adam_1weight/Adam_1/Initializer/Const*
_class
loc:@weight*
use_locking(*
_output_shapes
: *
validate_shape(*
T0
i
weight/Adam_1/readIdentityweight/Adam_1*
_class
loc:@weight*
_output_shapes
: *
T0
y
bias/Adam/Initializer/ConstConst*
_class
	loc:@bias*
valueB
 *    *
_output_shapes
: *
dtype0
Ж
	bias/Adam
VariableV2*
_class
	loc:@bias*
shape: *
dtype0*
shared_name *
_output_shapes
: *
	container 
е
bias/Adam/AssignAssign	bias/Adambias/Adam/Initializer/Const*
_class
	loc:@bias*
use_locking(*
_output_shapes
: *
validate_shape(*
T0
_
bias/Adam/readIdentity	bias/Adam*
_class
	loc:@bias*
_output_shapes
: *
T0
{
bias/Adam_1/Initializer/ConstConst*
_class
	loc:@bias*
valueB
 *    *
_output_shapes
: *
dtype0
И
bias/Adam_1
VariableV2*
_class
	loc:@bias*
shape: *
dtype0*
shared_name *
_output_shapes
: *
	container 
л
bias/Adam_1/AssignAssignbias/Adam_1bias/Adam_1/Initializer/Const*
_class
	loc:@bias*
use_locking(*
_output_shapes
: *
validate_shape(*
T0
c
bias/Adam_1/readIdentitybias/Adam_1*
_class
	loc:@bias*
_output_shapes
: *
T0
W
Adam/learning_rateConst*
_output_shapes
: *
valueB
 *
╫#<*
dtype0
O

Adam/beta1Const*
_output_shapes
: *
valueB
 *fff?*
dtype0
O

Adam/beta2Const*
_output_shapes
: *
valueB
 *w╛?*
dtype0
Q
Adam/epsilonConst*
_output_shapes
: *
valueB
 *w╠+2*
dtype0
й
Adam/update_weight/ApplyAdam	ApplyAdamweightweight/Adamweight/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon-gradients/Mul_grad/tuple/control_dependency_1*
_class
loc:@weight*
use_locking( *
_output_shapes
: *
T0
Я
Adam/update_bias/ApplyAdam	ApplyAdambias	bias/Adambias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon-gradients/Add_grad/tuple/control_dependency_1*
_class
	loc:@bias*
use_locking( *
_output_shapes
: *
T0
е
Adam/mulMulbeta1_power/read
Adam/beta1^Adam/update_weight/ApplyAdam^Adam/update_bias/ApplyAdam*
_class
loc:@weight*
_output_shapes
: *
T0
С
Adam/AssignAssignbeta1_powerAdam/mul*
_class
loc:@weight*
use_locking( *
_output_shapes
: *
validate_shape(*
T0
з

Adam/mul_1Mulbeta2_power/read
Adam/beta2^Adam/update_weight/ApplyAdam^Adam/update_bias/ApplyAdam*
_class
loc:@weight*
_output_shapes
: *
T0
Х
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
_class
loc:@weight*
use_locking( *
_output_shapes
: *
validate_shape(*
T0
f
AdamNoOp^Adam/update_weight/ApplyAdam^Adam/update_bias/ApplyAdam^Adam/Assign^Adam/Assign_1
и
initNoOp^weight/Assign^bias/Assign^beta1_power/Assign^beta2_power/Assign^weight/Adam/Assign^weight/Adam_1/Assign^bias/Adam/Assign^bias/Adam_1/Assign""g
trainable_variablesPN
(
weight:0weight/Assignweight/read:0
"
bias:0bias/Assignbias/read:0"
train_op

Adam"╡
	variablesзд
(
weight:0weight/Assignweight/read:0
"
bias:0bias/Assignbias/read:0
7
beta1_power:0beta1_power/Assignbeta1_power/read:0
7
beta2_power:0beta2_power/Assignbeta2_power/read:0
7
weight/Adam:0weight/Adam/Assignweight/Adam/read:0
=
weight/Adam_1:0weight/Adam_1/Assignweight/Adam_1/read:0
1
bias/Adam:0bias/Adam/Assignbias/Adam/read:0
7
bias/Adam_1:0bias/Adam_1/Assignbias/Adam_1/read:0DW G