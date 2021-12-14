
#!/bin/bash
export PATH=$PATH:/usr/local/bin
# Environment variables are better to be sourced from the parameter store of Systems Manager or other ways.
# You can remove the following code if your environment uses other way like above to source variables.
export ENV="dev"

gunicorn server:app -c /home/ec2-user/conf/gunicorn_conf.py --daemon
sleep 3
echo "number of process:" `ps ax | grep gunicorn | grep -v grep | wc -l`
