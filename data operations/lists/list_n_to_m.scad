include <master_connector.scad>

function list_n_to_m(input_data,n,m) =

assert(is_list(input_data))

assert(is_num(n)) assert(is_num(m))

assert(m>n) assert(m<=len(input_data))

list_last_n(
    list_upto_n(
        input_data,m
    )
,m-n);

test_list_1 = [for(q=[0:1:10]) q];

echo(test_list_1);

echo(list_n_to_m(test_list_1,2,4));