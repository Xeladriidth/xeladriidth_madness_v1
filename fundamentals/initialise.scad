initialise = " function initialise, goal of function is inputting a monolithic datastack with an arbitrary partition of empty but marked slots, returns initialised mainstack with provided default values in empty slots
mainstack syntax: [
[inputstack,$inputstack],
[$value_default,$value_descriptor]
]
";

function initialise(mainstack) = 

//function first needs to initialise itself hardstart



assert(false,"function definition overrun for function initialise");

test_list_1 = [for(q=[0:1:10]) round(rands(0,9,1)[0])];

test_input_1 = [
[test_list_1,"input_data"],
[undef,"pointer"],
[undef,"carry"]
];

echo(initialise);