;;;; grissom.asd

(asdf:defsystem #:grissom
  :description "Describe grissom here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :depends-on (#:cl+ssl #:cl-interpol #:usocket #:usocket-server)
  :components ((:file "package")
               (:file "grissom")))
