## Overview

This is a simple API server developed by python.

## How to start server

```bash
gunicorn src.server:app -c src/conf/gunicorn_conf.py --daemon    
```

## Directories

```bash
├── buildspec.yml                        # buildspec for CodeBuild
└── src
    ├── appspec.yml                      # appspec for CodeDeploy
    ├── scripts                          # custom scripts that are run in CodeDeploy
    │   ├── change_permissions.sh
    │   ├── install_dependencies.sh
    │   ├── start_server.sh
    │   ├── stop_server.sh
    │   └── validate_server.sh
    ├── conf                             # a configuration file for gunicorn
    │   └── gunicorn_conf.py
    ├── requirements.txt
    └── server.py                        # server application 
```