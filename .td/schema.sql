
-- http_online1 object definition
CREATE FOREIGN TABLE http_online1, EXTERNAL SECURITY DEFINER TRUSTED "tio" (
  location varchar(2048) character set unicode casespecific,
  htimestamp varchar(25),
  teid varchar(25),
  dst_ip varchar(25),
  dst_port varchar(25),
  src_ip varchar(25),
  src_port varchar(25),
  hmethod varchar(25),
  hversion varchar(25),
  h_name1 varchar(25),
  h_name2 varchar(25),
  h_name3 varchar(25),
  h_name4 varchar(25),
  content_type varchar(25),
  url varchar(25),
  refer varchar(25),
  hbytes varchar(25)
 ) USING (
  LOCATION('/S3/s3.us-west-1.amazonaws.com/tio-antares-nos-uswest1/dpi/')
  STOREDAS('PARQUET')
 );
