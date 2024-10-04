from flask import Flask, render_template, Flask, jsonify, request 
import pickle

app = Flask(__name__)
# Load the trained model
model = pickle.load(open("RF.pkl", "rb"))


def getParameters():
    age = request.args.get('age')
    sex = request.args.get('sex')
    cigsPerDay = request.args.get('cigs')
    totChol = request.args.get('chol')
    sysBP = request.args.get('sBP')
    diabetes = request.args.get('dia')
    diaBP = request.args.get('dBP')
    glucose = request.args.get('gluc')
    heartRate = request.args.get('hRate')

    params = {
        'age': age,
        'sex': sex,
        'cigsPerDay': cigsPerDay,
        'totChol': totChol,
        'sysBP': sysBP,
        'diabetes': diabetes,
        'diaBP': diaBP,
        'glucose': glucose,
        'heartRate': heartRate
    }
    return (params)

@app.route('/')
def index():
    return render_template('y_index.html')

@app.route('/sample', methods=['POST'])
def sample():
     print(request.json['emailId'])
     return jsonify({'data':'shyam'}) 

@app.route('/predict', methods=['POST'])
def predict():
    if request.method == 'POST':
        pregnancies = float(request.form['pregnancies'])
        glucose = float(request.form['glucose'])
        blood_pressure = float(request.form['blood_pressure'])
        skin_thickness = float(request.form['skin_thickness'])
        insulin = float(request.form['insulin'])
        bmi = float(request.form['bmi'])
        diabetes_pedigree = float(request.form['diabetes_pedigree'])
        age = float(request.form['age'])

        user_input = [[pregnancies, glucose, blood_pressure, skin_thickness, insulin, bmi, diabetes_pedigree, age]]
        prediction = model.predict(user_input)

        if prediction[0] == 1:
            result = "Likely to have Heart diseases"
        else:
            result = "Not likely to have Heart diseases"


        return result;

@app.route('/predict1', methods=['POST'])
def predict1():
    if request.method == 'POST':
        pregnancies = float(request.json['pregnancies'])
        glucose = float(request.json['glucose'])
        blood_pressure = float(request.json['blood_pressure'])
        skin_thickness = float(request.json['skin_thickness'])
        insulin = float(request.json['insulin'])
        bmi = float(request.json['bmi'])
        diabetes_pedigree = float(request.json['diabetes_pedigree'])
        age = float(request.json['age'])
        print(pregnancies,glucose, blood_pressure, skin_thickness, insulin, bmi, diabetes_pedigree);

        user_input = [[pregnancies, glucose, blood_pressure, skin_thickness, insulin, bmi, diabetes_pedigree, age]]
        prediction = model.predict(user_input)

        if prediction[0] == 1:
            result = "Likely to have Heart Diseases"
        else:
            result = "Not likely to have Heart Diseases"


        return result;

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001, debug=False)
