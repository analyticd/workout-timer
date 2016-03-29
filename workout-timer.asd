;;; -*- Mode: Lisp ; Syntax: ANSI-Common-Lisp -*-
;;; workout-timer, trivial work out timer in CL
;;;
;;; Free Software available under an MIT-style license.
;;; Copyright (c) 2012 - 2016, Francois-Rene Rideau

#| Use it as follows:

Using cl-launch:

  ./workout-timer

Or, from the SBCL (SLIME) REPL:

  (load "~/quicklisp/setup")
  (ql:quickload "workout-timer")
  (workout-timer::start)

Or, from the shell, without cl-launch:

  sbcl --noinform --load ~/quicklisp/setup \
    --eval '(ql:quickload "workout-timer" :verbose nil)' \
    --eval "(uiop:restore-image :entry-point 'workout-timer::start)"
|#

(defsystem "workout-timer"
  :version (:read-file-form "timer.lisp" :at (2 2))
  :description "Workout timer"
  :long-description "Workout timer with clock ticks and gongs
programmed for a 7-minute workout but you can modify it to suit your own workout"
  :author "Francois-Rene Rideau"
  :licence "MIT"
  :homepage "http://cliki.net/workout-timer"
  :source-control (:git "git://common-lisp.net/users/frideau/workout-timer.git")
  :class package-inferred-system
  :depends-on ((:version "asdf" "3.1") "workout-timer/timer"))

(register-system-packages "vorbisfile-ffi" '(:vorbisfile))
