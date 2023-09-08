include <master_connector.scad>

list_insert = "
function takes a target list and a list of inserts with anatomy [index,payload]
returns a list with the new element included, len is +1
arguments -input_data expects list, -inserts expects list of 2len elements
";

function list_insert(input_data,inserts,pointer) = 

assert(is_list(input_data))

(
  (is_list(inserts))
&&(!is_array(inserts))
&&(len(inserts)==2)
)?
    list_insert_single(input_data,inserts):

assert(list_only_ntuples(inserts,2))

(
  (ndef(pointer))
)?
    list_insert(input_data,inserts,0):

(
  (pointer>=len(inserts))
)?
    input_data:

(
  (pointer<len(inserts))
)?
    list_insert(
        list_insert_single(input_data,inserts[pointer])
    ,inserts
    ,pointer+1):

assert(false,"function definition overrun for function list_insert");

test_list_1 = [for(q=[0:1:10]) q];

echo(test_list_1);

test_insert_1 =[for(q=[0:1:10]) [q,10-q]];

echo(test_insert_1);

for(q=[0:1:10]) echo(list_insert_single(test_list_1,test_insert_1[q]));

echo(list_insert(test_list_1,test_insert_1));//unfinished
