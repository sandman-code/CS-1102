;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Example 8:26|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; want to represent a student 
;; students have a name and school 
;; schools have a name, location and year founded

;; make a structure for the school
;; a school is (make-school String String Natural)
(define-struct school (name location year))
;;interp
;;     name is the name of the school
;;     location is the city where the school is
;;     year is year of school's founding

;; make a structure for the student
;; a student is a (make-student String School)
(define-struct student (name school))
;;interp
;;     name is the first and last name of student
;;     school refers to School structure student attends

(define (fn-for-school s) ;"Function for school" Template
  (...
   (school-name s)     ;;String
   (school-location s) ;;String
   (school-year s)))   ;;Natural

(define (fn-for-student s)
  (...
   (student-name s)    ;;String 
   (fn-for-school (student-school s))))  ;;School

(check-expect (years WPI) (- 2019 1865)) 
(define (years s)
  (- 2019
   (school-year s)))
(define WPI (make-school "WPI" "Worcester" 1865))
(define MIT (make-school "MIT" "Cambridge" 1861))
(define RPI (make-school "RPI" "Troy" 1824))

(define JOE (make-student "joe" WPI))

JOE