use waterreports25;

CREATE TABLE unregulatedsubstances2023 (
    test_id INT(15) AUTO_INCREMENT,
    contaminant VARCHAR(150) NOT NULL,
    violation ENUM('Yes','No') DEFAULT NULL,
    date_of_sample DATE DEFAULT NULL, 
    level_detected DECIMAL(10,4) DEFAULT NULL,
    level_detected_avg_max VARCHAR(50) DEFAULT NULL,
    level_detected_range VARCHAR(50) DEFAULT NULL,
    unit_measurement VARCHAR(50) DEFAULT NULL,
    MCLG DECIMAL(10,4) DEFAULT NULL,
    regulatory_limit DECIMAL(10,4) DEFAULT NULL,
    notes VARCHAR(200) DEFAULT NULL,
    PRIMARY KEY(test_id)
)


UPDATE unregulatedsubstances2023 SET MCLG = NULL WHERE MCLG = 0.0000;
UPDATE unregulatedsubstances2023 SET regulatory_limit = NULL WHERE regulatory_limit = 0.0000;

describe unregulatedsubstances2023

SELECT * FROM unregulatedsubstances2023