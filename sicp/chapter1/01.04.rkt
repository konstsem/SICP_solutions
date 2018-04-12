#lang racket/base

(require rackunit)

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(check-equal? (a-plus-abs-b 1 3) 4)
(check-equal? (a-plus-abs-b 1 0) 1)
(check-equal? (a-plus-abs-b 1 -3) 4)
