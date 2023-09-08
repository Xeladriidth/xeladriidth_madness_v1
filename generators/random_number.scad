function random_number(input_length,limit_high,limit_low,index,carry) = 

assert(is_num(input_length))

(
  (is_undef(limit_low))
)?
    random_number(input_length,limit_high,0,index,carry):

(
  (is_undef(limit_high))
)?
    random_number(input_length,9,limit_low,index,carry):

assert(limit_high>=limit_low)

(
  (index==undef)
||(carry==undef)
)?
    random_number(input_length,limit_high,limit_low,0,0): //numerical carry

(
  (index>=input_length)
)?
    carry:

(
  (index<input_length)
)? //while index under zero roll random digit and add to number
    random_number(input_length,limit_high,limit_low,index+1,
        carry+pow(10,index)*
            round(rands(limit_high,limit_low,1)[0]
        )
    ):

assert(false,"function definition overrun for function random_number");
//unfinished
