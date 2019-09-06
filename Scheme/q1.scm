(define (1over stuffToput)
  (map (lambda (Num) (if (= 0 Num)
                              0
                              (/ 1 Num)))
       stuffToput))

(1over '(0 2 3 4 12 0 0 1 0)) 