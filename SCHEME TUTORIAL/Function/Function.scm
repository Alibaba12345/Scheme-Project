#lang scheme
;Square function
(define (square x) (* x x))
(define (twice x) (+ x x))
(define (increment x) (+ x 1))
(define (decrement x) (- x 1))
(define (factorial n)
     (if (= n 1)
          1
          (* n (factorial (- n 1)))
    )  
)

;Fibonacci function
(define (fibonacci n)
  
   (if (or (= n 1) (= n 0))
       1
       (+ (fibonacci ( - n 1)) (fibonacci(- n 2)))
       )
   )
; Power function
(define (pwr base exponent)
  (if (zero? exponent) 1
      (let ((root (pwr base (quotient exponent 2))))
        (if (zero? (remainder exponent 2))
            (* root root)
            (* root root base)))))

; Length of a list

(define (list-length l)
  (if (null? l)
      0
      (+ 1 (list-length(cdr l)))
      )
  )

;nth element
(define (nth-element n l)
  (if (null? l)
      null
      (if (= n 0)
          (car l)
          (nth-element (- n 1) (cdr l))

          )
      )
  )

;List member
(define (list-member e l)
   (cond
     ((null? l) #f)
     ((eq? e (car l)) #t)
     (else (list-member e (cdr l)))
     )
)
-> Run function:
(list-member 2 '(1 2 3 4 5 6 7))