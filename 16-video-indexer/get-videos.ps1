$account_id="cbed769b-0ad1-4954-b2d0-463048d5a2a9"
$api_key="5b08d7f451264b3eb8f21fd0b3c17854"
$location="trial"

# Call the AccessToken method with the API key in the header to get an access token
$token = Invoke-RestMethod -Method "Get" -Uri "https://api.videoindexer.ai/auth/$location/Accounts/$account_id/AccessToken" -Headers @{'Ocp-Apim-Subscription-Key' = $api_key}

# Use the access token to make an authenticated call to the Videos method to get a list of videos in the account
Invoke-RestMethod -Method "Get" -Uri "https://api.videoindexer.ai/$location/Accounts/$account_id/Videos?accessToken=$token" | ConvertTo-Json
