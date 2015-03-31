#lang racket/base

(require "basefunctions.rkt")
(require "eutils.rkt")

; By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

(define (fib-upto limit)
  (define (fib max acc)
    (let ([this-fib (+ (list-ref acc 0) (list-ref acc 1))])
      (cond
        ((>= this-fib max) acc)
        (else (fib max (cons this-fib acc))))))
  (fib limit '(1 0)))

(apply + (filter even? (fib-upto 4000000)))