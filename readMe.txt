Jump Cloud Deployment Scripts

Author:		Ryan Sherry
Date Created:	7/6/2017
Company:	Reverus

Purpose: 	Deployment of Jump Cloud Directory Services for Onboarding Client

==

There are two folders representing two stages of deployment. They are acomplished in this order.

1. \agentInstall
2. \agentConfig


The install folder contains scripts for putting the jump cloud agent silently on Linuz, Mac, and Windows.
This MUST be done with Admin Privleges.  --- THEY ARE INTENDED TO BE DEPLOYED FROM A RMS PLATFORM

The config folder contains scripts for configuring the agents on each machine to add the admin accounts for reverus.
--THEY ARE INTENDED TO BE DEPLOYED REMOTLEY FROM ANY WORKSTATION
--WORKSTATION MUST BE ABLE TO RUN BASH SCRIPTS (I used ubuntu bash terminal for windows)

==

Scripts are heavily modified from https://github.com/TheJumpCloud/support/tree/master/scripts
Modifications where done with the help of documentation on https://docs.jumpcloud.com/1.0/systemusers/list-a-system-user

==

NOTE: that scripting is based on the JCapi version 1

