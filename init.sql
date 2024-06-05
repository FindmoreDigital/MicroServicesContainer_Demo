CREATE DATABASE IF NOT EXISTS MyDB;
USE MyDB;
CREATE TABLE IF NOT EXISTS MyTable (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    dummydata1 VARCHAR(255),
    dummydata2 VARCHAR(255),
    timestampinserted DATETIME DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO MyTable (dummydata1, dummydata2) VALUES ('dummydata1', 'dummydata2');


