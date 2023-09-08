include <master_connector.scad>

function random_list(input_definitor,limits,pointer,carry) = 

assert(!ndef(input_definitor))

(
  (ndef(limits))
)?
    random_list(input_definitor,[0,9],pointer,carry):

(
  (ndef(pointer))
||(ndef(carry))
)?
    random_list(input_definitor,limits,0,[]):

(
  (pointer>=input_definitor)
)?
    carry:

(
  (pointer<input_definitor)
)?
    random_list(input_definitor,limits,pointer+1,
    concat(carry,
        round(rands(limits[0],limits[1],1)[0])
    )
    ):

assert(false);

echo(random_list(10));//unfinished
