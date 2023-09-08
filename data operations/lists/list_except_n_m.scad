include <master_connector.scad>

function list_except_n_m(input_data,n,m) = 

assert(is_list(input_data))

assert(is_num(n)) assert(is_num(m))

assert(m>=n) assert(m<=len(input_data))

concat(
    list_upto_n(input_data,n),
    list_after_n(input_data,+m)
);


test_list_1 = [for(q=[0:1:10]) q];

echo(test_list_1);

echo(list_except_n_m(test_list_1,2,8));//unfinished
