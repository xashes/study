;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname rocket) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
(require 2htdp/image)
(require 2htdp/universe)

; properties of the "world"
(define WIDTH  400)
(define HEIGHT 400)
(define CENTER (/ WIDTH 2))

; properties of the descending UFO
(define A 1)

; various other constants
(define MTSCN  (empty-scene WIDTH HEIGHT))
(define UFO
  (overlay (circle 10 "solid" "green")
           (rectangle 40 4 "solid" "brown")))
(define UFO-CENTER-TO-BOTTOM
  (- HEIGHT (/ (image-height UFO) 2)))

; functions
(define (create-rocket-scene t)
  (cond
    [(<= (distance t) UFO-CENTER-TO-BOTTOM)
     (place-image UFO CENTER (distance t) MTSCN)]
    [(> (distance t) UFO-CENTER-TO-BOTTOM)
     (place-image UFO CENTER UFO-CENTER-TO-BOTTOM MTSCN)]))

(define (distance t)
  (* 1/2 A (sqr t)))


;; main
(animate create-rocket-scene)
