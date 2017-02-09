

;tail-recursion

(define (pow-tail-recursion a b)
  (define (pow-tail-recursion-h b result)
    (if (= b 0)
        result
        (pow-tail-recursion-h (- b 1) (* result a))))
  (pow-tail-recursion-h b 1))