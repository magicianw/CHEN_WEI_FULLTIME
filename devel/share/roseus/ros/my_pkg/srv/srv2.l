;; Auto-generated. Do not edit!


(when (boundp 'my_pkg::srv2)
  (if (not (find-package "MY_PKG"))
    (make-package "MY_PKG"))
  (shadow 'srv2 (find-package "MY_PKG")))
(unless (find-package "MY_PKG::SRV2")
  (make-package "MY_PKG::SRV2"))
(unless (find-package "MY_PKG::SRV2REQUEST")
  (make-package "MY_PKG::SRV2REQUEST"))
(unless (find-package "MY_PKG::SRV2RESPONSE")
  (make-package "MY_PKG::SRV2RESPONSE"))

(in-package "ROS")





(defclass my_pkg::srv2Request
  :super ros::object
  :slots (_A _B _C ))

(defmethod my_pkg::srv2Request
  (:init
   (&key
    ((:A __A) 0)
    ((:B __B) 0)
    ((:C __C) 0)
    )
   (send-super :init)
   (setq _A (round __A))
   (setq _B (round __B))
   (setq _C (round __C))
   self)
  (:A
   (&optional __A)
   (if __A (setq _A __A)) _A)
  (:B
   (&optional __B)
   (if __B (setq _B __B)) _B)
  (:C
   (&optional __C)
   (if __C (setq _C __C)) _C)
  (:serialization-length
   ()
   (+
    ;; int32 _A
    4
    ;; int32 _B
    4
    ;; int32 _C
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _A
       (write-long _A s)
     ;; int32 _B
       (write-long _B s)
     ;; int32 _C
       (write-long _C s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _A
     (setq _A (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _B
     (setq _B (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _C
     (setq _C (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_pkg::srv2Response
  :super ros::object
  :slots (_multiply ))

(defmethod my_pkg::srv2Response
  (:init
   (&key
    ((:multiply __multiply) 0)
    )
   (send-super :init)
   (setq _multiply (round __multiply))
   self)
  (:multiply
   (&optional __multiply)
   (if __multiply (setq _multiply __multiply)) _multiply)
  (:serialization-length
   ()
   (+
    ;; int32 _multiply
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _multiply
       (write-long _multiply s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _multiply
     (setq _multiply (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_pkg::srv2
  :super ros::object
  :slots ())

(setf (get my_pkg::srv2 :md5sum-) "fac3b9c444f0986b7566cc73cf67c1bd")
(setf (get my_pkg::srv2 :datatype-) "my_pkg/srv2")
(setf (get my_pkg::srv2 :request) my_pkg::srv2Request)
(setf (get my_pkg::srv2 :response) my_pkg::srv2Response)

(defmethod my_pkg::srv2Request
  (:response () (instance my_pkg::srv2Response :init)))

(setf (get my_pkg::srv2Request :md5sum-) "fac3b9c444f0986b7566cc73cf67c1bd")
(setf (get my_pkg::srv2Request :datatype-) "my_pkg/srv2Request")
(setf (get my_pkg::srv2Request :definition-)
      "int32 A
int32 B
int32 C
---
int32 multiply
")

(setf (get my_pkg::srv2Response :md5sum-) "fac3b9c444f0986b7566cc73cf67c1bd")
(setf (get my_pkg::srv2Response :datatype-) "my_pkg/srv2Response")
(setf (get my_pkg::srv2Response :definition-)
      "int32 A
int32 B
int32 C
---
int32 multiply
")



(provide :my_pkg/srv2 "fac3b9c444f0986b7566cc73cf67c1bd")


