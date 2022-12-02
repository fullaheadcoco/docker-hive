-- ---------------------------------------------
-- default table
DROP TABLE test_change;
CREATE TABLE test_change (
    a int, b int, c int
)
LOCATION 'file:///metastore//test_change';
 
DESC test_change;
 
ALTER TABLE test_change REPLACE COLUMNS (
    y INT COMMENT 'this is column y'
);
 
DESC test_change;
 
ALTER TABLE test_change REPLACE COLUMNS (
    a STRING COMMENT 'this is column a',
    b STRING COMMENT 'this is column b'
);
 
DESC test_change;
 
ALTER TABLE test_change RENAME TO test_change_1;
ALTER TABLE test_change_1 RENAME TO test_change;
 
ALTER TABLE test_change SET TBLPROPERTIES ('comment' = 'new_comment');
ALTER TABLE test_change UNSET TBLPROPERTIES ('comment' = 'new_comment');
 
ALTER TABLE test_change SET SERDEPROPERTIES ('field.delim' = ',');
#ALTER TABLE test_change UNSET SERDEPROPERTIES ('field.delim' = ',');
 
 
-- ---------------------------------------------
-- json table
DROP TABLE tbl_json;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_json
(
    a int, b int, c int comment 'commnet'
)
ROW FORMAT SERDE 'org.apache.hive.hcatalog.data.JsonSerDe'
STORED AS textfile
LOCATION 'file:///metastore//tbl_json';
 
DESC tbl_json;
 
ALTER TABLE tbl_json REPLACE COLUMNS (
    y INT COMMENT 'this is column y'
);
 
DESC tbl_json;
 
ALTER TABLE tbl_json REPLACE COLUMNS (
    a STRING COMMENT 'this is column a',
    b STRING COMMENT 'this is column b'
);
 
DESC tbl_json;
 
 
-- ---------------------------------------------
-- orc table
DROP TABLE tbl_orc;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_orc
(
    a int, b int, c int
)
STORED AS orc
LOCATION 'file:///metastore//tbl_orc';
 
DESC tbl_orc;
 
ALTER TABLE tbl_orc REPLACE COLUMNS (
    y INT COMMENT 'this is column y'
);
 
DESC tbl_orc;
 
ALTER TABLE tbl_orc REPLACE COLUMNS (
    a STRING COMMENT 'this is column a',
    b STRING COMMENT 'this is column b'
);
 
DESC tbl_orc;
 
 
-- ---------------------------------------------
-- parquet table
DROP TABLE tbl_parquet;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_parquet
(
    a int, b int, c int
)
STORED AS PARQUET
LOCATION 'file:///metastore//tbl_parquet';
 
DESC tbl_parquet;
 
ALTER TABLE tbl_parquet REPLACE COLUMNS (
    y INT COMMENT 'this is column y'
);
 
DESC tbl_parquet;
 
ALTER TABLE tbl_parquet REPLACE COLUMNS (
    a STRING COMMENT 'this is column a',
    b STRING COMMENT 'this is column b'
);
 
DESC tbl_parquet;
 
-- #########################################################################
-- #########################################################################
-- #########################################################################
 
-- ---------------------------------------------
-- default table
DROP TABLE test_change;
CREATE TABLE test_change (
    a int, b int, c int
) PARTITIONED BY (yyyymmdd STRING)
LOCATION 'file:///metastore//test_change';
 
DESC test_change;
 
ALTER TABLE test_change REPLACE COLUMNS (
    y INT COMMENT 'this is column y'
);
 
DESC test_change;
 
ALTER TABLE test_change REPLACE COLUMNS (
    a STRING COMMENT 'this is column a',
    b STRING COMMENT 'this is column b'
);
 
DESC test_change;
 
-- ---------------------------------------------
-- json table
DROP TABLE tbl_json;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_json
(
    a int, b int, c int comment 'commnet'
) PARTITIONED BY (yyyymmdd STRING)
ROW FORMAT SERDE 'org.apache.hive.hcatalog.data.JsonSerDe'
STORED AS textfile
LOCATION 'file:///metastore//tbl_json';
 
DESC tbl_json;
 
ALTER TABLE tbl_json REPLACE COLUMNS (
    y INT COMMENT 'this is column y'
);
 
DESC tbl_json;
 
ALTER TABLE tbl_json REPLACE COLUMNS (
    a STRING COMMENT 'this is column a',
    b STRING COMMENT 'this is column b'
);
 
DESC tbl_json;
 
 
-- ---------------------------------------------
-- orc table
DROP TABLE tbl_orc;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_orc
(
    a int, b int, c int
) PARTITIONED BY (yyyymmdd STRING)
STORED AS orc
LOCATION 'file:///metastore//tbl_orc';
 
DESC tbl_orc;
 
ALTER TABLE tbl_orc REPLACE COLUMNS (
    y INT COMMENT 'this is column y'
);
 
DESC tbl_orc;
 
ALTER TABLE tbl_orc REPLACE COLUMNS (
    a STRING COMMENT 'this is column a',
    b STRING COMMENT 'this is column b'
);
 
DESC tbl_orc;
 
 
-- ---------------------------------------------
-- parquet table
DROP TABLE tbl_parquet;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_parquet
(
    a int, b int, c int
) PARTITIONED BY (yyyymmdd STRING)
STORED AS PARQUET
LOCATION 'file:///metastore//tbl_parquet';
 
DESC tbl_parquet;
 
ALTER TABLE tbl_parquet REPLACE COLUMNS (
    y INT COMMENT 'this is column y'
);
 
DESC tbl_parquet;
 
ALTER TABLE tbl_parquet REPLACE COLUMNS (
    a STRING COMMENT 'this is column a',
    b STRING COMMENT 'this is column b'
);
 
DESC tbl_parquet;