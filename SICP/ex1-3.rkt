#! /usr/bin/env racket

#lang racket

(define (sum-max2 x y z)
  (cond [(>= x y)
         (if (>= y z)
             (+ x y)
             (+ x z))]
         [else (if (>= x z)
                   (+ x y)
                   (+ y z))]))

; test
(require rackunit)

(let ([x 3]
      [y 5]
      [z 8])
  (check-equal? (sum-max2 x y z) 13 "check for sum-max2"))
