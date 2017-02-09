(let*-values ([(a b) (values 1 2)] [(a b) (values b a)])
    (list a b))
    

//Output:

'(2 1)