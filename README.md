# ETL-Process

	
ETL process

ETL (Extract, Transform and Load) is a process in data warehousing responsible for pulling data out of the source systems and placing it into a data warehouse. ETL involves the following tasks:

EXTRACTING the data from source systems (SAP, ERP, other oprational systems), data from different source systems is converted into one consolidated data warehouse format which is ready for transformation processing. 

TRANSFORMING the data may involve the following tasks:
  
  1.Applying business rules (so-called derivations, e.g., calculating new measures and dimensions),

  2.Cleaning (e.g., mapping NULL to 0 or "Male" to "M" and "Female" to "F" etc.),
  
  3.Filtering (e.g., selecting only certain columns to load),
  
  4.Splitting a column into multiple columns and vice versa,
  
  5.Joining together data from multiple sources (e.g., lookup, merge),
  
  6.Transposing rows and columns,
  
  7.Applying any kind of simple or complex data validation (e.g., if the first 3 columns in a row are empty then reject the row from processing)

LOADING the data into a data warehouse or data repository other reporting applications
