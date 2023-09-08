function list_remove_by_list(target_list,projectile_list,index) = 

assert(is_list(target_list))

(
 (!is_list(projectile_list))
)?
    list_remove_by_index(target_list,projectile_list):

(
  (index==undef)
)?
    list_remove_by_list(target_list,projectile_list,0):

(
  (index>=len(projectile_list))
)?
    target_list:

(
  (index<len(projectile_list))
)?
    list_remove_by_list(
        list_remove_by_index(target_list,projectile_list[index]),
        index+1
    ):

assert(false, "function definition overrun for function list_replace_by_list");
//unfinished
