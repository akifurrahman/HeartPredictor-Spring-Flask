# ❤️ HeartPredictor-Spring-Flask

## Overview 🌟

**HeartPredictor-Spring-Flask** is a full-stack web application designed to predict the risk of heart disease based on clinical data inputs. The system is built using **Spring Boot** with **JSP** for the front end and **Flask** with **Python** for the machine learning model. This project integrates both servers, allowing the Spring Boot server to handle the user interface while the Flask server runs the heart disease prediction model.

---

## Features 🎉

- **User-Friendly Interface**: Designed with Java Server Pages (JSP) for easy data entry.
- **Real-Time Predictions**: Sends data via APIs to the Python Flask server to trigger the ML model.
- **Data Storage**: Results are stored in a SQL database and displayed upon request.
- **High Accuracy**: Utilizes machine learning algorithms to deliver reliable predictions.

---

## Tech Stack ⚙️

| Category               | Technologies                                     |
|-----------------------|--------------------------------------------------|
| **Back-End (Server 1)** | Spring Boot, JSP                               |
| **Back-End (Server 2)** | Python, Flask                                  |
| **Database**           | SQL (MySQL/PostgreSQL)                          |
| **Machine Learning**   | Scikit-learn, Pandas, NumPy                     |
| **Front-End**         | HTML/CSS (via JSP)                              |

---

## Project Architecture 🏗️

1. **Data Input (JSP Front End)**: 
   - Users enter patient data (age, cholesterol levels, blood pressure, etc.) on the JSP interface.

2. **Spring Boot Server**: 
   - The data entered is sent to the **Flask** server through **APIs**.

3. **Flask Server & ML Model**: 
   - The Flask server triggers a trained machine learning model that predicts the likelihood of heart disease based on input parameters.

4. **SQL Database**: 
   - The predicted result is stored in a SQL database for record-keeping.

5. **Result Display (JSP Front End)**: 
   - Users can view the prediction result by clicking the **Show Result** button.

---

## Setup and Installation 🛠️

To run the project locally, follow these steps:

### Prerequisites 📋

- **Java Development Kit (JDK)** installed (for Spring Boot).
- **Python** and **Flask** installed (for the Flask server).
- **SQL Database** (e.g., MySQL or PostgreSQL) set up for storing results.

### Step-by-Step Guide 🔍

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/HeartPredictor-Spring-Flask.git
   ```

2. **Set up the Spring Boot server**:
   - Navigate to the `spring-boot-server` directory.
   - Build and run the Spring Boot server:
     ```bash
     mvn clean install
     mvn spring-boot:run
     ```

3. **Set up the Flask server**:
   - Navigate to the `flask-server` directory.
   - Install the required Python dependencies:
     ```bash
     pip install -r requirements.txt
     ```
   - Run the Flask server:
     ```bash
     python app.py
     ```

4. **Ensure both servers are running**:
   - Spring Boot server: `http://localhost:8080`
   - Flask server: `http://localhost:5001`

5. **Access the application**:
   - Open your browser and go to `http://localhost:8080/`.
   - Input patient details and click on **Predict**.

---

## API Endpoints 📡

- **POST /predict**: Sends patient data to the Flask server and triggers the machine learning model.
- **GET /show-result**: Retrieves the stored prediction result from the SQL database.

---

## Future Improvements 🌱

- Add user authentication for secure access to predictions and patient data.
- Expand model capabilities to predict other cardiovascular conditions.
- Enhance front-end UI/UX for better user experience.

---

## Contributing 🤝

We welcome contributions to **HeartPredictor-Spring-Flask**! Please feel free to fork the repository and submit pull requests.

---

## License 📜

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

Feel free to adjust the emoji usage and paths as necessary! This version is designed to be inviting and engaging while maintaining clarity.
