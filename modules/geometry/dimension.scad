// alle längen des arrow sind relativ! z.b. Head = 0.2 length


function distance(point1,point2) = 
pow(
    pow(point1[0]-point2[0],2)+
    pow(point1[1]-point2[1],2)+
    pow(point1[2]-point2[2],2)
,0.5);

function center(point1,point2) =

[
    0.5*(point1[0]+point2[0]),
    0.5*(point1[1]+point2[1]),
    0.5*(point1[2]+point2[2]),
];


module arrow(point1,point2,radius) {

hull(){

translate(point1) sphere(r=radius, $fn = 2);
translate(point2) sphere(r=radius, $fn = 2);

}

}



point_1 = [10,10,10];

point_2 = [20,20,20];

//arrow(point_1,point_2,0.2);

//translate(point_1) sphere(1);

//translate(point_2) sphere(1);

function orientation_xy(point1,point2) = 

[
0,0,
atan(-(point2[0]-point1[0])/(point2[1]-point1[0]))
];

function orientation_xz(point1,point2) = 

[
0,
atan(-(point2[2]-point1[2])/(point2[0]-point1[0])),
0
];

module arrow2(point1,point2) {



translate(point1)

rotate(-orientation_xy(point1,point2))
rotate(orientation_xz(point1,point2))
translate([distance(point1,point2)/2,0,0])
rotate([0,90,0]) 
cylinder(h = distance(point1,point2),d = 1, center=true);

}


//arrow2(point_1,point_2);

//3d subsystem follows

function distance_2d(point1,point2) = 

pow(
pow(point2[0]-point1[0],2)+
pow(point2[1]-point1[1],2)
,0.5);

function orientation_2d(point1,point2) =
[
0,0,
180+atan((point2[1]-point1[1])/(point2[0]-point1[0]))
];


module line(point1,point2,width) {

translate(point1)

rotate(orientation_2d(point1,point2))

translate([distance_2d(point1,point2),0]/2)

square([distance_2d(point1,point2),width],center=true);

}




point_3 = [10,0];
point_4 = [0,10];

//line(point_3,point_4,0.1);

module arrowhead(length,width) {

polygon(
points = [
[length/2,0],
[-length/2,width/2],
[-length/2,-width/2]
]
);

}

module arrow_2d(point1,point2,width) {

union(){

translate(point1)

rotate(orientation_2d(point1,point2))

translate([distance_2d(point1,point2),0]/2) {

square([distance_2d(point1,point2)-width*8,width],center=true);

translate([distance_2d(point1,point2)/2-2*width,0]) arrowhead(4*width,2*width);

translate(-[distance_2d(point1,point2)/2-2*width,0]) rotate([0,0,180])  arrowhead(4*width,2*width);

}

}}

//arrow_2d(point_3,point_4,1);


module dimension_2d(point1,point2,dist_sum,dist_1,dist_2,width){

assert(!is_undef(point_1));
assert(!is_undef(point_2));
assert(!is_undef(dist_sum));
assert(!is_undef(dist_1));
assert(!is_undef(dist_2));
assert(!is_undef(width));

//initial arrow

union(){

translate(point1)

rotate(orientation_2d(point1,point2))

translate([distance_2d(point1,point2)/2,-dist_sum]) {

pointer_double(distance_2d(point1,point2)-width,width);

//translate([distance_2d(point1,point2)/2-2*width,0]) arrowhead(4*width,2*width);

//translate(-[distance_2d(point1,point2)/2-2*width,0]) rotate([0,0,180])  arrowhead(4*width,2*width);

translate([2*width,-2*width])  rotate([0,0,180])  text(str(distance_2d(point1,point2)),size = 1*width); 

//translate([distance_2d(point1,point2)/2,dist_sum/2-width*2-dist_1/2]) square([width/2,dist_sum-dist_1+width*4],center=true);

translate([distance_2d(point1,point2)/2,dist_sum-dist_1]) pointer(point1,dist_sum,width,-90,0);

//translate([-distance_2d(point1,point2)/2,dist_sum/2-width*2-dist_2/2]) square([width/2,dist_sum-dist_2+width*4],center=true);

translate([-distance_2d(point1,point2)/2,dist_sum-dist_2]) pointer(point1,dist_sum,width,-90,0);

}}

//helper line a

//helper line b

}

//dimension_2d(point_3,point_4,10,5,5,1);


module dimension_dimension_arc(center,radius,dist_1,dist_2,angle,width) {

assert(!is_undef(center));
assert(!is_undef(radius));
assert(!is_undef(dist_1));
assert(!is_undef(dist_2));
assert(!is_undef(angle));
assert(!is_undef(width));

}

function circle(radius,angle,segments,pointer,carry) = 

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    circle(radius,angle,segments,0,[[0,0]]):

(
  (is_undef(segments))
)?
    circle(radius,angle,32,pointer,carry):

(
  (is_undef(angle))
)?
    circle(radius,360,segments,pointer,carry):

(
  (pointer>=segments)
||(360/segments*pointer>angle)
)?
    carry:

(
  (pointer<segments)
)?
    circle(radius,angle,segments,pointer+1,
    concat(carry,
    [[cos(360/segments*pointer)*radius,radius*sin(360/segments*pointer)]]
    )
    ):

assert(false);

module dimension_arc(center,radius,angle,width,dist_1,dist_2) {

assert(!is_undef(center))
assert(!is_undef(radius))
assert(!is_undef(angle))
assert(!is_undef(width))
assert(!is_undef(dist_1))
assert(!is_undef(dist_2))

translate(center){ difference(){

polygon(circle(radius,angle));
circle(r=radius-width);
//insert offset for arrow handles later
}

 pointer(center,radius+width-dist_1,width,0,dist_1);
 pointer(center,radius+width-dist_2,width,angle,dist_2);
rotate([0,0,angle/2]) translate([radius+width/2,width]) rotate([0,0,-90])  text(str(angle),size=1);
}}

//dimension_arc([0,0],10,160,1,2,2);

//polygon(circle(10,180));

module pointer(center_point,length,width,angle,distance) {

assert(!is_undef(center_point))
assert(!is_undef(length))
assert(!is_undef(width))
assert(!is_undef(angle))
assert(!is_undef(distance))

rotate([0,0,angle]) 

translate([distance,0,0]) 

polygon(points=[
[0,0],
[width*2,width/2],
[length,width/2],
[length,-width/2],
[width*2,-width/2]
]);

}

module pointer_double(length,width) {

polygon(points = [
[length/2,0],
[length/2-2*width,width/2],
[-length/2+2*width,width/2],
[-length/2,0],
[-length/2+2*width,-width/2],
[length/2-2*width,-width/2]
]);

}


module dimension_radius(center,radius,width) {
union(){
for(q=[0:1:3])  pointer(center,width*2,width,90*q,0);
difference(){
circle(r = radius);
circle(r = radius-width);
}
translate(center) translate([0,width*3]) text(str(radius),size=1);

}}


//dimension_radius([0,0],10,1);//unfinished
