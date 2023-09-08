include <master_connector.scad>

function list_map(table,map,pointer,carry) =

assert(is_list(table))

assert(is_list(map))

assert(list_highest_num(map)<len(table))

//purpose of function: gets served a lookup table and a mapping table;

//zip together a new list from looking up indexes on table one at a time

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    list_map(table,map,0,[]):

(
  (pointer>=len(map))
)?
    carry:

(
  pointer<len(map)
)?
    list_map(table,map,pointer+1,
        concat(carry,
        table[map[pointer]]
        )
    ):

assert(false,"function definition overrun for function list_map");

test_list_1 = [for(q=[0:1:10]) 20-q];
echo(test_list_1);
echo(list_only_nums(test_list_1));

test_map_1 = [10,0];
echo(test_map_1);
echo(list_only_nums(test_map_1));

echo(list_highest_num(test_map_1)<len(test_list_1));

echo(list_map(test_list_1,test_map_1));//unfinished
