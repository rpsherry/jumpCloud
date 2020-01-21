# Jump Cloud Deployment Scripts

# Author:		Ryan Sherry
# Date Created:	7/6/2017
# Company:		Reverus
# Client:		Green Chef

# Purpose: Put admin on all systems managed by jump cloud

readApiKey() {

apiKey= <insert key here>

apiCall

}

# API call example
apiCall() { 

curl \
  -X 'PUT' \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H "x-api-key: $[apiKey]" \
  -d '{ "add": ["<insert device key"], "remove": [""] }' \
  "https://console.jumpcloud.com/api/systems/<apitkey>/systemusers" \

}

readApiKey
