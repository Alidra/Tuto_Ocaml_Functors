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

module SortFunctor = functor (E : Element) -> struct
  type t = E.t list
  let rec sort l =
    match l with
    | [] -> []
    | [_a] -> l
    | a :: b :: m -> 
      match sort (b :: m) with
      | c :: r ->
        if ( E.(<) a c) then 
          a :: c :: r 
        else
          c :: sort (a :: r)
      | [] -> []
  
  let rec printList l =
      match l with 
      | [] -> ""
      | a :: m -> 
        String.cat (String.cat (E.string_of_element a) "; ")
        (printList m)
end