import boto.ec2
conn = boto.ec2.connect_to_region("us-west-2", aws_access_key_id='aws_access_key_id', aws_secret_access_key='aws_secret_access_key')
conn.run_instances('ami-c229c0a2', instance_type='t2.micro')
