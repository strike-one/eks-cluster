import boto3

aws_management_console = boto3.session.Session(profile_name='infrarole')
iam_console = aws_management_console.resource('iam')

for user in iam_console.users.all():
    print(user.name)
