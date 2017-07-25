Jump Cloud Agent Deployment Scripts

Author:		Ryan Sherry
Date Created:	7/6/2017
Company:	Reverus

Purpose: 	Deployment of Jump Cloud Agent onto Windows, Mac and Linux devices.

==

Five files

1. jcLinux.sh		(Incomplete)
2. jcMac.sh		(Incomplete)
3. jcWindows.ps1
4. JumpCloudInstaller	(Windows Agent)
5. jumpcloud-agent.pkg	(Mac Agent	

==

Each file contains the script file to be deployed through n-central to install the agent.
They have the system key hard coded and this will need to be changed if the key changes.

There are also two agent installer files for the associated OS that will be used by the script. Linux does not need an install file.

==

info foudn at https://support.jumpcloud.com/customer/en/portal/articles/2389320-agent-deployment-via-command-line

==

NOTE: that scripting is based on the JCapi version 1

