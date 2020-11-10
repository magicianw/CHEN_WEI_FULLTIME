;; Auto-generated. Do not edit!


(when (boundp 'path_schedule::path_plan_service)
  (if (not (find-package "PATH_SCHEDULE"))
    (make-package "PATH_SCHEDULE"))
  (shadow 'path_plan_service (find-package "PATH_SCHEDULE")))
(unless (find-package "PATH_SCHEDULE::PATH_PLAN_SERVICE")
  (make-package "PATH_SCHEDULE::PATH_PLAN_SERVICE"))
(unless (find-package "PATH_SCHEDULE::PATH_PLAN_SERVICEREQUEST")
  (make-package "PATH_SCHEDULE::PATH_PLAN_SERVICEREQUEST"))
(unless (find-package "PATH_SCHEDULE::PATH_PLAN_SERVICERESPONSE")
  (make-package "PATH_SCHEDULE::PATH_PLAN_SERVICERESPONSE"))

(in-package "ROS")





(defclass path_schedule::path_plan_serviceRequest
  :super ros::object
  :slots (_id _cur_x _cur_y _cur_theta _goal_x _goal_y _goal_theta ))

(defmethod path_schedule::path_plan_serviceRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:cur_x __cur_x) 0)
    ((:cur_y __cur_y) 0)
    ((:cur_theta __cur_theta) 0)
    ((:goal_x __goal_x) 0)
    ((:goal_y __goal_y) 0)
    ((:goal_theta __goal_theta) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _cur_x (round __cur_x))
   (setq _cur_y (round __cur_y))
   (setq _cur_theta (round __cur_theta))
   (setq _goal_x (round __goal_x))
   (setq _goal_y (round __goal_y))
   (setq _goal_theta (round __goal_theta))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:cur_x
   (&optional __cur_x)
   (if __cur_x (setq _cur_x __cur_x)) _cur_x)
  (:cur_y
   (&optional __cur_y)
   (if __cur_y (setq _cur_y __cur_y)) _cur_y)
  (:cur_theta
   (&optional __cur_theta)
   (if __cur_theta (setq _cur_theta __cur_theta)) _cur_theta)
  (:goal_x
   (&optional __goal_x)
   (if __goal_x (setq _goal_x __goal_x)) _goal_x)
  (:goal_y
   (&optional __goal_y)
   (if __goal_y (setq _goal_y __goal_y)) _goal_y)
  (:goal_theta
   (&optional __goal_theta)
   (if __goal_theta (setq _goal_theta __goal_theta)) _goal_theta)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int32 _cur_x
    4
    ;; int32 _cur_y
    4
    ;; int32 _cur_theta
    4
    ;; int32 _goal_x
    4
    ;; int32 _goal_y
    4
    ;; int32 _goal_theta
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _cur_x
       (write-long _cur_x s)
     ;; int32 _cur_y
       (write-long _cur_y s)
     ;; int32 _cur_theta
       (write-long _cur_theta s)
     ;; int32 _goal_x
       (write-long _goal_x s)
     ;; int32 _goal_y
       (write-long _goal_y s)
     ;; int32 _goal_theta
       (write-long _goal_theta s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _cur_x
     (setq _cur_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _cur_y
     (setq _cur_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _cur_theta
     (setq _cur_theta (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _goal_x
     (setq _goal_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _goal_y
     (setq _goal_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _goal_theta
     (setq _goal_theta (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass path_schedule::path_plan_serviceResponse
  :super ros::object
  :slots (_path _path_y _path_node_num _agent_id ))

(defmethod path_schedule::path_plan_serviceResponse
  (:init
   (&key
    ((:path __path) "")
    ((:path_y __path_y) "")
    ((:path_node_num __path_node_num) 0)
    ((:agent_id __agent_id) 0)
    )
   (send-super :init)
   (setq _path (string __path))
   (setq _path_y (string __path_y))
   (setq _path_node_num (round __path_node_num))
   (setq _agent_id (round __agent_id))
   self)
  (:path
   (&optional __path)
   (if __path (setq _path __path)) _path)
  (:path_y
   (&optional __path_y)
   (if __path_y (setq _path_y __path_y)) _path_y)
  (:path_node_num
   (&optional __path_node_num)
   (if __path_node_num (setq _path_node_num __path_node_num)) _path_node_num)
  (:agent_id
   (&optional __agent_id)
   (if __agent_id (setq _agent_id __agent_id)) _agent_id)
  (:serialization-length
   ()
   (+
    ;; string _path
    4 (length _path)
    ;; string _path_y
    4 (length _path_y)
    ;; int32 _path_node_num
    4
    ;; int32 _agent_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _path
       (write-long (length _path) s) (princ _path s)
     ;; string _path_y
       (write-long (length _path_y) s) (princ _path_y s)
     ;; int32 _path_node_num
       (write-long _path_node_num s)
     ;; int32 _agent_id
       (write-long _agent_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _path_y
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path_y (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _path_node_num
     (setq _path_node_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _agent_id
     (setq _agent_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass path_schedule::path_plan_service
  :super ros::object
  :slots ())

(setf (get path_schedule::path_plan_service :md5sum-) "a492be626b9e9035dc3f45a07b0259c0")
(setf (get path_schedule::path_plan_service :datatype-) "path_schedule/path_plan_service")
(setf (get path_schedule::path_plan_service :request) path_schedule::path_plan_serviceRequest)
(setf (get path_schedule::path_plan_service :response) path_schedule::path_plan_serviceResponse)

(defmethod path_schedule::path_plan_serviceRequest
  (:response () (instance path_schedule::path_plan_serviceResponse :init)))

(setf (get path_schedule::path_plan_serviceRequest :md5sum-) "a492be626b9e9035dc3f45a07b0259c0")
(setf (get path_schedule::path_plan_serviceRequest :datatype-) "path_schedule/path_plan_serviceRequest")
(setf (get path_schedule::path_plan_serviceRequest :definition-)
      "int32 id
int32 cur_x
int32 cur_y
int32 cur_theta
int32 goal_x
int32 goal_y
int32 goal_theta
---
string path
string path_y
int32 path_node_num
int32 agent_id
")

(setf (get path_schedule::path_plan_serviceResponse :md5sum-) "a492be626b9e9035dc3f45a07b0259c0")
(setf (get path_schedule::path_plan_serviceResponse :datatype-) "path_schedule/path_plan_serviceResponse")
(setf (get path_schedule::path_plan_serviceResponse :definition-)
      "int32 id
int32 cur_x
int32 cur_y
int32 cur_theta
int32 goal_x
int32 goal_y
int32 goal_theta
---
string path
string path_y
int32 path_node_num
int32 agent_id
")



(provide :path_schedule/path_plan_service "a492be626b9e9035dc3f45a07b0259c0")


