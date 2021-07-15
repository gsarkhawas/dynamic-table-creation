#!/bin/bash
hive -f drop_customer_table.sql
sh create_customer_table.sh
