// Generated by gencpp from file my_pkg/srv2.msg
// DO NOT EDIT!


#ifndef MY_PKG_MESSAGE_SRV2_H
#define MY_PKG_MESSAGE_SRV2_H

#include <ros/service_traits.h>


#include <my_pkg/srv2Request.h>
#include <my_pkg/srv2Response.h>


namespace my_pkg
{

struct srv2
{

typedef srv2Request Request;
typedef srv2Response Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct srv2
} // namespace my_pkg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::my_pkg::srv2 > {
  static const char* value()
  {
    return "fac3b9c444f0986b7566cc73cf67c1bd";
  }

  static const char* value(const ::my_pkg::srv2&) { return value(); }
};

template<>
struct DataType< ::my_pkg::srv2 > {
  static const char* value()
  {
    return "my_pkg/srv2";
  }

  static const char* value(const ::my_pkg::srv2&) { return value(); }
};


// service_traits::MD5Sum< ::my_pkg::srv2Request> should match
// service_traits::MD5Sum< ::my_pkg::srv2 >
template<>
struct MD5Sum< ::my_pkg::srv2Request>
{
  static const char* value()
  {
    return MD5Sum< ::my_pkg::srv2 >::value();
  }
  static const char* value(const ::my_pkg::srv2Request&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_pkg::srv2Request> should match
// service_traits::DataType< ::my_pkg::srv2 >
template<>
struct DataType< ::my_pkg::srv2Request>
{
  static const char* value()
  {
    return DataType< ::my_pkg::srv2 >::value();
  }
  static const char* value(const ::my_pkg::srv2Request&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::my_pkg::srv2Response> should match
// service_traits::MD5Sum< ::my_pkg::srv2 >
template<>
struct MD5Sum< ::my_pkg::srv2Response>
{
  static const char* value()
  {
    return MD5Sum< ::my_pkg::srv2 >::value();
  }
  static const char* value(const ::my_pkg::srv2Response&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_pkg::srv2Response> should match
// service_traits::DataType< ::my_pkg::srv2 >
template<>
struct DataType< ::my_pkg::srv2Response>
{
  static const char* value()
  {
    return DataType< ::my_pkg::srv2 >::value();
  }
  static const char* value(const ::my_pkg::srv2Response&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MY_PKG_MESSAGE_SRV2_H
