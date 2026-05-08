USE healthcare_portfolio;

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
