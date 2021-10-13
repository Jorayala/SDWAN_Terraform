import requests

url = "https://64.100.13.126:8443/dataservice/device"

payload={}
headers = {
  'Cookie': 'JSESSIONID=Jsa6Z1kgLbz7icd40mqbqiP7larcxGiRaY7Y4Psy.1421f6ea-7f1f-4ad5-99f1-a6a75d155209'
}

response = requests.request("GET", url, headers=headers, data=payload, verify=False)

print(response.text)

