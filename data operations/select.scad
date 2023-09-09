include <master_connector.scad>

select = " function serves as waystation to be later expanded; will feature several ways of selecting data, especially from arrays";

function select(input,instruction) = 

assert(!ndef(input))

(
  (ndef(instruction))
)?
    select_monolithic(input):

(
  (is_string(instruction))
)?
    select_instruction(input,instruction):

(
  (is_list(input))
&&(is_num(instruction))
)?
    select_list_single(input,instruction):

(
  (is_list(input))
&&(list_only_nums(instruction))
)?
    list_select(input,instruction):

assert(false,"function definition overrun for waystation function select");

test_list = [for(q=[0:1:20]) round(rands(0,9,1)[0])];
