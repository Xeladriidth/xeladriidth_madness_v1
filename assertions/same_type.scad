include <master_connector.scad>

same_type = "
arguments -input_1(expects data) -input_2(expects_data) -pointer(init 0)
";

function same_type(input_1,input_2,pointer) = 

assert(!is_undef(input_1))

assert(!is_undef(input_2))

(
  (is_undef(pointer))
)?
    same_type(input_1,input_2,0):

(
  (is_bool(input_1))
&&(is_bool(input_2))
)?
    true:

(
  (is_num(input_1))
&&(is_num(input_1))
)?
    true:

(
  (is_string(input_1))
&&(is_string(input_2))
)?
    true:

(
  (is_list(input_1)&&!is_array(input_2))
&&(is_list(input_2)&&!is_array(input_2))
)?
    true:

(
  (is_array(input_1))
&&(is_array(input_2))
)?
    true:

//structure assessments yet to be made

//connectome assessments yet to be made

//header/footer/descriptor assessments also yet to be made

assert(false,"data types do not match in function same_type");//unfinished
