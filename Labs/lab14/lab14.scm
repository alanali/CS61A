(define (split-at lst n)
    (cond
        ((= n 0) (cons '() lst))
        ((> n (length lst)) (cons lst nil))
        (else
            (let ((res (split-at (cdr lst) (- n 1)))) (cons (cons (car lst) (car res)) (cdr res)))
        )
    )
)

(define (compose-all funcs)
    (lambda (x)
      (if (null? funcs)
        x
        ((compose-all (cdr funcs)) ((car funcs) x))
      )
    )
)
