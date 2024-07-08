open PlayWithModules.Integer.MyInteger
open PlayWithModules.IList. IntegerList
open PlayWithModules.SortFunctor
let () = 
  print_endline (string_of_bool (compare 5 9));
  print_endline (printList (sort [ 5; 3; 8; 1]));
  
  let module Foo = SortFunctor(MyInteger) in
    let l = Foo.sort [1; 4; 2] in
  print_endline (Foo.printList(l));
  print_endline "Hello, World!"
