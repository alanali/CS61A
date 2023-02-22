(define (cddr s) (cdr (cdr s)))

(define (cadr s)
  (car (cdr s))
)

(define (caddr s)
  (car (cdr(cdr s)))
)

(define (ordered? s)
  (if (null? s)
  #t
    (if (null? (cdr s))
      #t
      (if (> (car s) (cadr s))
      #f
      (ordered? (cdr s)))
    )
  )
)

(define (square x) (* x x))

(define (pow base exp)
  (if (= base 1)
  1
    (if (= exp 1)
    base
      (if (odd? exp)
        (* (pow base (- exp 1)) base)
          (pow (square base) (/ exp 2))
      )
    )
  )
)
