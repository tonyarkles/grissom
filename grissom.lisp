;;;; grissom.lisp

(in-package #:grissom)

(cl-interpol:enable-interpol-syntax)

(defvar *listen-server* nil)

(defun connection-handler (stream)
  (declare (type stream stream))
  (write-string "hello" stream))

(defun start-server ()
  (let ((port 4567))
    (setq *listen-server* (usocket:socket-server "0.0.0.0" port 'connection-handler))
    nil))

