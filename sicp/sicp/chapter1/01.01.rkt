#lang racket/base

(require rackunit)

(define a 3)
(define b (+ a 1))
(define solution1
  (+ a b (* a b )))
(check-equal? solution1 19)
(define solution2
  (= a b))
(check-equal? solution2 #f)
(define solution3
  (if (and (> b a) (< b (* a b)))
    b
    a))
(check-equal? solution3 4)
(define solution4
  (cond ((= a 4) 6)
        ((= b 4) (+ 6 7 a))
        (else 25)))
(check-equal? solution4 16)
(define solution5
  (+ 2 (if (> b a) b a)))
(check-equal? solution5 6)
(define solution6
  (* (cond ((> a b) a)
           ((< a b) b)
           (else -1))
     (+ a 1)))
(check-equal? solution6 16)
