include <fundamentals/elem_array.scad>

function elem(input_data,retrievor,pointer) = 

assert(!is_undef(input_data))

assert(!is_undef(retrievor))

(
  (is_num(retrievor))
)?
    input_data[retrievor]:

(
  (is_list(retrievor))
)?
    elem(input_data,retrievor,0):

(
  (is_string(retrievor))
)?
    assert(false,"function not built for string coordinates"):

(
  (is_array(retrievor))
)?
    elem_array(input_data,retrievor):

(
  (pointer>=len(retrievor))
)?
    input_data:

(
  (pointer<len(retrievor))
)?
    elem(input_data[retrievor[pointer]],retrievor,pointer++1):

assert(false,"function definition overrun for function elem");

/* types of input:

input_data: lists,strings,arrays,structures

coordinate forms: num, lists, arrays????

*///unfinished
