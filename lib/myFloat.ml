module MyFloat = struct
  type t = float
  let (<) a b = a < b
  let string_of_element = string_of_float
end
