; Write a scheme function find-loc which takes two parameters, a list lst and
; an atom atm, and returns the index of the first location where atm occurs in
; the list.
; The location index is 1-relative. If atm does not occur in the list, the
; function returns n + 1, where n is the length of the list.

(define find-loc (lambda (lst atm)
    (define f (lambda (l i)
        (cond ((null? l) i)
              ((eq? atm (car l)) i)
              (#t (f (cdr l) (+ i 1))))))
    (f lst 1)))
