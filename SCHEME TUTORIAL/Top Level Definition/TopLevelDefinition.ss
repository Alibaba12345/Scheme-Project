(define double-any
    (lambda (f x)
      (f x x)))
      
(double-any + 10)