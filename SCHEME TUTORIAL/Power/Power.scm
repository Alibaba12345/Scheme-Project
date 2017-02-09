#lang scheme

; Power function
(define (pwr base exponent)
  (if (zero? exponent) 1
      (let ((root (pwr base (quotient exponent 2))))
        (if (zero? (remainder exponent 2))
            (* root root)
            (* root root base)))))