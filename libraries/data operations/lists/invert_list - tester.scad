use <invert_list.scad>

test_list_1 = [
for(q=[0:1:9]) q
];

echo(test_list_1);

echo(invert_list(test_list_1));

echo(invert_list([]));