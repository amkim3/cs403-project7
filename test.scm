(load "shapes.scm")
(perform "total" "xxxx.dat")
(perform "avg" "shapes.dat" 100 "<" "area" "<" 200)
(perform "print" "shapes.dat")
(perform "print" "shapes.dat" "type" "==" "box" "area" ">=" 88)
(perform "count" "shapes.dat" "type" ">" "cyl")
(perform "count" "shapes.dat" "type" "==" "box")
(perform "total" "shapes.dat")
(perform "avg" "shapes.dat")
(perform "min" "shapes.dat")
(perform "max" "shapes.dat")
