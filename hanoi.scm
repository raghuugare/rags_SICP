;; The Towers of Hanoi problem 
d efine (hanoi n from to temp)
  (cond ((= n 0) (newline))
        (else (hanoi (- n 1) from temp to)
              (print-move from to)
              (hanoi (- n 1) temp to from))))

(define (print-move from to)
  (newline)
  (display "move top disk from ") (display from)
  (display " to ")(display to))

(hanoi 4 1 2 3)
(newline)

