(define length
    (lambda (ls)
      (if (null? ls)
          0
          (+ (length (cdr ls)) 1))))
      
(length '())
(length '(a))
(length '(a b))