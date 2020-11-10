// Auto-generated. Do not edit!

// (in-package my_pkg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class srv2Request {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.A = null;
      this.B = null;
      this.C = null;
    }
    else {
      if (initObj.hasOwnProperty('A')) {
        this.A = initObj.A
      }
      else {
        this.A = 0;
      }
      if (initObj.hasOwnProperty('B')) {
        this.B = initObj.B
      }
      else {
        this.B = 0;
      }
      if (initObj.hasOwnProperty('C')) {
        this.C = initObj.C
      }
      else {
        this.C = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srv2Request
    // Serialize message field [A]
    bufferOffset = _serializer.int32(obj.A, buffer, bufferOffset);
    // Serialize message field [B]
    bufferOffset = _serializer.int32(obj.B, buffer, bufferOffset);
    // Serialize message field [C]
    bufferOffset = _serializer.int32(obj.C, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srv2Request
    let len;
    let data = new srv2Request(null);
    // Deserialize message field [A]
    data.A = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [B]
    data.B = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [C]
    data.C = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'my_pkg/srv2Request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e7a68ce4e0b75a9719b4950a7069c9d4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 A
    int32 B
    int32 C
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new srv2Request(null);
    if (msg.A !== undefined) {
      resolved.A = msg.A;
    }
    else {
      resolved.A = 0
    }

    if (msg.B !== undefined) {
      resolved.B = msg.B;
    }
    else {
      resolved.B = 0
    }

    if (msg.C !== undefined) {
      resolved.C = msg.C;
    }
    else {
      resolved.C = 0
    }

    return resolved;
    }
};

class srv2Response {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.multiply = null;
    }
    else {
      if (initObj.hasOwnProperty('multiply')) {
        this.multiply = initObj.multiply
      }
      else {
        this.multiply = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srv2Response
    // Serialize message field [multiply]
    bufferOffset = _serializer.int32(obj.multiply, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srv2Response
    let len;
    let data = new srv2Response(null);
    // Deserialize message field [multiply]
    data.multiply = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'my_pkg/srv2Response';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6beb9d0eae755804051c303fd583c637';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 multiply
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new srv2Response(null);
    if (msg.multiply !== undefined) {
      resolved.multiply = msg.multiply;
    }
    else {
      resolved.multiply = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: srv2Request,
  Response: srv2Response,
  md5sum() { return 'fac3b9c444f0986b7566cc73cf67c1bd'; },
  datatype() { return 'my_pkg/srv2'; }
};
