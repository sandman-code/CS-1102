;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Caden Crist|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Caden Crist ccrist@wpi.edu

;Program triple - input: number output: number
;Program triple - purpose: consumes a given number and produces triple the given number
(define (triple x)
  (* 3 x))

(check-expect (triple 3) (* 3 3))

;Program pythag - input: numbers output: number
;Program pythag - purpose: consumes the height and width of a right triangle and produces the hypotenuse of that triangle
(define (pythag x y)
  (sqrt (+ (expt x 2) (expt y 2)))) 

(check-expect (pythag 3 4)(sqrt (+ (expt 3 2) (expt 4 2))))

;Program is-even? - input: number output: String
;Program is-even? - purpose: to consume a number and return whether it is even or odd
(define (is-even? x)
  (if (even? x)
      "it's even!"
      "it's odd!"))

(check-expect (is-even? 2) "it's even!")
(check-expect (is-even? 7) "it's odd!")

;Program weird-case - input: String output: String
;Program weird-case - purpose: consumes a string and returns it lowercase if the string length is even and upper if it is odd
(define (weird-case n)
  (if (even? (string-length n))
      (string-upcase n)
      (string-downcase n)))

(check-expect (weird-case "born") "BORN")
(check-expect (weird-case "house") "house")

;Program sort-strings - input: two Strings output: one String
;Program sort-strings - purpose: consumes two strings and returns a single string with the shorter string first and the longer string second. Equal length returns "?"
(define (sort-strings s1 s2)
  (cond
    [(< (string-length s1) (string-length s2)) (string-append s1 s2)]
    [(< (string-length s2) (string-length s1)) (string-append s2 s1)]
    [(= (string-length s1) (string-length s2)) "?"]))

(check-expect (sort-strings "love" "craft") "lovecraft")
(check-expect (sort-strings "hate" "love") "?")
           