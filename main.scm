(include "loops")
(include "matchable")

(module main ()
 (import chicken)
 (import loops)
 (import matchable)
 (import scheme)

 (use data-structures)
 (use extras)
 (use files)
 (use ports)
 (use posix)
 (use srfi-1)
 (use srfi-13)
 (use srfi-69)

 ; Include macros first
 (include "etc.scm")

 ; Include everything else
 (include "format.scm")

  ; Format
 (define xs (read/comments))
 (set! xs (tidy xs))
 (define s (with-output-to-string (curry write/comments xs)))
 (display s))
