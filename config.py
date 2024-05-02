import os

class Config:
    NODE_NAME = os.environ.get('NODE_NAME') or 'dev_node'
    POD_NAME = os.environ.get('POD_NAME') or 'dev_pod'
    POD_IP = os.environ.get('POD_IP') or '169.254.169.254'