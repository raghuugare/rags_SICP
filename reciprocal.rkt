(define reciprocal
  (lambda (n)
    (if (= n 0)
        "oops!"
        (/ 1 n))))

(reciprocal 2)
(reciprocal 0)
(reciprocal 3)