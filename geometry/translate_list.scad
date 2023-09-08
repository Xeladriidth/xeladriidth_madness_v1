include <master_connector.scad>

translate_list = "
function takes a n-array of points and, using a helper function translate_point, returns a new n-array of n width points
arguments: 
-input_list expects n-array-square-num
-translator expects n-list-num
-pointer expects internal num
-carry expects output n-array-square-num
";

function translate_list(input_list,translator,pointer,carry) = 

assert(is_list(input_list))

assert(list_only_nums(translator))

(
  (ndef(pointer))
||(ndef(carry))
)?
    translate_list(input_list,translator,0,[]):

(
  (pointer>=len(input_list))
)?
    carry:

(
  (pointer<len(input_list))
)?
    translate_list(
    input_list,translator,inc(pointer),
    concat(carry,
    [
    translate_point(input_list[pointer],translator)
    ]
    )
    ):

assert(false,"function definition overrun for functiont translate_list");

function translate_point(point1,point2,pointer,carry) =

assert(list_only_nums(point1))

assert(list_only_nums(point2))

assert(len(point1) == len(point2))

(
  (ndef(pointer))
||(ndef(carry))
)?
    translate_point(point1,point2,0,[]):

(
  (pointer>=len(point1))
)?
    carry:

(
  (pointer<len(point1))
)?
    translate_point(
    point1,
    point2,
    pointer+1,
    concat(carry,
    point1[pointer]+point2[pointer]
    )
    ):

assert(false,"function definition overrun for function translate_point");

example_list = 

[
[-10,-10],
[-10,10],
[10,10],
[10,-10]
];

echo(translate_list(example_list,[10,10]));