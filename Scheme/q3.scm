;q3
(define PI 3.14159)
(define (p_cos varX)
  (define TOL 1e-6)
   
  (let ((val(- 1(/ (* 4( * varX varX)) 
  	(*( * PI PI) 
  		(* (-(* 2 1) 1)
  			(-(* 2 1)1))))))) val))
  
(p_cos 0)
(p_cos (/ PI 2))