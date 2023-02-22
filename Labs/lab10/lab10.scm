
(define (over-or-under num1 num2)
  (define diff (- num1 num2))
  (if (< diff 0)
    -1
    (if (> diff 0)
      1
      0
    )
  )
)

(define (make-adder num)
  (lambda (x) (+ x num))
)

(define (composed f g)
  (lambda (x) (f(g x)))
)

(define lst
  (cons
    (cons 1 nil)
    (cons 2
      (cons (cons 3
        (cons 4 nil))
        (cons 5 nil)
      )
    )
  )
)


(define (remove item lst) 'YOUR-CODE-HERE)
