; Auto-generated. Do not edit!


(cl:in-package my_pkg-srv)


;//! \htmlinclude srv2-request.msg.html

(cl:defclass <srv2-request> (roslisp-msg-protocol:ros-message)
  ((A
    :reader A
    :initarg :A
    :type cl:integer
    :initform 0)
   (B
    :reader B
    :initarg :B
    :type cl:integer
    :initform 0)
   (C
    :reader C
    :initarg :C
    :type cl:integer
    :initform 0))
)

(cl:defclass srv2-request (<srv2-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srv2-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srv2-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_pkg-srv:<srv2-request> is deprecated: use my_pkg-srv:srv2-request instead.")))

(cl:ensure-generic-function 'A-val :lambda-list '(m))
(cl:defmethod A-val ((m <srv2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_pkg-srv:A-val is deprecated.  Use my_pkg-srv:A instead.")
  (A m))

(cl:ensure-generic-function 'B-val :lambda-list '(m))
(cl:defmethod B-val ((m <srv2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_pkg-srv:B-val is deprecated.  Use my_pkg-srv:B instead.")
  (B m))

(cl:ensure-generic-function 'C-val :lambda-list '(m))
(cl:defmethod C-val ((m <srv2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_pkg-srv:C-val is deprecated.  Use my_pkg-srv:C instead.")
  (C m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srv2-request>) ostream)
  "Serializes a message object of type '<srv2-request>"
  (cl:let* ((signed (cl:slot-value msg 'A)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'B)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'C)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srv2-request>) istream)
  "Deserializes a message object of type '<srv2-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'A) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'B) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'C) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srv2-request>)))
  "Returns string type for a service object of type '<srv2-request>"
  "my_pkg/srv2Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srv2-request)))
  "Returns string type for a service object of type 'srv2-request"
  "my_pkg/srv2Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srv2-request>)))
  "Returns md5sum for a message object of type '<srv2-request>"
  "fac3b9c444f0986b7566cc73cf67c1bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srv2-request)))
  "Returns md5sum for a message object of type 'srv2-request"
  "fac3b9c444f0986b7566cc73cf67c1bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srv2-request>)))
  "Returns full string definition for message of type '<srv2-request>"
  (cl:format cl:nil "int32 A~%int32 B~%int32 C~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srv2-request)))
  "Returns full string definition for message of type 'srv2-request"
  (cl:format cl:nil "int32 A~%int32 B~%int32 C~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srv2-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srv2-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srv2-request
    (cl:cons ':A (A msg))
    (cl:cons ':B (B msg))
    (cl:cons ':C (C msg))
))
;//! \htmlinclude srv2-response.msg.html

(cl:defclass <srv2-response> (roslisp-msg-protocol:ros-message)
  ((multiply
    :reader multiply
    :initarg :multiply
    :type cl:integer
    :initform 0))
)

(cl:defclass srv2-response (<srv2-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srv2-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srv2-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_pkg-srv:<srv2-response> is deprecated: use my_pkg-srv:srv2-response instead.")))

(cl:ensure-generic-function 'multiply-val :lambda-list '(m))
(cl:defmethod multiply-val ((m <srv2-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_pkg-srv:multiply-val is deprecated.  Use my_pkg-srv:multiply instead.")
  (multiply m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srv2-response>) ostream)
  "Serializes a message object of type '<srv2-response>"
  (cl:let* ((signed (cl:slot-value msg 'multiply)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srv2-response>) istream)
  "Deserializes a message object of type '<srv2-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'multiply) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srv2-response>)))
  "Returns string type for a service object of type '<srv2-response>"
  "my_pkg/srv2Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srv2-response)))
  "Returns string type for a service object of type 'srv2-response"
  "my_pkg/srv2Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srv2-response>)))
  "Returns md5sum for a message object of type '<srv2-response>"
  "fac3b9c444f0986b7566cc73cf67c1bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srv2-response)))
  "Returns md5sum for a message object of type 'srv2-response"
  "fac3b9c444f0986b7566cc73cf67c1bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srv2-response>)))
  "Returns full string definition for message of type '<srv2-response>"
  (cl:format cl:nil "int32 multiply~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srv2-response)))
  "Returns full string definition for message of type 'srv2-response"
  (cl:format cl:nil "int32 multiply~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srv2-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srv2-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srv2-response
    (cl:cons ':multiply (multiply msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srv2)))
  'srv2-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srv2)))
  'srv2-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srv2)))
  "Returns string type for a service object of type '<srv2>"
  "my_pkg/srv2")