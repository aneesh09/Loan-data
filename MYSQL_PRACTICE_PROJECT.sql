create database MYSQL_PRACTICE;
/*1.1 Select all columns for all records*/
use MYSQL_PRACTICE;
select * from loan;
/*1.2 Select specific columns: Loan Amount and Loan Type*/
select LoanAmount,LoanType
from loan;
/*Task 2: Sorting and Filtering Data
2.1 Sort loans by Issue Date (most recent first)*/
select * from loan order by IssueDate DESC;
/*2.2 Sort loans by Loan Amount (highest first)*/
select * from loan order by LoanAmount DESC; 
/*2.3 Filter loans by Loan Type = 'Personal'*/
select * from loan where LoanType='Personal';
/*2.4 Filter loans by Loan Type = 'Home'*/
select * from loan where LoanTYpe='Home';
/*2.5 Filter loans by Loan Type = 'Personal' and Loan Status = 'Approved'*/
select * from loan where LoanType='Personal' and LoanStatus='Approved';
/*2.6 Get only approved loans with amount greater than 50,000*/
select * from loan where LoanStatus='Approved' and LoanAmount>50000;
/*Count number of loans for each Loan Type*/
select LoanType,count(*) as total_loans from loan group by  LoanType;
select LoanType,avg(InterestRate(%)) as avg_interest_rate from loan group by LoanType;