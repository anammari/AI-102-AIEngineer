
prediction_url="https://ahm-amm-lng-srv-002.cognitiveservices.azure.com/language/:query-knowledgebases?projectName=LearnFAQ&api-version=2021-10-01&deploymentName=production"
key="ecb9c669ab56433ab5357c6231485e93"

curl -X POST $prediction_url -H "Ocp-Apim-Subscription-Key: $key" -H "Content-Type: application/json" -d "{'question': 'What is a learning Path?' }"

