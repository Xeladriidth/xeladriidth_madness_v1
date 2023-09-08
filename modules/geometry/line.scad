module line(input_points,input_graphs) {

if(is_undef(input_graphs)) {

line(input_points,
line_default_graphs(len(input_points))
);

}

polygon(points = input_points

);

}

function line_default_graphs(n,pointer,carry) = 

assert(is_num(n)&&(n>0))

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    line_default_graphs(n,n-1,[]):

(
  (pointer<=0)
)?
    carry:

(
  (pointer>0)
)?
    line_default_graphs(n,pointer-1,
    concat(
    [[pointer-1,pointer]]
    ,carry
    ,[[pointer,pointer-1]]
    )
    ):

assert(false);

//echo(line_default_graphs(10));

len_points_list = 3;

random_points_list_1 = [for(q=[1:1:len_points_list]) [round(rands(-10,10,1)[0]),round(rands(-10,10,1)[0])] ];

echo(random_points_list_1);

//echo(line_default_graphs(len_points_list));

linear_extrude(height = 1) {
polygon(
    points = random_points_list_1,
    paths = line_default_graphs(len_points_list)
    );

}

//for(q=[0:1:len_points_list-1]) translate(random_points_list_1[q]) sphere(1);

function scale_point_list(input_list,scalar,pointer,carry) = 

assert(is_list(input_list))

assert(is_list(scalar))

assert(len(scalar)==len(input_list[0]))

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    scale_point_list(input_list,scalar,0,[]):

(
  (pointer>=len(input_list))
)?
    carry:

(
  (pointer<len(input_list))
)?
    scale_point_list(input_list,scalar,pointer+1,
    concat(carry,
    scale_point_single(input_list,scalar)
    )
    ):

assert(false);

function scale_point_single(input_point,scalar,pointer,carry) = 

assert(is_list(input_point))

assert(is_list(scalar))

assert(len(input_point) == len(scalar))

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    scale_point_single(input_point,scalar,0,[]):

(
  (pointer>=len(input_point))
)?
    carry:

(
  (

echo(scale_point_list(random_points_list_1,[0.99,0.99]));//unfinished
