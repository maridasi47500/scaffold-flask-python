$(git clone git@github.com:maridasi47500/$1.git)
echo "__pycache__/" >> "$1/.gitignore" 
mkdir "$1/templates" 
echo "<h1># $1</h1>" >> "$1/templates/hey.html" 
echo "`cat <<EOF
from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def hello_world():
    return render_template("hey.html")
EOF`" >> "$1/app.py"
$(cd $1/)
