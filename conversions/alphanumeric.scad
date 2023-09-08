include <mathematics/logarithm.scad>

alphanumeric_lookup_vector = [
"0","1","2","3","4","5","6","7","8","9",
"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",
"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"
];

alphanumeric_lookup_table =
[[0, "0"], [1, "1"], [2, "2"], [3, "3"], [4, "4"], [5, "5"], [6, "6"], [7, "7"], [8, "8"], [9, "9"], [10, "a"], [11, "b"], [12, "c"], [13, "d"], [14, "e"], [15, "f"], [16, "g"], [17, "h"], [18, "i"], [19, "j"], [20, "k"], [21, "l"], [22, "m"], [23, "n"], [24, "o"], [25, "p"], [26, "q"], [27, "r"], [28, "s"], [29, "t"], [30, "u"], [31, "v"], [32, "w"], [33, "x"], [34, "y"], [35, "z"], [36, "A"], [37, "B"], [38, "C"], [39, "D"], [40, "E"], [41, "F"], [42, "G"], [43, "H"], [44, "I"], [45, "J"], [46, "K"], [47, "L"], [48, "M"], [49, "N"], [50, "O"], [51, "P"], [52, "Q"], [53, "R"], [54, "S"], [55, "T"], [56, "U"], [57, "V"], [58, "W"], [59, "X"], [60, "Y"], [61, "Z"]]

;

test_string_1 = "thequickbrownfoxjumpsoverthelazydog";



//for(q=[0:len(alphanumeric_lookup_vector)-1]) echo(alphanumeric_lookup_vector[q]);

function table_generator(input_table,pointer,carry) = 

assert(!is_undef(input_table))

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    table_generator(input_table,0,[]):

(
  (pointer>=len(input_table))
)?
    carry:

(
  (pointer<len(input_table))
)?
    table_generator(input_table,pointer+1,concat(carry,[[pointer,input_table[pointer]]])):

assert(false);


//for(q=[0:1:35]) echo(alphanumeric_lookup_table[q]);

function lookup_string(searchant,pointer) = 


assert(!is_undef(searchant))

(
  (is_undef(pointer))
)?
    lookup_string(searchant,0):

(
  (pointer>=len(alphanumeric_lookup_table))
)?
    undef:

(
  (pointer<len(alphanumeric_lookup_table))
&&(alphanumeric_lookup_table[pointer][1]==searchant)
)?
    alphanumeric_lookup_table[pointer][0]:

(
  (pointer<len(alphanumeric_lookup_table))
&&(alphanumeric_lookup_table[pointer][0]==searchant)
)?
    alphanumeric_lookup_table[pointer][1]:

(
  (pointer<len(alphanumeric_lookup_table))
&&(alphanumeric_lookup_table[pointer][1]!=searchant)
&&(alphanumeric_lookup_table[pointer][0]!=searchant)
)?
    lookup_string(searchant,pointer+1):

assert(false,"function definition overrun for function lookup_string");

/*
for(q=[0:len(test_string_1)-1]) echo(
//test_string_1[q]
);*/

alphanumeric = "
arguments input_number(expects num or string, returns opposed format)
";

function alphanumeric(input,pointer,carry) = 

assert(!is_undef(input))

assert(
  (is_string(input))
||(is_num(input))
)

(
  (is_undef(pointer))
&&(is_num(input))
)?
    alphanumeric(input,0,""):

(
  (is_undef(pointer))
&&(is_string(input))
)?
    alphanumeric(input,0,0):

(
  (is_string(input))
&&(pointer>=len(input))
)?
    carry:

(
  (is_num(input))
&&(pointer>=floor(log(input,62)))
)?
    carry:

(
  (is_num(input))
&&(pointer<floor(log(input,62)))
)?
    logarithm(input,alphanumeric_lookup_table[len(alphanumeric_lookup_table)-1][1]):

(
  (is_string(input))
&&(pointer<len(input))
)?
    alphanumeric(input,pointer+1,
        carry+
        lookup_string(input[pointer])*10^(len(input)-pointer-1)
    ):

//conversion of string to num: look up letter in table, then multiply with 62^(len-pointer)

//conversion of num to string: perform base-62 division on number, look up individual results

assert(false,"function definition overrun for function alphanumeric");

echo(
alphanumeric(
"abcde"
)
);



echo(
lookup_string(
lookup_string(
"a"
)
)
);
//lookup(num) dun work


/*
for(a=[0:1])
for (q=[0:1:len(alphanumeric_lookup_table)-1]) 
echo(
lookup_string(
lookup_string(
alphanumeric_lookup_table[q][a]
)
)
==
alphanumeric_lookup_table[q][a]
);

*/