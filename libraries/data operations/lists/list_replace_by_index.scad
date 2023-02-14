function list_replace_by_index(target_list,projectile,index,carry) = 

assert(len(projectile)==2)
    //anatomy of projectile: [aim,payload]

assert(is_list(target_list))

(
  (index==undef)
||(carry==undef)
)?
    list_replace_by_index(target_list,projectile,0,[]):

(
  (index>=len(target_list))
)?
    carry:

(
  (index<len(target_list))
&&(index==projectile[0])
)?
    list_replace_by_index(target_list,projectile,index+1,concat(carry,projectile[1])):

(
  (index<len(target_list))
&&(index!=projectile[0])
)?
    list_replace_by_index(target_list,projectile,index+1,
        concat(carry,
            [target_list[index]]
        )
    ):


assert(false,"function definition overrun for function list_replace_by_index");