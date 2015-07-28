(define /sqrt2 (/ (sqrt 2)))

(define phi (list /sqrt2 /sqrt2))

(use srfi-1)
(use srfi-27)
(define (observe q)
  (let ((i (random-integer (length q))))
    (map (lambda (idx) (if (= idx i) 1 0)) (iota (length q)))))

(define (random-q)
  (let ((a (- (random-real) 0.5))
        (b (- (random-real) 0.5)))
    (let ((Z (sqrt (+ (* a a) (* b b)))))
      (list (/ a Z) (/ b Z)))))

(define (X p)
  (list (ref p 0)
        (ref p 1)))

(define (nth ls n)
  (if (or (< n 0) (>= n (length ls)))
    0
    (ref ls n)))

(define (random-walk p)
  (map (lambda (i)
    (if (even? i)
      (+ (nth p (+ i 2)) (nth p (+ i 3)))
      (- (nth p (- i 3)) (nth p (- i 2)))))
    (iota (length p))))

(define (times n f x)
  (if (positive? n)
    (begin
      (print x)
      (times (- n 1) f (f x)))))

(define (random-qs n)
  (let* ((qs (map (^_ (- (random-real) 0.5)) (iota n)))
         (Z (sqrt (apply + (map (^x (* x x)) qs)))))
      (map (cut / <> Z) qs)))

(use gauche.process)
(define (show xs out)
  (call-with-output-process "/usr/bin/gnuplot" (lambda (port)
    (display #`"set terminal png; set output \",out\";" port)
    (display "plot \"-\" w lp\n" port)
    (for-each (cut format port "~a\n" <>) xs))))

(define (compress x)
  (if (< (length x) 2)
    '()
    (cons (+ (expt (car x) 2) (expt (cadr x) 2)) (compress (cddr x)))))

(define (plot-times n f x)
  (let loop ((i 0) (x x))
    (when (< i n)
      (show (compress x) #`",|i|.png")
      (loop (+ i 1) (f x)))))
