#lang racket

(require "basefunctions.rkt")

; some basic functions used in the problems

(define (divisible-by? dividend divisor)
  (= (modulo dividend divisor) 0))

(define (divisible-by-any? dividend divisors)
  (cond
     ((null? divisors) #f)
     ((divisible-by? dividend (car divisors)) #t)
     (else (divisible-by-any? dividend (cdr divisors)))))

(provide (all-defined-out))