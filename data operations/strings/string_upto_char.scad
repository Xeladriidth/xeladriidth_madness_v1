string_upto_char = "
function takes string as left operand and letter as second operand, aswell as an optional index as third operand; returns the string upto that letter, or upto the index-th instance of this letter
arguments:
-input_string expects string
-searchant expects string-len1
-index expects num, defaults to 0 if not given
";

function string_upto_char(input_string,searchant,index,pointer,carry) = 

assert(is_string