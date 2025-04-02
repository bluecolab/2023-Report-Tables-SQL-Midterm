use waterreports25;

/*
create table isabella_leadcopper2023(
test_id int(15) AUTO_INCREMENT,
contaminant varchar(25) NOT NULL,
violation ENUM("Yes","No", "N/A") default "N/A",
date_of_sample date NOT NULL,
level_detected varchar(20), /*make into decimal maybe so we can sort? ND value tho*/
/*
level_detected_90th_percent_value_range varchar(20),
unit_measurement varchar(10),
regulatory_limit_al decimal(10,4),
MCLG decimal(10,4),
num_samples_collected tinyint,
num_samples_exceed_al_range tinyint,
notes varchar(200),
PRIMARY KEY (test_id)                  
);



create table 1isabella_leadcopper2023(
test_id int(15) AUTO_INCREMENT,
contaminant varchar(25) NOT NULL,
violation ENUM("Yes","No") default NULL,
date_of_sample date NOT NULL,
level_detected decimal(10,4), /*make into decimal maybe so we can sort? ND value tho dif from null or n/a*/
/*
level_detected_90th_percent_value_range varchar(20),
unit_measurement varchar(10),
regulatory_limit_al decimal(10,4),
MCLG decimal(10,4),
num_samples_collected tinyint,
num_samples_exceed_al_range tinyint,
notes varchar(200),
PRIMARY KEY (test_id)                  
);
*/

create table 2isabella_leadcopper2023(
test_id int(15) AUTO_INCREMENT,
contaminant varchar(25) NOT NULL,
violation ENUM("Yes","No") default NULL,
date_of_sample date NOT NULL,
level_detected decimal(10,4) default NULL, /*ND value different from null or n/a*/
level_detected_90th_percent_value_range varchar(20),
unit_measurement varchar(10),
regulatory_limit_al decimal(10,4),
MCLG decimal(10,4),
num_samples_collected tinyint,
num_samples_exceed_al_range tinyint,
notes varchar(200),
PRIMARY KEY (test_id)                  
);



UPDATE 2isabella_leadcopper2023 SET level_detected = NULL WHERE level_detected = 0.0000;


describe 2isabella_leadcopper2023;

select * from 2isabella_leadcopper2023;

