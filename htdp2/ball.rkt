;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname rocket) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
(require 2htdp/image)
(require 2htdp/universe)

;; constants
(define BALL (circle 5 "solid" "red"))
(define UFO
  (overlay (circle 10 "solid" "green")
           (rectangle 40 4 "solid" "green")))
(define SCENE-WIDTH 100)
(define SCENE-HEIGHT 100)
(define CENTER (/ SCENE-WIDTH 2))
(define EMPTY-SCENE (empty-scene SCENE-WIDTH SCENE-HEIGHT))
(define BORDER-DIFF (/ (image-height UFO) 2))
(define BORDER-TOP BORDER-DIFF)
(define BORDER-BOTTOM (- SCENE-HEIGHT BORDER-DIFF))


;; functions
(define (create-rocket-scene height)
  (cond
    [(even? (quotient height BORDER-BOTTOM))
     (if
      (<= (+ BORDER-TOP
             (remainder height BORDER-BOTTOM))
          BORDER-BOTTOM)
      (place-image UFO
                   (/ SCENE-WIDTH 2) (+ BORDER-TOP
                                        (remainder height BORDER-BOTTOM))
                   EMPTY-SCENE)
      (place-image UFO
                   (/ SCENE-WIDTH 2) BORDER-BOTTOM
                   EMPTY-SCENE))]
    [(odd? (quotient height BORDER-BOTTOM))
     (if (>= (- BORDER-BOTTOM
                (remainder height BORDER-BOTTOM))
             BORDER-TOP)
         (place-image UFO
                      (/ SCENE-WIDTH 2) (- BORDER-BOTTOM
                                           (remainder height BORDER-BOTTOM))
                      EMPTY-SCENE)
         (place-image UFO
                      (/ SCENE-WIDTH 2) BORDER-TOP
                      EMPTY-SCENE))]))

(animate create-rocket-scene)
