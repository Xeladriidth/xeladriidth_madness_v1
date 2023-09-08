logarithm = "
function intakes a number and optionally a base, returns log(number) by the base; defaults to base 10 log
arguments:
-input expects num
-base expects num, defaults to 10
";

function logarithm(input,base) = 

assert(is_num(input))

(
  (!is_undef(base))
&&(!is_num(base))
)?
    undef:

(
  (is_undef(base))
)?
    log(input):

log(input) / log(base);

echo(logarithm(128));