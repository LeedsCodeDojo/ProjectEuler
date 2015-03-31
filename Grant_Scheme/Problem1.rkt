#lang racket/base

(require "basefunctions.rkt")
(require "eutils.rkt")

;Find the sum of all the multiples of 3 or 5 below 1000

(define (divisible-by-any? dividend divisors)
  (cond
     ((null? divisors) #f)
     ((divisible-by? dividend (car divisors)) #t)
     (else (divisible-by-any? dividend (cdr divisors)))))

(define (divisible-by-3-or-5? dividend)
  (divisible-by-any? dividend '(3 5)))

(define (sum-multiples-upto upto )
  (apply + (filter divisible-by-3-or-5? (range 1 9))))

(sum-multiples-upto 1000)