from app import app
from flask import jsonify
import json

@app.route('/')
@app.route('/index')
def index():
    diag = {
        "node_name": app.config["NODE_NAME"],
        "pod_name": app.config["POD_NAME"],
        "pod_ip": app.config["POD_IP"]
    }
    return jsonify(diag), 200