CREATE TABLE [dbo].[StockMarketPresentation] (
    Date DATE,
    Year INT,
    Company VARCHAR(50),
    StockType VARCHAR(20),
    StockValue FLOAT,
    MovingAverage_50_Day FLOAT,
    MovingAverage_200_Day FLOAT,
    PercentageChange FLOAT,
    Volatility FLOAT,
    RSI FLOAT,
    MACD FLOAT,
    Bollinger_Band_Upper FLOAT,
    Bollinger_Band_Lower FLOAT,
    Support_Level FLOAT,
    Resistance_Level FLOAT,
    
    PRIMARY KEY (Date, Company, StockType)
);
