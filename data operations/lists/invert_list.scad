//use <assertions/num_parity.scad>

function invert_list(input_list,index,carry) = 

assert(is_list(input_list))

(
  (index==undef)
||(carry==undef)
)?
    invert_list(input_list,0,[]):

//behold the two cases - length is even or odd?
//odd is easier - floor(len/2)+1, double concat
//even -> floor(len/2), stop one indexation short, add last element on exit

(
  (num_odd(len(input_list)))
&&(index>=len(input_list)/2)
)?
    carry:

(
  (num_odd(len(input_list)))
&&(index<len(input_list)/2)
)?
    invert_list(input_list,index+1,
        concat(
            input_list[floor(len(input_list)/2)+index],
            carry,
            input_list[floor(len(input_list)/2)-index-1]
        )
    ):

(
  (!num_odd(len(input_list)))
&&(index>=len(input_list)/2-1)
)?
    concat(input_list[len(input_list)-1], carry):

(
  (!num_odd(len(input_list)))
&&(index<len(input_list)/2)
)?
    invert_list(input_list,index+1,
        concat(
            input_list[floor(len(input_list)/2)+index],
            carry,
            input_list[floor(len(input_list)/2)-index-1]
        )
    ):

false;




function num_odd(input_num) = 

(
  (input_num==0)
)?
    undef:

(
  (floor(input_num/2)==input_num/2)
)?
    false:

    true;

