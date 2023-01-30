letter_lookup_vector = [
"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O",
"P","Q","R","S","T","U","V","W","X","Y","Z"
];

function  letter(input_number) = 

(
  (input_number>25)
)?
    letter(input_number-26):

(
  (input_number<0)
)?
    letter(input_number+26):

letter_lookup_vector[input_number];

//for(q=[0:1:10]) echo(letter(q));