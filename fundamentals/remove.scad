include <master_connector.scad>

remove = "

";


function remove(input_data,removor) = 

assert(!ndef(input_data))

(
  (ndef(removor))
||(span(removor==0))
)?
    input_data:

assert(false,"function definition overrun for function remove");//unfinished
