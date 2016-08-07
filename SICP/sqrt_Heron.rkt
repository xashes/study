#! /usr/bin/env racket

#lang racket

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (if (< (- (/ (* guess guess)
               x)
            1)
         0.001)
      #t
      #f))

(define (improve guess x)
  (/ (+ guess
        (/ x guess))
     2))

;; test
(require rackunit)

(sqrt-iter 3.0 9)
(sqrt-iter 1.0 9)
(sqrt-iter 1.0 16)
