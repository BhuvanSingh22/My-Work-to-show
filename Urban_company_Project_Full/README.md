Project Context

Urban Company works with multiple third-party partner companies to deliver hourly cleaning services (2/3/4/5-hour jobs) to customers. Cleaners are not directly employed by UC but are supplied by partner companies. Ensuring consistent service quality and optimal cleaner utilisation is critical to improving customer experience, repeat bookings, and partner earnings.

This project analyses cleaner performance over a 2-month period using fictional booking data to evaluate how effectively cleaners are utilised and how service quality (ratings) varies across cleaners and companies.

Objective

To assess cleaner and company-level performance over the last two months and identify actionable opportunities to improve:
Service quality (Ratings & Repeat Behaviour)
Operational efficiency (Utilisation within 10:00–22:00 working window)

Data Overview

The dataset contains ~27,000 bookings with the following fields:
Unique Booking ID – System identifier for each job
Booking Date & Time – When the service occurred
Cleaner Name – Assigned professional
Company Code – Partner company identifier
Booking Type – First-time or Repeat booking
Job Duration (hours) – Length of the service
Job Rating (1–5) – Customer feedback per job

Each record represents a single completed cleaning job.

Key Performance Metrics
1. Utilisation (Average Daily Working Duration)
Calculated by first aggregating total hours worked per cleaner per day
Daily utilisation is measured against a 12-hour capacity window (10:00–22:00)
Cleaner-level utilisation is derived by averaging daily utilisation across all active days
This ensures utilisation reflects baseline capacity usage, not peak workload inflation.

2. Ratings (Service Quality Indicator)
Average ratings are calculated at cleaner and company levels
Repeat booking behaviour is analysed alongside ratings to identify performance patterns
Ratings are used as a directional signal to understand quality consistency and customer trust

Key Questions Addressed

Ratings & Quality
How have ratings trended over the last two months at cleaner and company levels?
Are higher-rated cleaners associated with higher repeat bookings?
What operational or allocation strategies can improve overall service ratings?

Utilisation & Capacity
How effectively are cleaners utilising their available working hours?
Are there visible patterns of underutilisation or workload concentration?
How can idle time be reduced by better slot planning or service bundling?

Analytical Approach

SQL was used to aggregate booking-level data to the correct analytical grain (daily level) and compute utilisation and rating metrics.
Excel was used for pivot analysis, visualisation, and dashboarding.
Insights were translated into a 5–6 slide presentation focusing on business interpretation rather than raw metrics.

Outcome

The analysis highlights:

Opportunities to improve utilisation by reducing idle gaps within working hours
Cleaner-level variability that can be addressed through smarter allocation
A positive relationship between service consistency, ratings, and repeat bookings

The recommendations focus on operational optimisation, quality consistency, and partner performance improvement, aligned with UC’s customer experience and growth objectives.

Screenshots-

<img width="655" height="466" alt="Screenshot 2026-02-23 174249" src="https://github.com/user-attachments/assets/a45baf2d-f60e-4120-932b-747360a08d83" />
<img width="1143" height="643" alt="Screenshot 2026-02-23 165759" src="https://github.com/user-attachments/assets/e0e33e95-4535-4c11-a06b-247c806a522e" />
<img width="1068" height="596" alt="Screenshot 2026-02-23 171257" src="https://github.com/user-attachments/assets/433fe32d-faa0-4fec-904d-666b15e89355" />
<img width="1742" height="928" alt="Screenshot 2026-02-23 175113" src="https://github.com/user-attachments/assets/7e0f891e-9a35-4b4b-a99f-1cb0bb9f8593" />

