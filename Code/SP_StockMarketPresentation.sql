CREATE PROCEDURE MergeStockMarketData
AS
BEGIN
    SET NOCOUNT ON;

    MERGE INTO StockMarketPresentation AS Target
    USING 
    (
        SELECT 
            Date, 
            YEAR(Date) AS Year,
            Company, 
            StockType,
            StockValue,
            MovingAverage_50_Day,
            MovingAverage_200_Day,
            PercentageChange,
            Volatility,
            RSI,
            TRY_CAST(
                (EXP(SUM(LOG(NULLIF(CAST(StockValue AS DECIMAL(18,6)), 0))) 
                OVER (PARTITION BY Company ORDER BY Date ROWS BETWEEN 11 PRECEDING AND CURRENT ROW)) -
                EXP(SUM(LOG(NULLIF(CAST(StockValue AS DECIMAL(18,6)), 0))) 
                OVER (PARTITION BY Company ORDER BY Date ROWS BETWEEN 25 PRECEDING AND CURRENT ROW)))
                AS DECIMAL(18,6)
            ) AS MACD,
            TRY_CAST(
                AVG(CAST(StockValue AS DECIMAL(18,6))) 
                OVER (PARTITION BY Company ORDER BY Date ROWS BETWEEN 19 PRECEDING AND CURRENT ROW) + 
                (2 * STDEV(CAST(StockValue AS DECIMAL(18,6))) 
                OVER (PARTITION BY Company ORDER BY Date ROWS BETWEEN 19 PRECEDING AND CURRENT ROW))
                AS DECIMAL(18,6)
            ) AS Bollinger_Band_Upper,

            TRY_CAST(
                AVG(CAST(StockValue AS DECIMAL(18,6))) 
                OVER (PARTITION BY Company ORDER BY Date ROWS BETWEEN 19 PRECEDING AND CURRENT ROW) - 
                (2 * STDEV(CAST(StockValue AS DECIMAL(18,6))) 
                OVER (PARTITION BY Company ORDER BY Date ROWS BETWEEN 19 PRECEDING AND CURRENT ROW))
                AS DECIMAL(18,6)
            ) AS Bollinger_Band_Lower,

            TRY_CAST(
                MIN(CAST(StockValue AS DECIMAL(18,6))) 
                OVER (PARTITION BY Company ORDER BY Date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW)
                AS DECIMAL(18,6)
            ) AS Support_Level,

            TRY_CAST(
                MAX(CAST(StockValue AS DECIMAL(18,6))) 
                OVER (PARTITION BY Company ORDER BY Date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW)
                AS DECIMAL(18,6)
            ) AS Resistance_Level
        FROM StockMarketIntegration
    ) AS Source
    ON Target.Date = Source.Date 
    AND Target.Company = Source.Company 
    AND Target.StockType = Source.StockType
    WHEN MATCHED THEN 
        UPDATE SET 
            Target.Year = Source.Year,
            Target.StockValue = Source.StockValue,
            Target.MovingAverage_50_Day = Source.MovingAverage_50_Day,
            Target.MovingAverage_200_Day = Source.MovingAverage_200_Day,
            Target.PercentageChange = Source.PercentageChange,
            Target.Volatility = Source.Volatility,
            Target.RSI = Source.RSI,
            Target.MACD = Source.MACD,
            Target.Bollinger_Band_Upper = Source.Bollinger_Band_Upper,
            Target.Bollinger_Band_Lower = Source.Bollinger_Band_Lower,
            Target.Support_Level = Source.Support_Level,
            Target.Resistance_Level = Source.Resistance_Level
    WHEN NOT MATCHED THEN 
        INSERT (Date, Year, Company, StockType, StockValue, MovingAverage_50_Day, MovingAverage_200_Day, 
                PercentageChange, Volatility, RSI, MACD, Bollinger_Band_Upper, 
                Bollinger_Band_Lower, Support_Level, Resistance_Level)
        VALUES (Source.Date, Source.Year, Source.Company, Source.StockType, Source.StockValue, Source.MovingAverage_50_Day, 
                Source.MovingAverage_200_Day, Source.PercentageChange, Source.Volatility, Source.RSI, 
                Source.MACD, Source.Bollinger_Band_Upper, Source.Bollinger_Band_Lower, 
                Source.Support_Level, Source.Resistance_Level);

END;