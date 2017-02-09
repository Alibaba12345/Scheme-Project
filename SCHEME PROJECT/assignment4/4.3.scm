; Write a function named longer-list that takes two list arguments and returns
; the longer list of the two inputs. If the two lists are equal in length, the
; function returns #t, and if one of the arguments is not a list, the function
; should return #f. 
; Note: You are not allowed to use the predefined length function; however, you
; can write your version of length or other helper functions that you may want
; to call from longer-list.

(define longer-list (lambda (a b)
    (define len (lambda (l i)
        (cond ((null? l) i)
              (#t (len (cdr l) (+ i 1))))))
    (cond ((not (list? a)) #f)
          ((not (list? b)) #f)
          (#t (let ((la (len a 0))
                    (lb (len b 0)))
                   (cond ((> la lb) a)
                         ((< la lb) b)
                         (#t #t)))))))

