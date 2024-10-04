from flask import Flask, render_template, Flask, jsonify, request 
import pickle

app = Flask(__name__)
# Load the trained model
model = pickle.load(open("./PKLs/RF.pkl", "rb"))

def getParameters():
    age = request.args.get('age')
    sex = request.args.get('sex')
    cp = request.args.get('cp')
    trestbps = request.args.get('trestbps')
    chol = request.args.get('chol')
    fbs = request.args.get('fbs')
    restecg = request.args.get('restecg')
    thalach = request.args.get('thalach')
    exang = request.args.get('exang')
    oldpeak = request.args.get('oldpeak')
    slope = request.args.get('slope')
    ca = request.args.get('ca')
    thal = request.args.get('thal')
    
    params = {
        'age': age,
        'sex': sex,
        'cp': cp,
        'trestbps': trestbps,
        'chol': chol,
        'fbs': fbs,
        'restecg': restecg,
        'thalach': thalach,
        'exang': exang,
        'oldpeak': oldpeak,
        'slope': slope,
        'ca': ca,
        'thal': thal                        
    }
    return (params)

@app.route('/')
def index():
    return render_template('y_index.html')


@app.route('/predict', methods=['POST'])
def predict():
    if request.method == 'POST':  
        age = float(request.form['age'])
        sex = float(request.form['sex'])
        cp = float(request.form['cp'])
        trestbps = float(request.form['trestbps'])
        chol = float(request.form['chol'])
        fbs = float(request.form['fbs'])
        restecg = float(request.form['restecg'])
        thalach = float(request.form['thalach'])
        exang = float(request.form['exang'])
        oldpeak = float(request.form['oldpeak'])
        slope = float(request.form['slope'])
        ca = float(request.form['ca'])
        thal = float(request.form['thal'])
        
        user_input = [[age, sex, cp, trestbps, chol, fbs, restecg, thalach, exang, oldpeak, slope, ca, thal]]
        
        prediction = model.predict(user_input)

        if prediction[0] == 1:
            result = "Likely to have Heart diseases"
        else:
            result = "Not likely to have Heart diseases"


        return result;

@app.route('/predict1', methods=['POST'])
def predict1():
    if request.method == 'POST':       
        age = float(request.json['age'])
        sex = float(request.json['sex'])
        cp = float(request.json['cp'])
        trestbps = float(request.json['trestbps'])
        chol = float(request.json['chol'])
        fbs = float(request.json['fbs'])
        restecg = float(request.json['restecg'])
        thalach = float(request.json['thalach'])
        exang = float(request.json['exang'])
        oldpeak = float(request.json['oldpeak'])
        slope = float(request.json['slope'])
        ca = float(request.json['ca'])
        thal = float(request.json['thal'])
        
        print(age, sex, cp, trestbps, chol, fbs, restecg, thalach, exang, oldpeak, slope, ca, thal)
        
        user_input = [[age, sex, cp, trestbps, chol, fbs, restecg, thalach, exang, oldpeak, slope, ca, thal]]
        
        prediction = model.predict(user_input)

        if prediction[0] == 1:
            result = "Patient likely to have Heart Diseases"
        else:
            result = "Patient not likely to have Heart Diseases"

        return result;

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001, debug=False)
