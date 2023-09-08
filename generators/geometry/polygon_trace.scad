include <master_connector.scad>

polygon_trace = "
function takes a square two-array of [angle,distance] and returns a list of points
arguments:
-input_traces, expects two-array
-current_position,expects internal two-list
-pointer, expects internal num
-carry,expects output two-array
";

function polygon_trace(input_traces,current_position,pointer,carry) =

assert(is_array(input_traces))

(
  (ndef(pointer))
||(ndef(carry))
||(ndef(current_position))
)?
    polygon_trace(input_traces,[0,0],0,[]):

(
  (pointer>=len(input_traces))
)?
    carry:

(
  (pointer<len(input_traces))
)?
    polygon_trace(input_traces,
    [current_position[0]
    +input_traces[pointer][1]*cos(input_traces[pointer][0]),
    current_position[1]
    +input_traces[pointer][1]*sin(input_traces[pointer][0])
    ],
    pointer+1,
    concat(carry,
    [[current_position[0]
    +input_traces[pointer][1]*cos(input_traces[pointer][0]),
    current_position[1]
    +input_traces[pointer][1]*sin(input_traces[pointer][0])
    ]]
    )
    ):

assert(false,"function definition overrun for function polygon_trace");

//syntax:[ [angle,distance] ]
example_trace = [
[0,10],
[90,10],
[180,10],
//[270,10]
[-90,10]
];

polygon(points = polygon_trace(example_trace));

echo(polygon_trace(example_trace));