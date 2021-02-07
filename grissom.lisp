;;;; grissom.lisp

(in-package #:grissom)

(cl-interpol:enable-interpol-syntax)

(defvar *listen-server* nil)

(defun connection-handler (stream)
  ;; (declare (type stream stream))
  (let* ((tls-stream (cl+ssl:make-ssl-server-stream stream
                                                    :certificate "cert.pem"
                                                    :key "key.pem")))
    
    (write-sequence (babel:string-to-octets (format nil "hello~%") :encoding :utf-8) tls-stream)
    (finish-output tls-stream)))

(defun start-server ()
  (let ((port 4567))
    (setq *listen-server*
          (usocket:socket-server
           "0.0.0.0" port
           'connection-handler ()
           :element-type '(unsigned-byte 8)
           :multi-threading t))
    nil))

