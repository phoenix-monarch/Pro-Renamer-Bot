#Thank you MrkillerDeveloper for helping me in this journey !
#Must Subscribe On YouTube @TechnicalHPgamer 

from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return '@MrkillerDeveloper'


if __name__ == "__main__":
    app.run()
