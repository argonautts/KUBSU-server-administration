import requests

try:
    response = requests.get('http://localhost:8000')
    if response.status_code == 200:
        print("test passed")
    else:
        print("test failed")
except Exception as e:
    print("test failed")