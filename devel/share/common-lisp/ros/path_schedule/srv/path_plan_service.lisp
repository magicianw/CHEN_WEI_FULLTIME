; Auto-generated. Do not edit!


(cl:in-package path_schedule-srv)


;//! \htmlinclude path_plan_service-request.msg.html

(cl:defclass <path_plan_service-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (cur_x
    :reader cur_x
    :initarg :cur_x
    :type cl:integer
    :initform 0)
   (cur_y
    :reader cur_y
    :initarg :cur_y
    :type cl:integer
    :initform 0)
   (cur_theta
    :reader cur_theta
    :initarg :cur_theta
    :type cl:integer
    :initform 0)
   (goal_x
    :reader goal_x
    :initarg :goal_x
    :type cl:integer
    :initform 0)
   (goal_y
    :reader goal_y
    :initarg :goal_y
    :type cl:integer
    :initform 0)
   (goal_theta
    :reader goal_theta
    :initarg :goal_theta
    :type cl:integer
    :initform 0))
)

(cl:defclass path_plan_service-request (<path_plan_service-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <path_plan_service-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'path_plan_service-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name path_schedule-srv:<path_plan_service-request> is deprecated: use path_schedule-srv:path_plan_service-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <path_plan_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_schedule-srv:id-val is deprecated.  Use path_schedule-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'cur_x-val :lambda-list '(m))
(cl:defmethod cur_x-val ((m <path_plan_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_schedule-srv:cur_x-val is deprecated.  Use path_schedule-srv:cur_x instead.")
  (cur_x m))

(cl:ensure-generic-function 'cur_y-val :lambda-list '(m))
(cl:defmethod cur_y-val ((m <path_plan_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_schedule-srv:cur_y-val is deprecated.  Use path_schedule-srv:cur_y instead.")
  (cur_y m))

(cl:ensure-generic-function 'cur_theta-val :lambda-list '(m))
(cl:defmethod cur_theta-val ((m <path_plan_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_schedule-srv:cur_theta-val is deprecated.  Use path_schedule-srv:cur_theta instead.")
  (cur_theta m))

(cl:ensure-generic-function 'goal_x-val :lambda-list '(m))
(cl:defmethod goal_x-val ((m <path_plan_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_schedule-srv:goal_x-val is deprecated.  Use path_schedule-srv:goal_x instead.")
  (goal_x m))

(cl:ensure-generic-function 'goal_y-val :lambda-list '(m))
(cl:defmethod goal_y-val ((m <path_plan_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_schedule-srv:goal_y-val is deprecated.  Use path_schedule-srv:goal_y instead.")
  (goal_y m))

(cl:ensure-generic-function 'goal_theta-val :lambda-list '(m))
(cl:defmethod goal_theta-val ((m <path_plan_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_schedule-srv:goal_theta-val is deprecated.  Use path_schedule-srv:goal_theta instead.")
  (goal_theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <path_plan_service-request>) ostream)
  "Serializes a message object of type '<path_plan_service-request>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cur_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cur_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cur_theta)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'goal_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'goal_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'goal_theta)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <path_plan_service-request>) istream)
  "Deserializes a message object of type '<path_plan_service-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cur_x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cur_y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cur_theta) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_theta) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<path_plan_service-request>)))
  "Returns string type for a service object of type '<path_plan_service-request>"
  "path_schedule/path_plan_serviceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'path_plan_service-request)))
  "Returns string type for a service object of type 'path_plan_service-request"
  "path_schedule/path_plan_serviceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<path_plan_service-request>)))
  "Returns md5sum for a message object of type '<path_plan_service-request>"
  "a492be626b9e9035dc3f45a07b0259c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'path_plan_service-request)))
  "Returns md5sum for a message object of type 'path_plan_service-request"
  "a492be626b9e9035dc3f45a07b0259c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<path_plan_service-request>)))
  "Returns full string definition for message of type '<path_plan_service-request>"
  (cl:format cl:nil "int32 id~%int32 cur_x~%int32 cur_y~%int32 cur_theta~%int32 goal_x~%int32 goal_y~%int32 goal_theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'path_plan_service-request)))
  "Returns full string definition for message of type 'path_plan_service-request"
  (cl:format cl:nil "int32 id~%int32 cur_x~%int32 cur_y~%int32 cur_theta~%int32 goal_x~%int32 goal_y~%int32 goal_theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <path_plan_service-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <path_plan_service-request>))
  "Converts a ROS message object to a list"
  (cl:list 'path_plan_service-request
    (cl:cons ':id (id msg))
    (cl:cons ':cur_x (cur_x msg))
    (cl:cons ':cur_y (cur_y msg))
    (cl:cons ':cur_theta (cur_theta msg))
    (cl:cons ':goal_x (goal_x msg))
    (cl:cons ':goal_y (goal_y msg))
    (cl:cons ':goal_theta (goal_theta msg))
))
;//! \htmlinclude path_plan_service-response.msg.html

(cl:defclass <path_plan_service-response> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type cl:string
    :initform "")
   (path_y
    :reader path_y
    :initarg :path_y
    :type cl:string
    :initform "")
   (path_node_num
    :reader path_node_num
    :initarg :path_node_num
    :type cl:integer
    :initform 0)
   (agent_id
    :reader agent_id
    :initarg :agent_id
    :type cl:integer
    :initform 0))
)

(cl:defclass path_plan_service-response (<path_plan_service-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <path_plan_service-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'path_plan_service-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name path_schedule-srv:<path_plan_service-response> is deprecated: use path_schedule-srv:path_plan_service-response instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <path_plan_service-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_schedule-srv:path-val is deprecated.  Use path_schedule-srv:path instead.")
  (path m))

(cl:ensure-generic-function 'path_y-val :lambda-list '(m))
(cl:defmethod path_y-val ((m <path_plan_service-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_schedule-srv:path_y-val is deprecated.  Use path_schedule-srv:path_y instead.")
  (path_y m))

(cl:ensure-generic-function 'path_node_num-val :lambda-list '(m))
(cl:defmethod path_node_num-val ((m <path_plan_service-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_schedule-srv:path_node_num-val is deprecated.  Use path_schedule-srv:path_node_num instead.")
  (path_node_num m))

(cl:ensure-generic-function 'agent_id-val :lambda-list '(m))
(cl:defmethod agent_id-val ((m <path_plan_service-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_schedule-srv:agent_id-val is deprecated.  Use path_schedule-srv:agent_id instead.")
  (agent_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <path_plan_service-response>) ostream)
  "Serializes a message object of type '<path_plan_service-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path_y))
  (cl:let* ((signed (cl:slot-value msg 'path_node_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'agent_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <path_plan_service-response>) istream)
  "Deserializes a message object of type '<path_plan_service-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path_y) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path_y) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path_node_num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'agent_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<path_plan_service-response>)))
  "Returns string type for a service object of type '<path_plan_service-response>"
  "path_schedule/path_plan_serviceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'path_plan_service-response)))
  "Returns string type for a service object of type 'path_plan_service-response"
  "path_schedule/path_plan_serviceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<path_plan_service-response>)))
  "Returns md5sum for a message object of type '<path_plan_service-response>"
  "a492be626b9e9035dc3f45a07b0259c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'path_plan_service-response)))
  "Returns md5sum for a message object of type 'path_plan_service-response"
  "a492be626b9e9035dc3f45a07b0259c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<path_plan_service-response>)))
  "Returns full string definition for message of type '<path_plan_service-response>"
  (cl:format cl:nil "string path~%string path_y~%int32 path_node_num~%int32 agent_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'path_plan_service-response)))
  "Returns full string definition for message of type 'path_plan_service-response"
  (cl:format cl:nil "string path~%string path_y~%int32 path_node_num~%int32 agent_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <path_plan_service-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'path))
     4 (cl:length (cl:slot-value msg 'path_y))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <path_plan_service-response>))
  "Converts a ROS message object to a list"
  (cl:list 'path_plan_service-response
    (cl:cons ':path (path msg))
    (cl:cons ':path_y (path_y msg))
    (cl:cons ':path_node_num (path_node_num msg))
    (cl:cons ':agent_id (agent_id msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'path_plan_service)))
  'path_plan_service-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'path_plan_service)))
  'path_plan_service-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'path_plan_service)))
  "Returns string type for a service object of type '<path_plan_service>"
  "path_schedule/path_plan_service")