from flask import Flask
from flask import render_template
import pymysql
import os

app = Flask(__name__)


@app.route('/')
def hello():
    db_host = os.getenv('MYSQL_DB_HOST')
    db_user = os.getenv('MYSQL_USER')
    db_password = os.getenv('MYSQL_PASSWORD')
    db_name= os.getenv('MYSQL_DATABASE')



    con = pymysql.connect(host=db_host, user=db_user, password=db_password, db=db_name, cursorclass=pymysql.cursors.
                                   DictCursor)
    cur = con.cursor()
    cur.execute("SELECT * FROM users")
    result = cur.fetchall()
    return render_template('test.html', users=result)

if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)

