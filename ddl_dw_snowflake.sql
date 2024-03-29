-- Create Database
CREATE DATABASE IF NOT EXISTS DBT_MODEL;

-- Change database to DBT_MODEL
USE DBT_MODEL;

-- Create new schema RAW_DATA
CREATE SCHEMA IF NOT EXISTS RAW_DATA;

-- CREATE VIEWS OF EACH TABLE IN STANDARD TILE TO RAW_DATA
-- CLIMATOLOGY_DAY
CREATE TABLE CLIMATOLOGY_DAY AS
SELECT
    *
FROM GLOBAL_WEATHER_CLIMATE.STANDARD_TILE.CLIMATOLOGY_DAY;

-- FORECAST_DAY
CREATE TABLE FORECAST_DAY AS
SELECT
    *
FROM GLOBAL_WEATHER_CLIMATE.STANDARD_TILE.FORECAST_DAY;

-- HISTORY_DAY
CREATE TABLE HISTORY_DAY AS
SELECT
    *
FROM GLOBAL_WEATHER_CLIMATE.STANDARD_TILE.HISTORY_DAY;

-- VALIDATE NEW TABLE
SELECT 
    *
FROM RAW_DATA.CLIMATOLOGY_DAY
LIMIT 1;

SELECT 
    *
FROM RAW_DATA.FORECAST_DAY
LIMIT 1;

SELECT 
    *
FROM RAW_DATA.HISTORY_DAY
LIMIT 1;

-- CREATE SCHEMA STG_WH
CREATE SCHEMA IF NOT EXISTS STG_WH;

-- CREATE SCHEMA DATA_MART
CREATE SCHEMA IF NOT EXISTS DATA_MART;
