import boto3
from pprint import pprint

##### to open the json files that we have
def json_reader(folder_name):
    s3_client = boto3.client('s3')
    for x in range(10383, 14753):
        s3object = s3_client.get_object(Bucket='data8-engineering-project', Key=folder_name + '/'+ str(x) + '.json')
        pprint(s3object['Body'].read())
json_reader('Interview Notes')