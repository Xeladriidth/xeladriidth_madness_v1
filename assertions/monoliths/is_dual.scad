use <assertions/lists/list_only_strings.scad>

function is_dual(input) = 

assert(is_list(input))

(
  (len(input)!=2)
)?
    false:

(
  (input[0]==[])
&&(list_only_strings(input[1]))
)?
    true:

(
  (list_only_strings(input[0]))
&&(input[1]==[])
)?
    true:

(
  (list_only_strings(input[0]))
&&(list_only_strings(input[1]))
)?
    false:

(
  (!list_only_strings(input[0]))
&&(!list_only_strings(input[1]))
)?
    false:

(
  (list_only_strings(input[0]))
&&(!list_only_strings(input[1]))
)?
    true:

(
  (!list_only_strings(input[0]))
&&(list_only_strings(input[1]))
)?
    true:



assert(false,"function definition overrun for function is_dual");

test_dual_1 = [[1,2,3],"A"];

echo(
is_dual(test_dual_1)
);