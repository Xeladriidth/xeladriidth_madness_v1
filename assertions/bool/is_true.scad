is_true = "
arguments -input(expects item)
";

function is_true(input) =

assert(!is_undef(input))

(
  !(is_bool(input))
)?
    undef:

(
  (is_bool(input))
&&(input==true)
)?
    true:

(
  (is_bool(input))
&&(input!=true)
)?
    false:

assert(false,"function definition overrun for function is_true");//unfinished
