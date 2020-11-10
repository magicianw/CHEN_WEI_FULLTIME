;; Auto-generated. Do not edit!


(when (boundp 'my_pkg::msg1)
  (if (not (find-package "MY_PKG"))
    (make-package "MY_PKG"))
  (shadow 'msg1 (find-package "MY_PKG")))
(unless (find-package "MY_PKG::MSG1")
  (make-package "MY_PKG::MSG1"))

(in-package "ROS")
;;//! \htmlinclude msg1.msg.html


(defclass my_pkg::msg1
  :super ros::object
  :slots ())

(defmethod my_pkg::msg1
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get my_pkg::msg1 :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get my_pkg::msg1 :datatype-) "my_pkg/msg1")
(setf (get my_pkg::msg1 :definition-)
      "
")



(provide :my_pkg/msg1 "d41d8cd98f00b204e9800998ecf8427e")


