#lang racket

(require "eutils.rkt")

; By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
; we can see that the 6th prime is 13.

; What is the 10 001st prime number?

(define (nth-prime n)
  (define (find-primes current primes)
    (cond
      ((= (length primes) n) (car primes))
      ((divisible-by-any? current primes) (find-primes (add1 current) primes))
      (else (find-primes (add1 current) (cons current primes)))))
  (find-primes 2 '(3)))

(nth-prime 10001)