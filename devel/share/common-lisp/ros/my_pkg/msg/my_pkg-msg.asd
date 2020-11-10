
(cl:in-package :asdf)

(defsystem "my_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "msg1" :depends-on ("_package_msg1"))
    (:file "_package_msg1" :depends-on ("_package"))
  ))