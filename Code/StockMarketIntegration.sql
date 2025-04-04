CREATE TABLE [dbo].[StockMarketIntegration] (
    Date DATE,
    Company VARCHAR(50),
    StockType VARCHAR(20),
    StockValue FLOAT,
    MovingAverage_50_Day FLOAT,
    MovingAverage_200_Day FLOAT,
    PercentageChange FLOAT,
    Volatility FLOAT,
    RSI FLOAT,
    
    PRIMARY KEY (Date, Company, StockType)
);
