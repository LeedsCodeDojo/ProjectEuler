#lang racket


; some basic functions used in the problems

(define (add1 n) (+ n 1))
(define (sub1 n) (- n 1))

(define (divisible-by? dividend divisor)
  (= (modulo dividend divisor) 0))

(define (divisible-by-any? dividend divisors)
  (cond
     ((null? divisors) #f)
     ((divisible-by? dividend (car divisors)) #t)
     (else (divisible-by-any? dividend (cdr divisors)))))

(define (is-prime? n)
  (cond
    ((and (even? n) (> n 2)) #f)
    ((divisible-by-any? n (range 2 (sub1 n))) #f)
    (else #t)))

(define (square? n)
  (let ((ceil (ceiling (sqrt n))))
    (= (* ceil ceil) n)))

; Uses Sieve ot Eratosthenes, or at least an immutable version of something similar
(define (primes-upto n)
  (define (eratos untested primes)
    (cond
      ((null? untested) primes)
      (else 
         (define (not-divisible-by-current-prime? x)
           (not (divisible-by? x (car untested)))) ; assumes each next item in the 'remaining' list is prime
         (eratos  (filter not-divisible-by-current-prime? (cdr untested)) (cons (car untested) primes)))))
  (eratos (range 2 (sqrt n)) '()))

(define (square n) (* n n))

(define (sum l)
  (apply + l))

(provide (all-defined-out))