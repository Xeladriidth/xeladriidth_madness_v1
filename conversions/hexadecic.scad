hexadecic_lookup_vector = [
"0","1","2","3","4","5","6","7","8","9",
"A","B","C","D","E","F"
];

function  hexadecic(input_number) = 

(
  (input_number>15)
)?
    hexadecic(input_number-16):

(
  (input_number<0)
)?
    hexadecic(input_number+16):

hexadecic_lookup_vector[input_number];

//for(q=[0:1:20]) echo(hexadecic(q));