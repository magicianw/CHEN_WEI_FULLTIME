#include "ros/ros.h"
#include "path_schedule/path_plan_service.h"
#include<iostream>
using namespace std;


int main(int argc, char** argv)
{
	if (argc != 5)
	  {
	    ROS_INFO("usage: rosrun <package_name> pscontrol agent_id goal_x goal_y goal_theta");
	    return 1;
	  }
	ros::init(argc, argv, "pscontrol");
	ros::NodeHandle n;
	
	int agent_id = atoi(argv[1]);
	string update_goal_name = "update_goal" +   std::to_string(agent_id);
	ros::ServiceClient client = n.serviceClient<path_schedule::path_plan_service>(update_goal_name);
	path_schedule::path_plan_service srv;

	srv.request.goal_x = atoi(argv[2]);
	srv.request.goal_y = atoi(argv[3]);
	srv.request.goal_theta = atoi(argv[4]);

	if (client.call(srv))
	{
		ROS_INFO("set goal position (%d %d %f) to agent %d", srv.request.goal_x, srv.request.goal_y, srv.request.goal_theta, srv.response.agent_id );
	}
	else
	{
		ROS_INFO("%s", client.call(srv));
		ROS_ERROR("Failed to call service get_plan");
	}

	return 0;
}