function generate_list(length,content,index,carry) = 

(length==undef)?
    generate_list(1,content,index,carry):
    
(content==undef)?
    generate_list(length,0,index,carry):
    
(index==undef||carry==undef)?
    generate_list(length,content,0,[]):
    
(index>=length)?
    carry:
    
(index<length)?
    generate_list(
    length,content,index+1,
    concat(
    carry,
    [content]
    )
    ):
    
undef;


echo(generate_list(3));


echo(generate_list(5,2));//unfinished
