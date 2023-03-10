#lang pollen/markup

◊(define ($ . xs)
  `(mathjax ,(apply string-append `("$" ,@xs "$"))))
◊(define ($$ . xs)
  `(mathjax ,(apply string-append `("$$" ,@xs "$$"))))
◊(require pollen/unstable/pygments)

◊blockquote{I wonder whether ${2^{\aleph_\alpha} = \aleph_{\alpha+1}}$?}

-- Matthew Butterick
◊br{}

◊pre{◊code[#:class "python"]{
for x in range(3):
    print x
}}

◊highlight['scheme]{
(* 6 7)
}

◊highlight['python]{
for x in range(3):
    print x
}
◊br{}


I want to attend ◊em{RacketCon} this year.
◊br{}


◊span[#:class "author" #:id "primary" #:living "true"]{Prof. Leonard}
◊br{}


◊div[#:class "red" #:style "font-size:150%"]{Important ◊em{News}}
