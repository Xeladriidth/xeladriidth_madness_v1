include <master_connector.scad>

function is_divisible(input,sample) = 

assert((is_num(input)))

assert((is_num(sample)))


(
  (input==0)
)?
    false:

(
  (input==0)
)?
    false:

(
  floor(input/sample)
==(input/sample)
)?
    true:

(
  floor(input/sample)
!=(input/sample)
)?
    false:

assert(false,"function definition overrun for function is_divisible");


echo(is_divisible(10,1));

echo(is_divisible(10,2));

//echo(is_divisible(10,0));

echo(is_divisible(10,3));

echo(is_divisible(0,10));//unfinished
