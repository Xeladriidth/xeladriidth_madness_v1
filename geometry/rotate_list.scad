include <master_connector.scad>

rotate_list = "
function takes a square list of points aswell as a rotation vector, returns an array of the same outline with all points rotated around the provided center
arguments:
-input_list expects array-num-square
-rotator expects list-num with the same length as the points-array
-center expects list-num with same length as points-array
-pointer expects num internalia
-carry expects list internalia
";

function rotate_list(input_list,rotator,center,pointer,carry) = 

assert(is_list(input_list))

assert(is_list(rotator))

assert(len(input_list[0]) == len(rotator))

(
  (ndef(center))
)?
    rotate_list(input_list,rotator,[0,0,0],pointer,carry):  //replace with arbitrary dimensionality

(
  (ndef(pointer))
||(ndef(carry))
)?
    rotate_list(input_list,rotator,center,0,[]):

(
  (pointer>=len(input_list))
)?
    carry:

(
  (pointer<len(input_list))
)?
    rotate_list(
    input_list,
    rotator,
    center,
    pointer+1,
    concat(carry,
    rotate_point(input_list[pointer],rotator,center)
    )
    ):

assert(false,"function definition overrun for function rotate_list");

function rotate_point_radius(point1,point2,pointer,carry) =

assert(is_list(point1))

assert(is_list(point2))

assert(len(point1) == len(point2))

(
  (ndef(pointer))
||(ndef(carry))
)?
    rotate_point_radius(point1,point2,0,0):

(
  (pointer>=len(point1))
)?
    pow(carry,0.5):

assert(is_num(point1[pointer]))

assert(is_num(point2[pointer]))

(
  (pointer<len(point1))
)?
    rotate_point_radius(point1,point2,pointer+1,
    carry+pow(point1[pointer]-point2[pointer],2)
    ):

assert(false,"function definition overrun for function rotate_point_radius");

function rotate_point(point,center,angle,radius,pointer,carry) = 

assert(is_list(point)) assert(is_num(angle))

(
  (ndef(center))
)?
    rotate_point(point,default_pointer(len(point)),angle,radius,pointer,carry):

assert(len(point) == len(center))

(
  (ndef(radius))
)?
    rotate_point(point,center,angle,rotate_point_radius(point,center),pointer,carry):

(
 (ndef(pointer))
||(ndef(carry))
)?
    rotate_point(point,center,angle,radius,0,[]):


(
  (pointer>=len(point))
)?
    false:false;
