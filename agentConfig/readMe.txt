Jump Cloud Deployment Scripts

Author:		Ryan Sherry
Date Created:	7/6/2017
Company:	Reverus


Purpose: Configure Agent once it is installed	

==

Two files are included in this folder: (other files are outputs)
 
1. getAllSystems.sh 
2. putSystemUsers.sh

getAllSystems is used to create a .json file of all systems and there ids.
This information is then inputed into putSystemUsers as a list of systems to deploy admin accounts

==

Scripts are heavily modified from https://github.com/TheJumpCloud/support/tree/master/scripts
Modifications where done with the help of documentation on https://docs.jumpcloud.com/1.0/systemusers/list-a-system-user

==

NOTE: that scripting is based on the JCapi version 1




