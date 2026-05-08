CREATE DATABASE IF NOT EXISTS healthcare_portfolio;
USE healthcare_portfolio;

CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(20),
    date_of_birth DATE,
    city VARCHAR(50),
    state VARCHAR(2)
);

CREATE TABLE providers (
    provider_id INT PRIMARY KEY,
    provider_name VARCHAR(100),
    specialty VARCHAR(50)
);

CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    provider_id INT,
    appointment_date DATE,
    appointment_status VARCHAR(30),
    visit_type VARCHAR(50),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (provider_id) REFERENCES providers(provider_id)
);

CREATE TABLE claims (
    claim_id INT PRIMARY KEY,
    patient_id INT,
    provider_id INT,
    claim_date DATE,
    billed_amount DECIMAL(10,2),
    paid_amount DECIMAL(10,2),
    claim_status VARCHAR(30),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (provider_id) REFERENCES providers(provider_id)
);
