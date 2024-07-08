module IntegerList = struct
  type t = int list
  let rec sort l =
    match l with
    | [] -> []
    | [_a] -> l
    | a :: b :: m -> 
      match sort (b :: m) with
      | c :: r ->
        if (a < c) then 
          a :: c :: r 
        else
          c :: sort (a :: r)
      | [] -> []
  
  let rec printList l =
      match l with 
      | [] -> ""
      | a :: m -> String.cat (String.cat (string_of_int a) "; ") (printList m)
  end