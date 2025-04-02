use waterreports25;
CREATE TABLE 2detectedcontaminants2023 (
    test_id int(15) NOT NULL AUTO_INCREMENT,
    contaminant varchar(150) NOT NULL, /*this needed to be bigger than other tables*/
    violation enum('Yes', 'No') DEFAULT NULL,
    date_of_sample date DEFAULT NULL, /*check*/
    level_detected decimal(10,4) DEFAULT NULL,
    level_detected_avg_max varchar(50),
    level_detected_range varchar(50),
    unit_measurement varchar(10),
    MCLG decimal(10,4) DEFAULT NULL,
    regulatory_limit decimal(10,4) DEFAULT NULL,
    notes varchar(200) DEFAULT NULL,
    PRIMARY KEY (test_id)
)


UPDATE 2detectedcontaminants2023 SET MCLG = NULL WHERE MCLG = 0.0000;
UPDATE 2detectedcontaminants2023 SET regulatory_limit = NULL WHERE regulatory_limit = 0.0000;
UPDATE 2detectedcontaminants2023 SET level_detected = NULL WHERE level_detected = 0.0000;


DESCRIBE 2detectedcontaminants2023;

SELECT * FROM 2detectedcontaminants2023;



