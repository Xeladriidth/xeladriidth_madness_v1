include <master_connector.scad>

function list_replace_by_list(target_list,projectile_list,index) =

assert(is_list(target_list))

assert(is_list(projectile_list))

assert(len(projectile_list[0])==2)

(
  (index==undef)
)?
    list_replace_by_list(target_list,projectile_list,0):

(
  (index>=len(projectile_list))
)?
    target_list:

(
  (index<len(projectile_list))
)?
    list_replace_by_list(
        list_replace_by_index(target_list,projectile_list[index])
        ,index+1
    ):

assert(false,"function definition overrun for function list_replace_by_list");

