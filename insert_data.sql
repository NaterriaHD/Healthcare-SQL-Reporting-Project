USE healthcare_portfolio;

INSERT INTO patients 
(patient_id, first_name, last_name, gender, date_of_birth, city, state)
VALUES
(1, 'Noah', 'Davis', 'Male', '2024-05-01', 'Houston', 'TX'),
(2, 'Maya', 'Johnson', 'Female', '1990-08-15', 'Dallas', 'TX'),
(3, 'Jordan', 'Smith', 'Male', '1985-11-22', 'Austin', 'TX'),
(4, 'Ava', 'Brown', 'Female', '1978-03-10', 'Katy', 'TX'),
(5, 'Marcus', 'Green', 'Male', '1969-12-04', 'Cypress', 'TX');

INSERT INTO providers
(provider_id, provider_name, specialty)
VALUES
(1, 'Dr. Angela Carter', 'Primary Care'),
(2, 'Dr. Brian Lee', 'Cardiology'),
(3, 'Dr. Simone Patel', 'Pediatrics'),
(4, 'Dr. Michael Grant', 'Orthopedics');

INSERT INTO appointments
(appointment_id, patient_id, provider_id, appointment_date, appointment_status, visit_type)
VALUES
(101, 1, 3, '2025-01-10', 'Completed', 'Wellness Visit'),
(102, 2, 1, '2025-01-12', 'Completed', 'Annual Physical'),
(103, 3, 2, '2025-01-15', 'Cancelled', 'Cardiology Consult'),
(104, 4, 4, '2025-01-18', 'Completed', 'Orthopedic Follow-Up'),
(105, 5, 1, '2025-01-20', 'No Show', 'Primary Care Visit'),
(106, 2, 2, '2025-01-25', 'Completed', 'Heart Screening');


INSERT INTO claims
(claim_id, patient_id, provider_id, claim_date, billed_amount, paid_amount, claim_status)
VALUES
(201, 1, 3, '2025-01-11', 350.00, 350.00, 'Paid'),
(202, 2, 1, '2025-01-13', 500.00, 500.00, 'Paid'),
(203, 3, 2, '2025-01-16', 900.00, 0.00, 'Denied'),
(204, 4, 4, '2025-01-19', 750.00, 400.00, 'Partial'),
(205, 5, 1, '2025-01-21', 275.00, 0.00, 'Pending'),
(206, 2, 2, '2025-01-26', 650.00, 650.00, 'Paid'),
(207, 1, 3, '2025-02-02', 425.00, 0.00, 'Pending'),
(208, 4, 4, '2025-02-05', 800.00, 500.00, 'Partial');
