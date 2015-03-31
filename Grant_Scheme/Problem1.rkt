#lang scheme/base

;Find the sum of all the multiples of 3 or 5 below 1000

(define (divisible-by? dividend divisor)
  (= (modulo dividend divisor) 0))

(define (divisible-by-any? dividend divisors)
  (cond
     ((null? divisors) #f)
     ((divisible-by? dividend (car divisors)) #t)
     (else (divisible-by-any? dividend (cdr divisors)))))

(define (find-multiples divisors upto)
  (cond
    ((= upto 0) '())
    ((divisible-by-any? upto divisors) (cons upto 
                                             (find-multiples divisors (- upto 1))))
    (else (find-multiples divisors (- upto 1)))))

(define (sum-multiples-upto upto divisors)
  (apply + (find-multiples divisors (- upto 1))))