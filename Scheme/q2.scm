;q2

(define (newtonRhap presentR func dfunc)
  (define TOL 1e-6)(lambda ( varX funcX dev)
  	(let ((solution( - varX( / funcX(varX) dev (varX))))) 
  		(if (> TOL solution)
                    (- varX( / funcX(varX) dev(varX))) (newtonRhap((- varX (/ funcX(varX) dev(varX))) funcX dev))))))

(newtonRhap 0.1 sin cos)
(newtonRhap 2.0 (lambda (x) (- (* x x) x 6))
 (lambda (x) (- (* 2 x) 1)))
(newtonRhap -20.0 (lambda (x) (- (* x x) x 6))
 (lambda (x) (- (* 2 x) 1))) 
