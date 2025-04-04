# 📈 AI-Powered Stock Market Prediction & Analytics

## 🚀 Project Overview
This project involves ingesting, processing, and analyzing real-time stock market data to identify trends and predict stock prices. It integrates **ETL development, cloud data storage, SQL querying, machine learning, and data visualization** to provide actionable insights into stock price movements.
You can view the detailed fraud report [here](AI-Powered%20Stock%20Market%20Prediction%20%26%20Analytics%20Project%20Report.pdf)
## 🛠️ Tech Stack
- **ETL & Data Integration**: Azure Data Factory
- **Database & Cloud Storage**: Microsoft SQL Server and Azure Blob Storage
- **Machine Learning Models**: TensorFlow, Scikit-learn, PyTorch (for stock price prediction)  
- **Visualization & Reporting**: Power BI, Seaborn, Matplotlib  
- **Development Tools**: Python, Jupyter Notebook, SQL, GitHub  

---

## 📊 Project Workflow
### **1️⃣ Data Collection & Storage**
- **Fetch real-time stock data** using APIs like Alpha Vantage and Quandl  
- **Store raw & processed data** in Azure Blob Storage
- **Track key attributes**: Open, High, Low, Close, Volume, Adjusted Close  

### **2️⃣ Data Processing & ETL Pipelines**
- **Use ETL tools (Azure Data Factory)** for data extraction, transformation, and loading  
- **SQL queries** for data aggregation & trend analysis  
- **Moving Averages, Volatility, and Trend Calculation**  

### **3️⃣ Machine Learning for Stock Prediction**
- **Time Series Forecasting Models**: LSTM, ARIMA, XGBoost  
- **Evaluate model performance** using MAE and RMSE  
- **Feature Engineering**: Normalize stock prices, convert timestamps  

### **4️⃣ Data Visualization & Insights**
- **Power BI Dashboards** to display stock trends, predictions, and real-time alerts  
- **Seaborn & Matplotlib** for exploratory data analysis  
---

## 📈 Power BI Report & Visualizations
| Visualization | Title | Columns Used | Purpose |
|--------------|--------------------|-----------------------------------|--------------------------------------|
| **Line Chart** | Stock Value Over Time | Date, StockValue | Tracks historical stock trends |
| **Dual-Line Chart** | Moving Averages | MovingAverage_50_Day, MovingAverage_200_Day | Identifies crossover points |
| **Bollinger Bands** | Stock Volatility | Bollinger_Band_Upper, Bollinger_Band_Lower, StockValue | Highlights market volatility |
| **Candlestick Chart** | OHLC Analysis | Date, Open, High, Low, Close | Analyzes price movements |
| **Support & Resistance** | Stock Levels | Support_Level, Resistance_Level | Detects key price points |
| **Bar Chart** | Stock Performance Comparison | Company, StockValue | Compares multiple stocks |
| **Scatter Chart** | Volatility vs. Stock Value | Volatility, StockValue | Shows risk vs. return |
| **Percentage Change** | Daily Market Movements | Date, PercentageChange | Highlights fluctuations |
| **Model Predictions** | Predicted vs. Actual | LSTM_Prediction, ARIMA_Prediction, XGBoost_Prediction | Evaluates model accuracy |

Reports:
(Report IMG.PNG)
(Report IMG .PNG)

---

## 🔍 Key Insights & Business Impact
- **Stock prices show cyclical trends, with high volatility in certain periods**  
- **Moving average crossovers signal potential buy/sell opportunities**  
- **Bollinger Bands indicate when stocks are overbought or oversold**  
- **Machine learning models can effectively predict future stock trends**  

---

## 🔮 Future Enhancements
- **Deep Learning for Better Predictions**: Implement Transformers for time series forecasting  
- **Real-Time Trade Recommendations**: Build an AI-based stock advisor system  
- **Cloud Optimization**: Use **Azure Synapse Analytics** for real-time stock trend analysis  
- **Automated Alerts & Insights**: Deploy **Power Automate** for real-time stock alerts  

---

## 🤝 Contributing
Feel free to submit **pull requests** or open **issues** if you have any improvements or suggestions!
