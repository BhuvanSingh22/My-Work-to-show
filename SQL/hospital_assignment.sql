create table hospitals (hospital_id serial primary key,
            Hospital_Name varchar(100),
            location varchar(50),
            Department varchar(50),
            Doctors_Count int,
			Patients_Count int,
			Admission_Date date,
			Discharge_Date date,
			medical_Expenses numeric (10,2) );

select * from hospitals;


--1. Total Number of Patients
SELECT SUM(Patients_Count) AS total_patients
FROM hospitals;


--2. Average Number of Doctors per Hospital
select avg(doctors_count) as average_doc_count
from hospitals;

--3. Top 3 Departments with the Highest Number of Patients 
select department, sum(patients_count) as patient_total
from hospitals
group by department
order by patient_total desc
limit 3;

--4. Hospital with the Maximum Medical Expenses 
select hospital_name, sum(medical_expenses) as total_expense
from hospitals
group by hospital_name
order by total_expense desc
limit 1;

--5. Daily Average Medical Expenses 

select hospital_name, avg(medical_expenses/(discharge_date-admission_date)) as daily_avg_expense_per_hospital
from hospitals
group by hospital_name;

--6. Longest Hospital Stay

select hospital_name, location, patients_count,(discharge_date-admission_date) as Stay_days
from hospitals
order by Stay_days desc;

--7. Total Patients Treated Per City

select location as city, sum(patients_count) as Count_total_patients
from hospitals
group by location
order by Count_total_patients desc;

--8. Average Length of Stay Per Department 
select department, avg(discharge_date-admission_date) as avgstay_per_dept
from hospitals
group by department
order by avgstay_per_dept desc;

--9. Identify the Department with the Lowest Number of Patients 

select department, sum(patients_count) as Count_total_patients
from hospitals
group by department
order by Count_total_patients asc limit 1;

--10. Monthly Medical Expenses Report 

select to_char(date_trunc('month', discharge_date),'Month-yyyy') as month, sum(medical_expenses) as total_expense
from hospitals
group by date_trunc('month', discharge_date)
order by date_trunc('month', discharge_date) asc;



