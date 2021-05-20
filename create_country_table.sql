for country_code in $(hive -S -e select Country from hospital_customers;)
do
  echo ${country_code}
  hive -S -e create table Table_${country_code} as select * from hospital_customers where Country = '${country_code}';
done
