# Jump Cloud Deployment Scripts
# Author:		Ryan Sherry
# Date Created:	7/6/2017
# Company:		Reverus

# Purpose: grab all systems on jumpcloud's ID numbers
readApiKey() {

apiKey= <instert key here>

apiCall

}
# API call example
apiCall() { 

curl \
  -X 'GET' \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H "x-api-key: ${apiKey}" \
  "https://console.jumpcloud.com/api/systems" \
  |jq '.results[] | {id: ._id, hostName: .hostname, os: .os}' \
  > results.json


  #the jq is what parses the json output from the curl api access call
  #it builds a new json file from the results array.
  #using the_id, .hostname, .os fields

}

readApiKey
