create database Luxury_housing;

use Luxury_housing;

CREATE TABLE housing_data (
    Property_ID INT,
    Micro_Market VARCHAR(100),
    Project_Name VARCHAR(150),
    Builder VARCHAR(100),
    Unit_Size_Sqft FLOAT,
    Configuration VARCHAR(50),
    Ticket_Price_Cr FLOAT,
    Booking_Status VARCHAR(50),
    Buyer_Type VARCHAR(50),
    Purchase_Quarter DATE,
    Connectivity_Score FLOAT,
    Amenity_Score FLOAT,
    Possession_Status VARCHAR(50),
    Sales_Channel VARCHAR(50),
    NRI_Buyer VARCHAR(10),
    Locality_Infra_Score FLOAT,
    Avg_Traffic_Time_Min FLOAT,
    Buyer_Comments TEXT,

    -- Feature engineered columns
    Booking_Flag INT,
    Price_per_Sqft FLOAT,
    Quarter_Number INT,
    Price_Category VARCHAR(50),
    Premium_Property INT
);

select * from housing_data;