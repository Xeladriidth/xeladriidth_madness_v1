function example(input_1,input_2) = 

(
  (input_1 == true)
&&(input_2 == true)
)?
    "outcome_1":

(
  (input_1 == true)
&&(input_2 == false)
)?
    "outcome_2":

(
  (input_1 == false)
&&(input_2 == true)
)?
    "outcome_2":

(
  (input_1 == false)
&&(input_2 == false)
)?
    "outcome_2":


assert(false);

echo(str("outcome_","1"));//unfinished
