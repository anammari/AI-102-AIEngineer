@echo off

rem Set values for your Language Understanding app
set app_id=YOUR_APP_ID
set endpoint=YOUR_ENDPOINT
set key=YOUR_KEY

rem Get parameter and encode spaces for URL
set input=%1
set query=%input: =+%

rem Use cURL to call the REST API
curl -X GET "https://lng-und-ai102.cognitiveservices.azure.com/luis/prediction/v3.0/apps/830ede9d-1cdc-4e88-a1b2-fcf714d138f7/slots/production/predict?subscription-key=ee0d590323a942ba88cd56aba8640fd5&log=true&query=%query%"