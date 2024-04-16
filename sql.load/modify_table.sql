
--- Insert vaues from psql tool

\copy businesses FROM 'C:\\Users\\12063\\OneDrive\\Desktop\\Project_World''s_Oldest_Businesses\\csv_file\\businesses.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

\copy categories FROM 'C:\\Users\\12063\\OneDrive\\Desktop\\Project_World''s_Oldest_Businesses\\csv_file\\categories.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

\copy countries FROM 'C:\\Users\\12063\\OneDrive\\Desktop\\Project_World''s_Oldest_Businesses\\csv_file\\countries.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
