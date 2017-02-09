#lang scheme
(define (recursive-list-length lst)
  (list-length-aux lst 0))

;the auxiliary functioin
(define (list-length-aux lst n)
   (if (null? lst)
       n
       (list-length-aux (cdr lst) (+ 1 n))
       )

  )

