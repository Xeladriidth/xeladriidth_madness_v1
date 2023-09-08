function factorial (input_num,index,carry) = 

assert(is_num(input_num))

(
  (input_num==0)
)?
    1:

(
  (index==undef)
||(carry==undef)
)?
    factorial(input_num,1,1):

(
  (index>=input_num+1)
)?
    carry:

    factorial(input_num,index+1,carry*index);
//unfinished
