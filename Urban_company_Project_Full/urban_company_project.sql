create table bookings (
 booking_ID varchar(100) primary key,
Booking_Date date,
Booking_Time time,
cleaner_name varchar(30),
Company_Code varchar(20),
booking_type varchar(30),
RATING decimal(5,2),
DURATION decimal(5,2),
Month varchar(15)
);



-- Step 1: Aggregate bookings to DAILY level (correct grain)
WITH daily_workload AS (
    SELECT
        cleaner_name,
        company_code,
        booking_date,
        SUM(duration) AS daily_hours
    FROM bookings
    GROUP BY cleaner_name, company_code, booking_date
),

-- Step 2: Derive DAILY utilisation & idle hours (capacity = 12 hrs)
daily_metrics AS (
    SELECT
        cleaner_name,
        company_code,
        booking_date,
        daily_hours,
        (daily_hours / 12.0) * 100 AS daily_utilisation_pct,
        (12.0 - daily_hours) AS daily_idle_hours
    FROM daily_workload
),

-- Step 3: Aggregate DAILY metrics to cleaner level
cleaner_kpis AS (
    SELECT
        cleaner_name,
        company_code,
        ROUND(AVG(daily_hours), 2) AS avg_daily_duration,
        ROUND(AVG(daily_utilisation_pct), 2) AS utilisation_percentage,
        ROUND(STDDEV(daily_utilisation_pct), 2) AS utilisation_variability,
        ROUND(AVG(daily_idle_hours), 2) AS avg_idle_hours,
        COUNT(DISTINCT booking_date) AS active_days
    FROM daily_metrics
    GROUP BY cleaner_name, company_code
),

-- Step 4: Compute total active days per company (for share calculation)
company_days AS (
    SELECT
        company_code,
        COUNT(DISTINCT booking_date) AS total_active_days
    FROM bookings
    GROUP BY company_code
)

-- Step 5: Final output table (baseline utilisation KPIs)
SELECT
    c.cleaner_name,
    c.company_code,
    c.avg_daily_duration,
    c.utilisation_percentage,
    c.utilisation_variability,
    c.avg_idle_hours,
    ROUND((c.active_days * 100.0) / cd.total_active_days, 2) AS cleaner_share_percentage,
    c.active_days
FROM cleaner_kpis c
JOIN company_days cd
    ON c.company_code = cd.company_code
ORDER BY c.utilisation_percentage DESC;