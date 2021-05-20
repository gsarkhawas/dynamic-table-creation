# dynamic-table-creation
This shell script is useful on any environment that has Hive installed.
Hospital data which is stored in database,can be accessed through Hive query as follows:
1] A customer table "hospital_customers" is created with all the customers related information (schema) such as Customer_Id, Customer_Name, Vaccination_Id, Country, etc.
        This can be achieved using "hive -f create_customer_table.sql" command.
2] If we want to drop the table at any point, "hive -f drop_customer_table.sql" commamd can be used.
3] The input data is in the file "Customer_Data.txt"
4] In order to load the data into table following command can be run:
        "hive -f load_customer_table.sql"
5] Use query - hive -e "select * from hospital_customers" in order to see the data of all customers around the world. As this data is too large to scan 
        and will take time, we can create tables based on countries for faster query scan.
6] In order to extract the customers as per country, separate tables are generated using following query:
        "hive -f create_country_table.sql". For example all the customers from India are present in Table_IND.
      
