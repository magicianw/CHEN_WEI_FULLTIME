#include "ros/ros.h"
#include "path_schedule/path_plan_service.h"
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

int agent_id;
int agent_cur_x;
int agent_cur_y;
int agent_cur_theta;
int heard_agent = 0;

// customize a function of splitting string s by specific delim c, the resulted strings are stored in v
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

// subscriber callback for agent's topic message which contains agent's current position (x, y, theta). (under construction)
void agent_feedback(const geometry_msgs::Twist::ConstPtr& pos)
{
	// test for receiving topic message
	int x = pos->linear.x;
	int y = pos->linear.y;
	ROS_INFO("heard a agent's position x is %d y is %d", x, y);
	if (heard_agent == 0)
	{
		agent_cur_x = pos->linear.x;
		agent_cur_y = pos->linear.y;
		//ROS_INFO("agent_cur_x is %d agent_cur_y is %d", agent_cur_x, agent_cur_y);
		heard_agent = 1;
	}
}

// ros service for planning agent path
bool get_plan(path_schedule::path_plan_service::Request& req,	path_schedule::path_plan_service::Response& res)
{
	ROS_INFO("agent %d's current position is (%d, %d, %f)", req.id, req.cur_x, req.cur_y, req.cur_theta);
	ROS_INFO("agent %d's goal position is (%d, %d, %f)", req.id, req.goal_x, req.goal_y, req.goal_theta);
	int x = req.cur_x;
	int y = req.cur_y;
	// int x = agent_cur_x;
	// int y = agent_cur_y;
	int move_flag = 0;
	// record the path into a string variable path
	std::string path = std::to_string(x) + "," + std::to_string(y) + ";";
	// greedy approach for finding a path from the current position to the goal position. During to the roadmap structure, the agent is moved along x-axis and then y-axis 
	while ((x != req.goal_x) || (y != req.goal_y))
	{
		ROS_INFO("current position is (%d, %d)", x, y);
		ROS_INFO("current path is %s", path);
		move_flag = 0;

		if (x < req.goal_x)
		{
			x += 1;
			move_flag = 1;
		}
		if (x > req.goal_x)
		{
			x -= 1;
			move_flag = 1;
		}
		if (move_flag == 1)
		{
			path = path + std::to_string(x) + "," + std::to_string(y) + ";";
			continue;
		}
		if (y < req.goal_y)
		{
			y += 1;
		}
		if (y > req.goal_y)
		{
			y -= 1;
		}
		path = path + std::to_string(x) + "," + std::to_string(y) + ";";
	}

	res.path = path;
	ROS_INFO("agent %d's current position is (%d, %d, %f)", req.id, x, y, req.cur_theta);
	ROS_INFO("agent %d's goal position is (%d, %d, %f)", req.id, req.goal_x, req.goal_y, req.goal_theta);
	ROS_INFO("agent %d's path is %s", req.id, path);
	
	// verify the path
	vector<string> v1;
	SplitString(path, v1, ";");
	for (vector<string>::size_type i = 0; i != v1.size(); ++i) {
		ROS_INFO("full leg is %s", v1[i]);
		std::string str;
		str = v1[i];
		ROS_INFO("full string is %s", v1[i]);
		vector<string> v2;
		SplitString(str, v2, ",");
		ROS_INFO("leg is x=%d y=%d", atoi(v2[0].c_str()), atoi(v2[1].c_str()));
	}
	heard_agent = 0;
	return true;
}

int main(int argc, char** argv)
{
	//ros::NodeHandle n;

	ros::init(argc, argv, "psplanner_ros_node");
	ros::NodeHandle n;

	ROS_INFO("psplanner_ros_node Ready");
	ros::ServiceServer service = n.advertiseService("get_plan", get_plan);
	ROS_INFO("Ready to receive agent get_plan");

	ros::Subscriber agent_feedback_sub = n.subscribe("agent_feedback", 1, agent_feedback);
	ROS_INFO("agent_feedback_sub initial");

	ros::Publisher roadmap_pub = n.advertise<visualization_msgs::Marker>("roadmap", 10);

	ros::Rate r(30);
	ROS_INFO("test");
	float f = 0.0;
	
	

	//ros::ServiceServer service = n.advertiseService("get_plan", get_plan);
	//ROS_INFO("Ready to receive agent get_plan");

	//  ros::ServiceClient client = n.serviceClient<path_schedule::path_plan_service>("get_plan");
	//	path_schedule::path_plan_service srv;
	//	srv.id = atoll(argv[1]);
	//	srv.request.goal_x = atoll(argv[2]); // atoll(argv[1])
	//  srv.request.goal_y = atoll(argv[3]);
	//  srv.request.goal_theta = atoll(argv[4]);
	//
	//
	//
	//  ros::ServiceServer service = n.advertiseService("psplanner_path", add);
	//  ROS_INFO("Ready to add two ints.");
	ros::Rate loop_rate(1);
	while (ros::ok())
	{

		//while (ros::ok())
	//{

	visualization_msgs::Marker points, line_strip, line_list;

	//初始化
	points.header.frame_id = line_strip.header.frame_id = line_list.header.frame_id = "my_frame";
	points.header.stamp = line_strip.header.stamp = line_list.header.stamp = ros::Time::now();
	points.ns = line_strip.ns = line_list.ns = "points_and_lines";
	points.action = line_strip.action = line_list.action = visualization_msgs::Marker::ADD;
	points.pose.orientation.w = line_strip.pose.orientation.w = line_list.pose.orientation.w = 1.0;


	//分配3个id
	points.id = 0;
	//line_strip.id = 1;
	line_list.id = 2;


	//初始化形状
	points.type = visualization_msgs::Marker::POINTS;
	//line_strip.type = visualization_msgs::Marker::LINE_STRIP;
	line_list.type = visualization_msgs::Marker::LINE_LIST;

	//初始化大小
	// POINTS markers use x and y scale for width/height respectively
	points.scale.x = 0.2;
	points.scale.y = 0.2;

	// LINE_STRIP/LINE_LIST markers use only the x component of scale, for the line width
	//line_strip.scale.x = 0.1;
	line_list.scale.x = 0.1;

	//初始化颜色
	// Points are green
	points.color.g = 1.0f;
	points.color.a = 1.0;

	// Line strip is red
	line_strip.color.b = 1.0;
	line_strip.color.a = 1.0;

	// Line list is blue
	line_list.color.r = 1.0;
	line_list.color.a = 1.0;



	// Create the vertices for the points and lines
	for (uint32_t i = 0; i < 11; ++i)
	{
		for (uint32_t j = 0; j < 11; ++j)
		{
			ROS_INFO("current_x: %d", i);
			ROS_INFO("current_y: %d", j);

			geometry_msgs::Point p;
			p.x = i;
			p.y = j;
			p.z = 0;

			points.points.push_back(p);
			// line_strip.points.push_back(p);

			// The line list needs two points for each line

			if (i < 10)
			{
				line_list.points.push_back(p);
				p.x += 1;
				line_list.points.push_back(p);

				p.x -= 1;
			}
			if (j < 10)
			{
				line_list.points.push_back(p);
				p.y += 1;
				line_list.points.push_back(p);
			}
		}
	}

	roadmap_pub.publish(points);
	//roadmap_pub.publish(line_strip);
	roadmap_pub.publish(line_list);

	r.sleep();

	f += 0.04;

		loop_rate.sleep();
		ros::spinOnce();
	}

	//ros::spin();

	return 0;
}