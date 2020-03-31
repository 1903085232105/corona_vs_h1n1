
CREATE TABLE Covid19(
	states VARCHAR (35) NOT NULL,
	covid_confirmed_cases INT,
	covid_confirmed_deaths FLOAT);
	
CREATE TABLE H1N1(
	states VARCHAR (35) NOT NULL,
	h1n1_confirmed_cases INT,
	h1n1_confirmed_deaths INT);

SELECT
	h1n1.states,
	covid19.states,
	h1n1.h1n1_confirmed_cases,
	covid19.covid_confirmed_cases,
	h1n1.h1n1_confirmed_deaths,
	covid19.covid_confirmed_deaths
FROM h1n1
LEFT OUTER JOIN covid19 
	ON h1n1.states=covid19.states;