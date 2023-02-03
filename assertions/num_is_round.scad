function num_is_round(input) = 

assert(is_num(input))

(
  (floor(input/2))
==(input/2)
)?
    true:false;


echo(num_is_round(0));