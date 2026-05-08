-- Show all patients
SELECT *
FROM patients;

-- Completed appointments
SELECT *
FROM appointments
WHERE appointment_status = 'Completed';

-- No Show or Cancelled appointments
SELECT *
FROM appointments
WHERE appointment_status IN ('No Show', 'Cancelled');

-- Count appointments by provider
SELECT 
    provider_id,
    COUNT(*) AS total_appointments
FROM appointments
GROUP BY provider_id;

-- Claims count by status
SELECT 
    claim_status,
    COUNT(*) AS total_claims
FROM claims
GROUP BY claim_status;

-- Revenue gap per claim
SELECT 
    claim_id,
    billed_amount,
    paid_amount,
    billed_amount - paid_amount AS revenue_gap
FROM claims;

-- Total revenue gap
SELECT 
    SUM(billed_amount - paid_amount) AS total_revenue_gap
FROM claims;

-- Providers with highest billed amounts
SELECT 
    p.provider_name,
    SUM(c.billed_amount) AS total_billed_amount
FROM claims c
JOIN providers p
ON c.provider_id = p.provider_id
GROUP BY p.provider_name
ORDER BY total_billed_amount DESC;
