// Auto-generated. Do not edit!

// (in-package path_schedule.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class path_plan_serviceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.cur_x = null;
      this.cur_y = null;
      this.cur_theta = null;
      this.goal_x = null;
      this.goal_y = null;
      this.goal_theta = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('cur_x')) {
        this.cur_x = initObj.cur_x
      }
      else {
        this.cur_x = 0;
      }
      if (initObj.hasOwnProperty('cur_y')) {
        this.cur_y = initObj.cur_y
      }
      else {
        this.cur_y = 0;
      }
      if (initObj.hasOwnProperty('cur_theta')) {
        this.cur_theta = initObj.cur_theta
      }
      else {
        this.cur_theta = 0;
      }
      if (initObj.hasOwnProperty('goal_x')) {
        this.goal_x = initObj.goal_x
      }
      else {
        this.goal_x = 0;
      }
      if (initObj.hasOwnProperty('goal_y')) {
        this.goal_y = initObj.goal_y
      }
      else {
        this.goal_y = 0;
      }
      if (initObj.hasOwnProperty('goal_theta')) {
        this.goal_theta = initObj.goal_theta
      }
      else {
        this.goal_theta = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type path_plan_serviceRequest
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [cur_x]
    bufferOffset = _serializer.int32(obj.cur_x, buffer, bufferOffset);
    // Serialize message field [cur_y]
    bufferOffset = _serializer.int32(obj.cur_y, buffer, bufferOffset);
    // Serialize message field [cur_theta]
    bufferOffset = _serializer.int32(obj.cur_theta, buffer, bufferOffset);
    // Serialize message field [goal_x]
    bufferOffset = _serializer.int32(obj.goal_x, buffer, bufferOffset);
    // Serialize message field [goal_y]
    bufferOffset = _serializer.int32(obj.goal_y, buffer, bufferOffset);
    // Serialize message field [goal_theta]
    bufferOffset = _serializer.int32(obj.goal_theta, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type path_plan_serviceRequest
    let len;
    let data = new path_plan_serviceRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cur_x]
    data.cur_x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cur_y]
    data.cur_y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cur_theta]
    data.cur_theta = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [goal_x]
    data.goal_x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [goal_y]
    data.goal_y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [goal_theta]
    data.goal_theta = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'path_schedule/path_plan_serviceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '651400191eda9b36413bede9fc8fdea4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    int32 cur_x
    int32 cur_y
    int32 cur_theta
    int32 goal_x
    int32 goal_y
    int32 goal_theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new path_plan_serviceRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.cur_x !== undefined) {
      resolved.cur_x = msg.cur_x;
    }
    else {
      resolved.cur_x = 0
    }

    if (msg.cur_y !== undefined) {
      resolved.cur_y = msg.cur_y;
    }
    else {
      resolved.cur_y = 0
    }

    if (msg.cur_theta !== undefined) {
      resolved.cur_theta = msg.cur_theta;
    }
    else {
      resolved.cur_theta = 0
    }

    if (msg.goal_x !== undefined) {
      resolved.goal_x = msg.goal_x;
    }
    else {
      resolved.goal_x = 0
    }

    if (msg.goal_y !== undefined) {
      resolved.goal_y = msg.goal_y;
    }
    else {
      resolved.goal_y = 0
    }

    if (msg.goal_theta !== undefined) {
      resolved.goal_theta = msg.goal_theta;
    }
    else {
      resolved.goal_theta = 0
    }

    return resolved;
    }
};

class path_plan_serviceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.path = null;
      this.path_y = null;
      this.path_node_num = null;
      this.agent_id = null;
    }
    else {
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = '';
      }
      if (initObj.hasOwnProperty('path_y')) {
        this.path_y = initObj.path_y
      }
      else {
        this.path_y = '';
      }
      if (initObj.hasOwnProperty('path_node_num')) {
        this.path_node_num = initObj.path_node_num
      }
      else {
        this.path_node_num = 0;
      }
      if (initObj.hasOwnProperty('agent_id')) {
        this.agent_id = initObj.agent_id
      }
      else {
        this.agent_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type path_plan_serviceResponse
    // Serialize message field [path]
    bufferOffset = _serializer.string(obj.path, buffer, bufferOffset);
    // Serialize message field [path_y]
    bufferOffset = _serializer.string(obj.path_y, buffer, bufferOffset);
    // Serialize message field [path_node_num]
    bufferOffset = _serializer.int32(obj.path_node_num, buffer, bufferOffset);
    // Serialize message field [agent_id]
    bufferOffset = _serializer.int32(obj.agent_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type path_plan_serviceResponse
    let len;
    let data = new path_plan_serviceResponse(null);
    // Deserialize message field [path]
    data.path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [path_y]
    data.path_y = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [path_node_num]
    data.path_node_num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [agent_id]
    data.agent_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.path);
    length += _getByteLength(object.path_y);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'path_schedule/path_plan_serviceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81217a34334aaaa534d6087199e767e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string path
    string path_y
    int32 path_node_num
    int32 agent_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new path_plan_serviceResponse(null);
    if (msg.path !== undefined) {
      resolved.path = msg.path;
    }
    else {
      resolved.path = ''
    }

    if (msg.path_y !== undefined) {
      resolved.path_y = msg.path_y;
    }
    else {
      resolved.path_y = ''
    }

    if (msg.path_node_num !== undefined) {
      resolved.path_node_num = msg.path_node_num;
    }
    else {
      resolved.path_node_num = 0
    }

    if (msg.agent_id !== undefined) {
      resolved.agent_id = msg.agent_id;
    }
    else {
      resolved.agent_id = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: path_plan_serviceRequest,
  Response: path_plan_serviceResponse,
  md5sum() { return 'a492be626b9e9035dc3f45a07b0259c0'; },
  datatype() { return 'path_schedule/path_plan_service'; }
};
