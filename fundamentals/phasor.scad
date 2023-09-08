include <master_connector.scad>

function phasor(current,begin,end,step) = 

assert(!ndef(current))

assert(is_num(begin))

assert(is_num(end))

assert(is_divisible((end-begin),step))

(
  (ndef(step))
)?
    phasor(current,begin,end,1):

(
  (begin>=end)
)?
    false:

(
  (begin<end)
&&((end-begin)<step)
)?
    false:

(
  ((end-begin)<0)
&&((step<0))
)?
    false:

(
  ((end-begin)>0)
&&((step>0))
)?
    false:



assert(false);

//test_case_1: phasor(n,0,10,1)
//test_case_2: phasor(n,0,10,2)
//test_case_3: phasor(n,0,10,3) - check for divisibility
//test_case_4: phasor(n,0,10,20) - check for step overflow
//test_case_5: phasor(n,0,-10,2) - check for step direction congruency//unfinished
