# CHEN_WEI_FULLTIME
1. Run the project
(1) in a new terminal: roscore
(2) in a new terminal: rosrun path_schedule psplanner
(3) in a new terminal: rosrun path_schedule psagent agent_id initial_x initial_y initial_theta
(4) in a new terminal: rosrun rviz rviz
(5) in the opened rviz window: 
    1) change the frame name "map" to "my_frame"
    2) click "add" button, select "by topic", add roadmap marker
    3) add agent_path marker
(6) in a new terminal: rosrun path_schedule pscontrol agent_id goal_x goal_y goal_theta
(7) the planned path will be displayed in the rviz window
2. Run the launch
(1) in a new terminal: roslaunch path_schedule agents.launch
(2) in a new terminal: rosrun path_schedule pscontrol agent_id goal_x goal_y goal_theta
    
