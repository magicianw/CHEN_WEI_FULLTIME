;; Auto-generated. Do not edit!


(when (boundp 'my_pkg::srv1)
  (if (not (find-package "MY_PKG"))
    (make-package "MY_PKG"))
  (shadow 'srv1 (find-package "MY_PKG")))
(unless (find-package "MY_PKG::SRV1")
  (make-package "MY_PKG::SRV1"))
(unless (find-package "MY_PKG::SRV1REQUEST")
  (make-package "MY_PKG::SRV1REQUEST"))
(unless (find-package "MY_PKG::SRV1RESPONSE")
  (make-package "MY_PKG::SRV1RESPONSE"))

(in-package "ROS")





(defclass my_pkg::srv1Request
  :super ros::object
  :slots (_A _B _C ))

(defmethod my_pkg::srv1Request
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

(defclass my_pkg::srv1Response
  :super ros::object
  :slots (_sum ))

(defmethod my_pkg::srv1Response
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sum
       (write-long _sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sum
     (setq _sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_pkg::srv1
  :super ros::object
  :slots ())

(setf (get my_pkg::srv1 :md5sum-) "2a5c7a37218262bae4fcfaa1007692aa")
(setf (get my_pkg::srv1 :datatype-) "my_pkg/srv1")
(setf (get my_pkg::srv1 :request) my_pkg::srv1Request)
(setf (get my_pkg::srv1 :response) my_pkg::srv1Response)

(defmethod my_pkg::srv1Request
  (:response () (instance my_pkg::srv1Response :init)))

(setf (get my_pkg::srv1Request :md5sum-) "2a5c7a37218262bae4fcfaa1007692aa")
(setf (get my_pkg::srv1Request :datatype-) "my_pkg/srv1Request")
(setf (get my_pkg::srv1Request :definition-)
      "int32 A
int32 B
int32 C
---
int32 sum
")

(setf (get my_pkg::srv1Response :md5sum-) "2a5c7a37218262bae4fcfaa1007692aa")
(setf (get my_pkg::srv1Response :datatype-) "my_pkg/srv1Response")
(setf (get my_pkg::srv1Response :definition-)
      "int32 A
int32 B
int32 C
---
int32 sum
")



(provide :my_pkg/srv1 "2a5c7a37218262bae4fcfaa1007692aa")


