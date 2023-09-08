include <master_connector.scad>

//goal of file: generate a random array that has defined: -depth, -folder,

function random_array(input_definitor,input_limits,pointer,carry) = 

//2 phases: generate list, then fold

assert(!ndef(input_definitor))

(
  (ndef(input_limits))
)?
    random_array(input_definitor,[-10,10],pointer,carry):

(
  (ndef(pointer))
||(ndef(carry))
)?
    random_array(input_definitor,input_limits,0,[]):

(
  (is_num(input_definitor))
)?  //initialise for depth limit only; therefore generate an array with random span and random folder with definite depth
//generate a random number list that serves as a folder, then generate raw list, then fold list

random_array(random_list(input_definitor),input_limits,pointer,carry):

(
  (list_only_nums(input_definitor))
)?


    fold_list(
        random_list(
            list_product_offset(input_definitor,0),input_limits
        )
    ,input_definitor):




assert(false);

echo(random_array(3));//unfinished
