CREATE DATABASE sparta;
USE sparta;

DROP TABLE IF EXISTS candidate
CREATE TABLE candidate (
	candidate_id INT NOT NULL IDENTITY PRIMARY KEY,
	first_name VARCHAR(30), -- in original separete the full name column to get this
	last_name VARCHAR(40),
	gender VARCHAR(10),
	date_of_birth DATE,
	email VARCHAR(100),
	city VARCHAR(40),
	candidate_address VARCHAR(100),
	postcode VARCHAR(10),
	phone VARCHAR(30),
	degree VARCHAR(10),
	invite_date DATE, -- in original combine the date columns (invited_date and months) 
	invited_by VARCHAR(30),
	CONSTRAINT chk_gender CHECK (gender IN ('male', 'female'))
);

-- test for academy directory Business_24_2019-02-11
DROP TABLE IF EXISTS business_test
CREATE TABLE business_test (
	spartan_name VARCHAR(40),
	trainer VARCHAR(40),
	IH_W1 INT,
	IS_W1 INT,
	PV_W1 INT,
	PS_W1 INT,
	SD_W1 INT,
	SA_W1 INT,
	IH_W2 INT,
	IS_W2 INT,
	PV_W2 INT,
	PS_W2 INT,
	SD_W2 INT,
	SA_W2 INT,
	IH_W3 INT,
	IS_W3 INT,
	PV_W3 INT,
	PS_W3 INT,
	SD_W3 INT,
	SA_W3 INT,
	IH_W4 INT,
	IS_W4 INT,
	PV_W4 INT,
	PS_W4 INT,
	SD_W4 INT,
	SA_W4 INT,
	IH_W5 INT,
	IS_W5 INT,
	PV_W5 INT,
	PS_W5 INT,
	SD_W5 INT,
	SA_W5 INT,
	IH_W6 INT,
	IS_W6 INT,
	PV_W6 INT,
	PS_W6 INT,
	SD_W6 INT,
	SA_W6 INT,
	IH_W7 INT,
	IS_W7 INT,
	PV_W7 INT,
	PS_W7 INT,
	SD_W7 INT,
	SA_W7 INT,
	IH_W8 INT,
	IS_W8 INT,
	PV_W8 INT,
	PS_W8 INT,
	SD_W8 INT,
	SA_W8 INT
);