print("testing...")

with open('users.txt', 'r') as f:
    data = f.read()
    if data == "(1, 'alfa')(2, 'betta')(3, 'gamma')":
    	print("test passed")
    else:
    	print("test failed")