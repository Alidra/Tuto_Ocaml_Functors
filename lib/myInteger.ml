module type Element = sig
  type t
  val (<) : t -> t -> bool
  val string_of_element : t -> string
end

module MyInteger = struct
  type t = int
  let (<) a b = a < b
  let string_of_element = string_of_int
end
