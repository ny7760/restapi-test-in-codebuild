import os

proc_name = 'Practice-Flask'

if os.environ.get("ENV") == "build":
    bind = '127.0.0.1:' + str(os.getenv('PORT', 5000))
elif os.environ.get("ENV") in ("dev", "stg", "prod"):
    bind = '0.0.0.0:' + str(os.getenv('PORT', 5000))
    chdir = '/home/ec2-user'
else:
    bind = '0.0.0.0:' + str(os.getenv('PORT', 5000))

workers = 2

accesslog = '-'
errorlog = '-'
