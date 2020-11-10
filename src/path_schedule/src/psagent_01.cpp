#include "ros/ros.h"
#include "path_schedule/path_plan_service.h"
#include <cstdlib>
#include <geometry_msgs/Twist.h>

#include<iostream>
using namespace std;

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

bool update_goal(path_schedule::path_plan_service::Request& req,
	path_schedule::path_plan_service::Response& res)
{

	ROS_INFO("agent %d's current position is (%d, %d, %f)", req.id, req.cur_x, req.cur_y, req.cur_theta);
	ROS_INFO("agent %d's goal position is (%d, %d, %f)", req.id, req.goal_x, req.goal_y, req.goal_theta);
	int x = req.cur_x;
	int y = req.cur_y;
	int move_flag = 0;
	std::string path = std::to_string(x) + "," + std::to_string(y) + ";";
	ROS_INFO("x != req.goal_x is %d", x != req.goal_x);
	ROS_INFO("(y != req.goal_y) is %d", (y != req.goal_y));
	ROS_INFO("(x != req.goal_x) && (y != req.goal_y) is %d", (x != req.goal_x) && (y != req.goal_y));


	return true;
}

int main(int argc, char** argv)
{
	ros::init(argc, argv, "psagent");
	//  if (argc != 8)
	//  {
	//    ROS_INFO("usage: get_plan id cur_x cur_y cur_theta goal_x goal_y goal_theta");
	//    return 1;
	//  }
	ros::NodeHandle n;

	ros::ServiceClient client = n.serviceClient<path_schedule::path_plan_service>("get_plan");
	path_schedule::path_plan_service srv;

	srv.request.id = atoi(argv[1]);
	srv.request.cur_x = atoi(argv[2]);
	srv.request.cur_y = atoi(argv[3]);
	srv.request.cur_theta = atoi(argv[4]);
	srv.request.goal_x = atoi(argv[5]);
	srv.request.goal_y = atoi(argv[6]);
	srv.request.goal_theta = atoi(argv[7]);
	//  srv.request.id = n.getParam("id", id);
	//  srv.request.cur_x = n.getParam("cur_x", cur_x);
	//  srv.request.cur_y = n.getParam("cur_y", cur_y);
	//  srv.request.cur_theta = n.getParam("cur_theta", cur_theta);
	//  srv.request.goal_x = n.getParam("goal_x", goal_x);
	//  srv.request.goal_y = n.getParam("goal_y", goal_y);
	//  srv.request.goal_theta = n.getParam("goal_theta", goal_theta);

		//n.getParam("id", srv.request.id);
	n.getParam("id", srv.request.id);
	n.getParam("cur_x", srv.request.cur_x);
	n.getParam("cur_y", srv.request.cur_y);
	n.getParam("cur_theta", srv.request.cur_theta);
	n.getParam("goal_x", srv.request.goal_x);
	n.getParam("goal_y", srv.request.goal_y);
	n.getParam("goal_theta", srv.request.goal_theta);


	ros::Publisher agent_feedback_pub = n.advertise<geometry_msgs::Twist>("agent_feedback", 500);
	geometry_msgs::Twist twist;
	twist.linear.x = srv.request.cur_x;
	twist.linear.y = srv.request.cur_y;

	ros::ServiceServer service = n.advertiseService("update_goal", update_goal);
	ROS_INFO("Ready to receive agent get_plan");
	ros::spin();


	//ROS_INFO("id is %d cur_x is %d cur_y is %d cur_theta is %d goal_x is %d goal_y is %d goal_theta is %d ", srv.request.id, srv.request.cur_x, srv.request.cur_y, srv.request.cur_theta, srv.request.goal_x, srv.request.goal_y, srv.request.goal_theta );
	// ROS_INFO("agent %d's current position is (%d, %d, %f)", req.cur_x, req.cur_y, req.cur_theta);
	// ROS_INFO("agent %d's current position is (%d, %d, %f)", req.cur_x, req.cur_y, req.cur_theta);
	ros::Rate loop_rate(10);
	int count = 0;
	while (ros::ok())
	{

		agent_feedback_pub.publish(twist);
		ROS_INFO("agent %d publish x=%d y=%d", srv.request.id, twist.linear.x, twist.linear.y);

		ros::spinOnce();

		if (count == 100)
		{
			if (client.call(srv))
			{
				ROS_INFO("test: %s", srv.response.path);
				vector<string> v1;
				SplitString(srv.response.path, v1, ";");
				for (vector<string>::size_type i = 0; i != v1.size(); ++i) {
					ROS_INFO("full leg is %s", v1[i]);
					std::string str;
					str = v1[i];
					ROS_INFO("full string is %s", v1[i]);
					vector<string> v2;
					SplitString(str, v2, ",");
					ROS_INFO("leg is x=%d y=%d", atoi(v2[0].c_str()), atoi(v2[1].c_str()));
				}
			}
			else
			{
				ROS_INFO("%s", client.call(srv));
				ROS_ERROR("Failed to call service get_plan");
			}
		}

		loop_rate.sleep();
		++count;
	}



	// client.call(srv);
	// ROS_INFO("call srv");
	// ROS_INFO("Sum: %ld", (long int)srv.response.result);
	return 0;
}