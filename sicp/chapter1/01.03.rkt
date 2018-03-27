#lang racket/base

(require rackunit)

(define (square a)
  (* a a))
(define (sum-of-squares b c)
  (+ (square b)
     (square c)))

(define (solution x y z)
  (cond ((and (< x y) (< x z))
             (sum-of-squares y z))
        ((and (< y x) (< y z))
             (sum-of-squares x z))
        (else (sum-of-squares x y))))

(check-equal? (solution 2 6 1) 40)
(check-equal? (solution 6 1 2) 40)
(check-equal? (solution 1 2 6) 40)
(check-equal? (square 3) 9)
(check-equal? (sum-of-squares 4 5) 41)
