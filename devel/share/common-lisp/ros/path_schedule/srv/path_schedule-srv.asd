
(cl:in-package :asdf)

(defsystem "path_schedule-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "path_plan_service" :depends-on ("_package_path_plan_service"))
    (:file "_package_path_plan_service" :depends-on ("_package"))
  ))