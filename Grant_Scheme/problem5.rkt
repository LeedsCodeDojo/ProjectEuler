#lang racket

(require "eutils.rkt")

; 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 
; without any remainder.

; What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

(define (divisible-by-all? dividend divisors)
  (cond
     ((null? divisors) #t)
     ((divisible-by? dividend (car divisors)) (divisible-by-all? dividend (cdr divisors)))
     (else #f)))

(define (smallest-divisible-by divisors)
  (define (smallest current)
    (cond
      ((divisible-by-all? current divisors) current)
      (else (smallest (add1 current)))))
  (smallest 1))

(smallest-divisible-by (range 1 20))