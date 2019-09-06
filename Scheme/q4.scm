
;4a
(define separator?
  (lambda (charToChange)   
    (cond ((char=? charToChange #\space)#t)
          ((char=? charToChange #\tab) #t)
          ((char=? charToChange #\newline)#t)
          (else #f))))
  
(separator? #\space)
(separator? #\s)
;4b

(define cpy
 (lambda (stuffToChange) (if (null? stuffToChange)
        '() 
        (if (separator? (car stuffToChange))
           '()
           (cons (car stuffToChange) (cpy (cdr stuffToChange)))))))

   (cpy '(#\H #\e #\l #\l #\o #\space #\W #\o #\r #\l #\d))
;4c
(define drop
  (lambda (stuffToChange) (if (null? stuffToChange)
        '()
        (if (separator? (car stuffToChange))
            (cdr stuffToChange)
            (drop (cdr stuffToChange))))))

(drop '(#\H #\e #\l #\l #\o #\newline #\W #\o #\r #\l #\d))

;4d
(define same?
  (lambda (ListA ListB)(equal? (cpy ListA) ListB)))

(same? '(#\H #\e #\l #\l #\o #\tab #\W #\o #\r #\l #\d)
 '(#\H #\e #\l #\l #\o))

(same? '(#\H #\e #\l #\l #\o #\space #\W #\o #\r #\l #\d)
 '(#\W #\o #\r #\l #\d))

;4e
