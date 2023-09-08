function list_contains_numbers(input,index) = 
assert(is_list(input))

(index==undef)?
    list_contains_numbers(input,0):
    
(
  (index>=len(input))
)?
    true:
    
(
  (index<len(input))
&&(!is_num(input[index]))
)?
    false:

(
  (index<len(input))
&&(is_num(input[index]))
)?
    list_contains_numbers(input,index+1):

assert(false,
"end of function definition for function list_contains_numbers"
);

test_list_1 = [ for(q=[0:1:10]) round(rands(0,9,1)[0])];

echo(test_list_1);

echo(list_contains_numbers(test_list_1));
//unfinished
