function nor(input_1,input_2) = 

(
  (is_undef(input_1))
||(is_undef(input_2))
)?
    undef:

(
  (input_1 == true)
&&(input_2 == true)
)?
    false:

(
  (input_1 == false)
&&(input_2 == false)
)?
    true:

(
  (input_1 == true)
||(input_2 == true)
)?
    false:

assert(false);//unfinished
