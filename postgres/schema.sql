CREATE TYPE sex_t AS enum('Male', 'Female');

CREATE TABLE households (
	name character varying (50),
	income numeric(10, 9),
	region character varying (50),
	household_head_sex sex_t,
	household_head_age numeric(3, 2)
);

COPY households(name, income, region, household_head_sex, household_head_age) 
FROM '/tmp/households.csv' DELIMITER ',' CSV HEADER;