function nand(input_1,input_2) = 

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


echo(nand(true,false));

echo(nand(undef,undef));

echo(nand(true,true));

echo(nand(false,false));//unfinished
