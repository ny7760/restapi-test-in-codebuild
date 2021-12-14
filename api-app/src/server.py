import json
from flask import Flask


app = Flask(__name__)


@app.route('/students', methods=['GET'])
def get_students():
    res = json.dumps({'name': 'Alice'})
    return res


if __name__ == '__main__':
    app.run()
