import boto3
import pprint

iam_re=boto3.resource('iam')
client=boto3.client('iam')

file=open("p.txt",'r')
for data in file:
    print(data.strip())
    val=data.strip()
    if '@gmail' in val:
        response = client.create_user(
        UserName = val
)
    else:
        print("error")
	
file.close()