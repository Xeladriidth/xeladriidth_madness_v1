include <master_connector.scad>

function generate_conditional_code(input_definitions,pointer,carry) = 

assert(list_only_strings(input_definitions))

(
  (ndef(pointer))
||(ndef(carry))
)?
    generate_conditional_code(input_definitions,0,str()):

(
  (pointer>=len(input_definitions))
)?
    str(carry):

(
  (pointer<len(input_definitions))
)?
    generate_conditional_code(input_definitions,inc(pointer),
    str(carry,
    "(","(",input_definitions[pointer][0],input_definitions[pointer][1],input_definitions[pointer][2],")",")","?",input_definitions[pointer][3],":"
    )
    ):

//goal of function consists of generating a single string that can be copied into another file and works as a proper conditional:

/*anatomy of variable input_definitions:

[
[condition_0,state_0],
[association_1,condition_1,challenge_1,state_1,output_invocation]
];

*/

/*

(
                (condition_0 = state_0)
(association_1) (condition_1 == state_1)
)?
    output_invocation

assert(false);
*/

false;

test_definition_1 = [

["a","==","true","true"]
];

echo(generate_conditional_code(test_definition_1));

//ok, this takes care of single variable challenges and responses. what about more variables and nested conditions? first, we need a way to visualise branched lists in order to handle this shit//unfinished
