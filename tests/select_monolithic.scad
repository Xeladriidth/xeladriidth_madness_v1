include <master_connector.scad>

select_monolithic = "function select_monolithic;
function is intended to replace function select() via waystation transfer later on
function works via monolithic datastack with following syntax:

[
[datastack,%datastack],
[selector,%selector],
§opt[pointer,%pointer],
$opt[carry,%carry]
]
*/
";

//first test will be with manually initialised datastack; this constitutes first foray into 

function monolith_pointer(input_monolith,pointer) = 

(
  (ndef(pointer))
)?
    monolith_pointer(input_monolith,pointer):

(
  (pointer>span(input_monolith)/2)
)?
    assert(false,"error in function monolith_pointer; inputstack contains no pointer"):
//....now get the actual pointer
//foreach(dual in monolith)
//check(dual[1]=="pointer")
//return pointer else advance

(
  (input_monolith[pointer][1] == "pointer")
&&(pointer<=span(input_monolith)/2)
)?
    input_monolith[pointer][0]:

(
  (input_monolith[pointer][1] != "pointer")
&&(pointer<=span(input_monolith)/2)
)?
    monolith_pointer(input_monolith,inc(pointer)):

assert(false,"function definition overrun for function monolith_pointer");

/*

function monolith_carry(input_monolith) = 

function monolith_instruction(input_monolith) = 

function select_monolithic(input_stack) = 

*/