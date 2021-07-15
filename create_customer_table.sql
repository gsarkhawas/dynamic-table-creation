
create table hospital_customers(Customer_Name varchar(255), Customer_Id varchar(18), Customer_Open_Date date,
  Last_Consulted_Date date, Vaccination_Id char(5), Doctor_Name char(255), State char(5),
  Country char(5), DOB date, Is_Active char(1))
  row format delimited
  fields terminated by '|';
