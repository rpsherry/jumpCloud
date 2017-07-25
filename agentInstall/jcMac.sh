curl -o /tmp/jumpcloud-agent.pkg "https://s3.amazonaws.com/jumpcloud-windows-agent/production/jumpcloud-agent.pkg"
mkdir -p /opt/jc
cat <<-EOF > /opt/jc/agentBootstrap.json
{
"publicKickstartUrl": "https://kickstart.jumpcloud.com:443",
"privateKickstartUrl": "https://private-kickstart.jumpcloud.com:443",
"connectKey": "YOUR_CONNECT_KEY"
}
EOF
installer -pkg /tmp/jumpcloud-agent.pkg -target /



Successful Installer output: 

installer: Package name is JumpCloud
installer: Installing at base path /
installer: The install was successful.