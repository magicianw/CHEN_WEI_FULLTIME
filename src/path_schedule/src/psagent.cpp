#include "ros/ros.h"
#include "path_schedule/path_plan_service.h"
#include <cstdlib>
#include <geometry_msgs/Twist.h>
#include <ros/console.h>
#include <nav_msgs/Path.h>
#include <std_msgs/String.h>
#include <geometry_msgs/Quaternion.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PointStamped.h>
#include <tf/transform_broadcaster.h>
#include <tf/tf.h>
#include <cstdlib>
#include <visualization_msgs/Marker.h>
#include <cmath>

#include<iostream>
using namespace std;

int goal_x;
int goal_y;
int goal_theta;
int update_request_flag = 0;
int agent_id;
int path_generate_flag = 0;

void SplitString(const string& s, vector<string>& v, const string& c)
{
	string::size_type pos1, pos2;
	pos2 = s.find(c);
	pos1 = 0;
	while (string::npos != pos2)
	{
		v.push_back(s.substr(pos1, pos2 - pos1));

		pos1 = pos2 + c.size();
		pos2 = s.find(c, pos1);
	}
	if (pos1 != s.length())
		v.push_back(s.substr(pos1));
}

bool update_goal(path_schedule::path_plan_service::Request& req, path_schedule::path_plan_service::Response& res)
{

	ROS_INFO("get a goal position is (%d, %d, %f)", req.goal_x, req.goal_y, req.goal_theta);
	goal_x = req.goal_x;
	goal_y = req.goal_y;
	goal_theta = req.goal_theta;
	update_request_flag = 1;
	res.agent_id = agent_id;
	return true;
}

int main(int argc, char** argv)
{
	  if (argc != 5)
	  {
	    ROS_INFO("usage: rosrun <package_name> psagent agent_id cur_x cur_y cur_theta");
	    return 1;
	  }
	 
	agent_id = atoi(argv[1]);
	string node_name = "psagent" +  std::to_string(agent_id);
	ros::init(argc, argv, node_name);
	ros::NodeHandle n;

	ros::ServiceClient client = n.serviceClient<path_schedule::path_plan_service>("get_plan");
	path_schedule::path_plan_service srv;
	
	string update_goal_name = "update_goal" +   std::to_string(agent_id);
	ros::ServiceServer update_service = n.advertiseService(update_goal_name, update_goal);
	
	srv.request.id = atoi(argv[1]);
	srv.request.cur_x = atoi(argv[2]);
	srv.request.cur_y = atoi(argv[3]);
	srv.request.cur_theta = atoi(argv[4]);

	int agent_current_x = srv.request.cur_x;
	int agent_current_y = srv.request.cur_y;

	ros::Publisher agent_feedback_pub = n.advertise<geometry_msgs::Twist>("agent_feedback", 500);
	geometry_msgs::Twist twist;
	twist.linear.x = agent_current_x;
	twist.linear.y = agent_current_y;

	ros::Rate loop_rate(10);
	int count = 0;
	
	string agent_path_pub_name = "agent_path_pub" + std::to_string(agent_id);
	ros::Publisher agent_path_pub = n.advertise<visualization_msgs::Marker>(agent_path_pub_name, 10);

	while (ros::ok())
	{
		twist.linear.x = agent_current_x;
		twist.linear.y = agent_current_y;
		agent_feedback_pub.publish(twist);
		ROS_INFO("agent %d publish current position x=%d y=%d", srv.request.id, agent_current_x, agent_current_y);

		ros::spinOnce();
		if (path_generate_flag == 1)
		{
			visualization_msgs::Marker line_list1;
			line_list1.header.frame_id = "my_frame";
			line_list1.header.stamp = ros::Time::now();
			line_list1.ns = "points_and_lines";
			line_list1.action = visualization_msgs::Marker::ADD;
			line_list1.pose.orientation.w = 1.0;
			//分配id
			line_list1.id = 1;
			//初始化形状
			line_list1.type = visualization_msgs::Marker::LINE_LIST;
			// LINE_STRIP/LINE_LIST markers use only the x component of scale, for the line width
			line_list1.scale.x = 0.5;
			// Line strip is green
			line_list1.color.g = 1.0;
			line_list1.color.a = 1.0;

			string res_path = srv.response.path;
			vector<string> v1;
			SplitString(srv.response.path, v1, ";");
			for (vector<string>::size_type i = 0; i != (v1.size()-1); ++i) {
				std::string str1, str2;
				str1 = v1[i];
				str2 = v1[i+1];
				vector<string> v2_1, v2_2;
				SplitString(str1, v2_1, ",");
				SplitString(str2, v2_2, ",");
				geometry_msgs::Point p1, p2;
				p1.x = atoi(v2_1[0].c_str());;
				p1.y = atoi(v2_1[1].c_str());
				p1.z = 0;
				p2.x = atoi(v2_2[0].c_str());;
				p2.y = atoi(v2_2[1].c_str());
				p2.z = 0;
				line_list1.points.push_back(p1);
				line_list1.points.push_back(p2);
			}
			agent_path_pub.publish(line_list1);
		}
		if (update_request_flag == 1)
		{
			srv.request.id = atoi(argv[1]);
			srv.request.cur_x = atoi(argv[2]);
			srv.request.cur_y = atoi(argv[3]);
			srv.request.cur_theta = atoi(argv[4]);
			srv.request.goal_x = goal_x;
			srv.request.goal_y = goal_y;
			srv.request.goal_theta = goal_theta;
			if (client.call(srv))
			{
				path_generate_flag = 1;
				vector<string> v1;
				SplitString(srv.response.path, v1, ";");
				for (vector<string>::size_type i = 0; i != v1.size(); ++i) {
					std::string str;
					str = v1[i];
					vector<string> v2;
					SplitString(str, v2, ",");
					agent_current_x = atoi(v2[0].c_str());
					agent_current_y = atoi(v2[1].c_str());
				}
				
			}
			else
			{
				ROS_INFO("%s", client.call(srv));
				ROS_ERROR("Failed to call service get_plan");
			}
			update_request_flag = 0;
		}

		loop_rate.sleep();
		++count;
	}
	return 0;
}