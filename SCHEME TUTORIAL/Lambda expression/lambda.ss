(let ([double (lambda (x) (+ x x))])
    (list (double (* 3 4))
          (double (/ 99 11))
          (double (- 2 7))))