// this library contains a series of test cases for various functions;
//divided into numbers, strings, lists, arrays, tables and structures
//navigation: @numbers // @strings  //@lists  //@tables  //@structures

//@numbers

include <master_connector.scad>

unsigned_integer_32_max = pow(2,32)-1;

unsigned_integer_32_overmax = pow(2,32);

signed_integer_32_max = pow(2,31)-1;

unsigned_integer_64_max = pow(2,64)-1;

unsigned_integer_64_overmax = pow(2,64);

signed_integer_64_max = pow(2,63) -1;

signed_integer_64_overmax = pow(2,64);

test_negative = -1;

test_positive = +1;

test_zero = 0;

//@strings

empty_string = "";

string_actually_numbers = "0123456789";

string_alphanumerics = "0123456789abcdefghijklmnopqrstuvwxyz";

string_hexadecics = "0123456789abcdef";

string_alphabetics = "abcdefghijklmnopqrstuvwxyz";

test_list_1 = [for(q=[0:1:127]) q];

test_array_1 = (
fold( [for(q=[0:1:127]) q] , [2,2,2])
);

echo(test_array_1);//unfinished
