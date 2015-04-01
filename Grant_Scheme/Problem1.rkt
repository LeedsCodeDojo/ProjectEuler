#lang racket

(require "eutils.rkt")

;Find the sum of all the multiples of 3 or 5 below 1000

(define (divisible-by-3-or-5? dividend)
  (divisible-by-any? dividend '(3 5)))

(define (sum-multiples-upto upto )
  (apply + (filter divisible-by-3-or-5? (range 1 (sub1 upto)))))

(sum-multiples-upto 1000)