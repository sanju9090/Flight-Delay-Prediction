✈️ Machine Learning Flight Delay Prediction

📌 Project Overview
Flight delays impose a substantial impact on airlines and passengers, leading to increased costs and decreased customer satisfaction. This project applies machine learning algorithms to predict flight delays using past flight data.

🚀 Key Features
- Data Preprocessing & Analysis: Feature engineering, normalization, and cleaning.
- Machine Learning Models: Utilized different models (Neural Networks, Random Forest, SVM, XGBoost) to predict flight delays.
- Performance Optimization: Tuned parameters and chose features to make predictions more accurate.
- Visualization & Insights: Developed dashboards in Power BI/Tableau to show delay patterns.

 📂 Dataset
- Total Records: 539,383 flights
- Attributes are: flight duration, departure time, airline, origin, destination, and day.
- Data Source: Kaggle - [Airlines Flight Delay Dataset](https://www.kaggle.com/datasets/jimschacko/airlines-dataset-to-predict-a-delay)

📊 Machine Learning Models
| Model                     | Accuracy  | AUC    |
|---------------------------|----------|--------|
| Neural Network       | 96.47% | 0.9465 |
| Gradient Boosting (GBM)   | 89.86%   | 0.9259 |
| Random Forest             | 66.25%   | 0.9254 |
| Support Vector Machine    | 65.44%   | 0.9152 |
| Lasso Regression          | 64.87%   | 0.9091 |

🔧 Technologies Used
- Programming Languages: Python, SQL
- Libraries: Pandas, NumPy, Scikit-Learn, TensorFlow, PyTorch, XGBoost, Seaborn
- Data Visualization: Power BI, Tableau, Matplotlib
- Big Data Processing: Apache Spark, Hadoop

 📈 Performance Metrics
- Accuracy: 96.47% (Neural Network)
- Precision & Recall Analysis:High recall for capturing delayed flights.
- Confusion Matrix & ROC Curve: Evaluated model performance on various thresholds.

📢 Recommendations & Future Work
✔️ Incorporate Real-Time Data:Integrate live weather & air traffic data.
✔️ Enhance Model Performance:Use ensemble learning & feature engineering.
✔️ Deploy Model:Create an API for real-time flight delay predictions.
✔️ Interpretable: Apply Explainable AI (XAI) techniques to make informed decisions.

📜 Authors:
- Sanjana Pisal
- Ishika Bigala


