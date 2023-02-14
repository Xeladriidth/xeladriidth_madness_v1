function fold(input_data,folder,pointer,carry) = 

assert
    (
      (is_list(input_data))
    ||(is_string(input_data))
    )

assert
    (
      (is_num(folder))
    ||(is_list(folder))
    )

(
  (is_string(input_data))
)?
    assert(false,"function fold not yet built for string input"):

undef;