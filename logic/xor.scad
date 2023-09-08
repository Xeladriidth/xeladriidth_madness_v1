function xor(input_1,input_2) = 

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
    false:

(
  (input_1 == true)
||(input_2 == true)
)?
    true:

assert(false);

echo(xor(true,false));

echo(xor(false,true));

echo(xor(false,false));

echo(xor(true,true));//unfinished
