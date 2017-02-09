#lang scheme
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