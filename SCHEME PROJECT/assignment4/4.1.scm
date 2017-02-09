; Write a scheme function named up-to-first-number that takes a list as its
; input and returns a list containing all the elements up to the first numeric
; element in the input list. You can use the number? predicate function to
; determine whether an element is a number or not.

(define up-to-first-number (lambda (l)
    (cond ((null? l) l)
          ((number? (car l)) '())
          (#t (cons (car l) (up-to-first-number (cdr l)))))))
