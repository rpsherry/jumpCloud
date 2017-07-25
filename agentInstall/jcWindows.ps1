<#
Jump Cloud Agent Windows Deployment Script

Author:         Ryan Sherry
Date Created:   7/14/2017
Company:        Reverus

Purpose:        Deployment of Jump Cloud Agent onto Windows
#>

$User = $env:UserName


#check to Make sure user is admin powershell if not elevate

If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))

{   
$arguments = "& '" + $myinvocation.mycommand.definition + "'"
Start-Process powershell -Verb runAs -ArgumentList $arguments
Break
}

Write-Host "Starting JumpCloudInstaller"
Write-Host "User:" $User

#else start JumpCloudInstaller

#download from the website
Write-Host "Down Loading agent file from s3"
(New-Object System.Net.WebClient).DownloadFile("https://s3.amazonaws.com/jumpcloud-windows-agent/production/JumpCloudInstaller.exe", "$env:C:\temp\JumpCloudInstaller.exe")


#change to where the file was downloaded
cd C:\TEMP

 #install the file silently
& ".\JumpCloudInstaller.exe" -k <INSTERT KEY HERE> /SUPPRESSMSGBOXES /VERYSILENT /NORESTART

Write-Host "JumpCloudInstaller installed"
