; Auto-generated. Do not edit!


(cl:in-package my_pkg-msg)


;//! \htmlinclude msg1.msg.html

(cl:defclass <msg1> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass msg1 (<msg1>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msg1>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msg1)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_pkg-msg:<msg1> is deprecated: use my_pkg-msg:msg1 instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msg1>) ostream)
  "Serializes a message object of type '<msg1>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msg1>) istream)
  "Deserializes a message object of type '<msg1>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msg1>)))
  "Returns string type for a message object of type '<msg1>"
  "my_pkg/msg1")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msg1)))
  "Returns string type for a message object of type 'msg1"
  "my_pkg/msg1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msg1>)))
  "Returns md5sum for a message object of type '<msg1>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msg1)))
  "Returns md5sum for a message object of type 'msg1"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msg1>)))
  "Returns full string definition for message of type '<msg1>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msg1)))
  "Returns full string definition for message of type 'msg1"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msg1>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msg1>))
  "Converts a ROS message object to a list"
  (cl:list 'msg1
))
