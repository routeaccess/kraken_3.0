; Auto-generated. Do not edit!


(cl:in-package ip_msgs-msg)


;//! \htmlinclude markerFeedback.msg.html

(cl:defclass <markerFeedback> (roslisp-msg-protocol:ros-message)
  ((errorx
    :reader errorx
    :initarg :errorx
    :type cl:integer
    :initform 0)
   (errorangle
    :reader errorangle
    :initarg :errorangle
    :type cl:float
    :initform 0.0))
)

(cl:defclass markerFeedback (<markerFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <markerFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'markerFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ip_msgs-msg:<markerFeedback> is deprecated: use ip_msgs-msg:markerFeedback instead.")))

(cl:ensure-generic-function 'errorx-val :lambda-list '(m))
(cl:defmethod errorx-val ((m <markerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ip_msgs-msg:errorx-val is deprecated.  Use ip_msgs-msg:errorx instead.")
  (errorx m))

(cl:ensure-generic-function 'errorangle-val :lambda-list '(m))
(cl:defmethod errorangle-val ((m <markerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ip_msgs-msg:errorangle-val is deprecated.  Use ip_msgs-msg:errorangle instead.")
  (errorangle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <markerFeedback>) ostream)
  "Serializes a message object of type '<markerFeedback>"
  (cl:let* ((signed (cl:slot-value msg 'errorx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'errorangle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <markerFeedback>) istream)
  "Deserializes a message object of type '<markerFeedback>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'errorx) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'errorangle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<markerFeedback>)))
  "Returns string type for a message object of type '<markerFeedback>"
  "ip_msgs/markerFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'markerFeedback)))
  "Returns string type for a message object of type 'markerFeedback"
  "ip_msgs/markerFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<markerFeedback>)))
  "Returns md5sum for a message object of type '<markerFeedback>"
  "ed3078b68744c9114327632d85826408")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'markerFeedback)))
  "Returns md5sum for a message object of type 'markerFeedback"
  "ed3078b68744c9114327632d85826408")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<markerFeedback>)))
  "Returns full string definition for message of type '<markerFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%int32 errorx~%float32 errorangle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'markerFeedback)))
  "Returns full string definition for message of type 'markerFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%int32 errorx~%float32 errorangle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <markerFeedback>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <markerFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'markerFeedback
    (cl:cons ':errorx (errorx msg))
    (cl:cons ':errorangle (errorangle msg))
))
