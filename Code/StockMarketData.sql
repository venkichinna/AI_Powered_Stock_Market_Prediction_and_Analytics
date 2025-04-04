CREATE TABLE StockMarketData (
    Date DATE PRIMARY KEY,
    
    AMZN_Close FLOAT,
    GOOGL_Close FLOAT,
    MSFT_Close FLOAT,
    NVDA_Close FLOAT,
    TSLA_Close FLOAT,
    
    AMZN_High FLOAT,
    GOOGL_High FLOAT,
    MSFT_High FLOAT,
    NVDA_High FLOAT,
    TSLA_High FLOAT,
    
    AMZN_Low FLOAT,
    GOOGL_Low FLOAT,
    MSFT_Low FLOAT,
    NVDA_Low FLOAT,
    TSLA_Low FLOAT,
    
    AMZN_Open FLOAT,
    GOOGL_Open FLOAT,
    MSFT_Open FLOAT,
    NVDA_Open FLOAT,
    TSLA_Open FLOAT,
    
    AMZN_Volume BIGINT,
    GOOGL_Volume BIGINT,
    MSFT_Volume BIGINT,
    NVDA_Volume BIGINT,
    TSLA_Volume BIGINT,
    
    AMZN_50_Day_MA FLOAT,
    AMZN_200_Day_MA FLOAT,
    AMZN_Percentage_Change FLOAT,
    AMZN_Volatility FLOAT,
    AMZN_RSI FLOAT,
    
    GOOGL_50_Day_MA FLOAT,
    GOOGL_200_Day_MA FLOAT,
    GOOGL_Percentage_Change FLOAT,
    GOOGL_Volatility FLOAT,
    GOOGL_RSI FLOAT,
    
    MSFT_50_Day_MA FLOAT,
    MSFT_200_Day_MA FLOAT,
    MSFT_Percentage_Change FLOAT,
    MSFT_Volatility FLOAT,
    MSFT_RSI FLOAT,
    
    NVDA_50_Day_MA FLOAT,
    NVDA_200_Day_MA FLOAT,
    NVDA_Percentage_Change FLOAT,
    NVDA_Volatility FLOAT,
    NVDA_RSI FLOAT,
    
    TSLA_50_Day_MA FLOAT,
    TSLA_200_Day_MA FLOAT,
    TSLA_Percentage_Change FLOAT,
    TSLA_Volatility FLOAT,
    TSLA_RSI FLOAT
);
