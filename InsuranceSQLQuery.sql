--1.1 Create a Fund table

CREATE TABLE Fund (
    fundid INT PRIMARY KEY,
    fund_name VARCHAR(100) NOT NULL,
    fund_amount decimal(10,2),
    fund_date date,
);
--1.2 Create a InsuranceBenefit
CREATE TABLE InsuranceBenefit (
    InsuranceBenefitid INT PRIMARY KEY,
    benefit_type VARCHAR(100) NOT NULL,
    benefit_status decimal(10,2),
    benefitinception_date date,
);
--1.3 Create a ClaimRegister
CREATE TABLE ClaimRegister (
    ClaimRegisterid INT PRIMARY KEY,
    claim_type VARCHAR(100) NOT NULL,
    claim_status int,
    claim_date date,
);
--1.4 Create a Beneficiary
CREATE TABLE Beneficiary (
    Beneficiaryid INT PRIMARY KEY,
    beneficiary_name VARCHAR(100) NOT NULL,
    beneficiary_age int,
    beneficiary_type varchar(100),
);
--1.5 Create a  InsuranceMaster
CREATE TABLE InsuranceMasterr (
   InsuranceMasterid INT PRIMARY KEY,
    premium_amount int,
    inception_date date,
    payment_frequency varchar(100),
    fundid INT,
    InsuranceBenefitid int,
    ClaimRegisterid int,
    Beneficiaryid int,
    FOREIGN KEY (fundid) REFERENCES Fund(fundid),
    FOREIGN KEY (InsuranceBenefitid) REFERENCES InsuranceBenefit(InsuranceBenefitid),
    FOREIGN KEY (ClaimRegisterid) REFERENCES ClaimRegister(ClaimRegisterid),
    FOREIGN KEY (Beneficiaryid) REFERENCES Beneficiary(Beneficiaryid)
);

--2.1 Inserting data into Fund
iNSERT INTO Fund (fundid, fund_name, fund_amount, fund_date)
VALUES
(1, 'Growth Fund', 10000.50, '2024-01-15'),
(2, 'Equity Fund', 25000.00, '2024-02-10'),
(3, 'Balanced Fund', 15000.75, '2024-03-05'),
(4, 'Income Fund', 8000.25, '2024-04-20'),
(5, 'Index Fund', 30000.00, '2024-05-12');

--2.2 Inserting data into InsuranceBenefit
INSERT INTO InsuranceBenefit (InsuranceBenefitid, benefit_type, benefit_status, benefitinception_date)
VALUES
(1, 'Life Cover', 1.00, '2024-01-01'),
(2, 'Disability Cover', 0.00, '2024-02-15'),
(3, 'Funeral Benefit', 1.00, '2024-03-10'),
(4, 'Critical Illness', 1.00, '2024-04-05'),
(5, 'Hospital Cash Plan', 0.00, '2024-05-20');

----2.2 Inserting data into ClaimRegister

INSERT INTO ClaimRegister (ClaimRegisterid, claim_type, claim_status, claim_date)
VALUES
(1, 'Accident Claim', 1, '2024-01-05'),
(2, 'Health Claim', 1, '2024-01-10'),
(3, 'Life Claim', 2, '2024-01-15'),
(4, 'Disability Claim', 1, '2024-02-01'),
(5, 'Funeral Claim', 0, '2024-02-12'),
(6, 'Critical Illness Claim', 1, '2024-03-03'),
(7, 'Hospital Claim', 2, '2024-03-18'),
(8, 'Accident Claim', 1, '2024-04-07'),
(9, 'Health Claim', 0, '2024-04-20'),
(10, 'Life Claim', 1, '2024-05-02');

----2.3 Inserting data into Beneficiary
INSERT INTO Beneficiary (Beneficiaryid, beneficiary_name, beneficiary_age, beneficiary_type)
VALUES
(1, 'John Smith', 35, 'Spouse'),
(2, 'Emily Johnson', 12, 'Child'),
(3, 'Michael Brown', 40, 'Parent'),
(4, 'Sophia Davis', 28, 'Spouse'),
(5, 'Oliver Wilson', 5, 'Child');

--DROP ALL THE TABLES
DROP TABLE IF EXISTS InsuranceMasterr;
DROP TABLE IF EXISTS Beneficiary;
DROP TABLE IF EXISTS ClaimRegister;
DROP TABLE IF EXISTS InsuranceBenefit;
DROP TABLE IF EXISTS Fund;

CREATE TABLE Fund (
    fundid INT PRIMARY KEY,
    fund_name VARCHAR(100) NOT NULL,
    fund_amount DECIMAL(10,2),
    fund_date DATE
);

INSERT INTO Fund (fundid, fund_name, fund_amount, fund_date)
VALUES
(1, 'Growth Fund', 10000.50, '2024-01-15'),
(2, 'Equity Fund', 25000.00, '2024-02-10'),
(3, 'Balanced Fund', 15000.75, '2024-03-05'),
(4, 'Income Fund', 8000.25, '2024-04-20'),
(5, 'Index Fund', 30000.00, '2024-05-12');

CREATE TABLE InsuranceBenefit (
    InsuranceBenefitid INT PRIMARY KEY,
    benefit_type VARCHAR(100) NOT NULL,
    benefit_status DECIMAL(10,2),
    benefitinception_date DATE
);

INSERT INTO InsuranceBenefit (InsuranceBenefitid, benefit_type, benefit_status, benefitinception_date)
VALUES
(1, 'Life Cover', 1.00, '2024-01-01'),
(2, 'Disability Cover', 0.00, '2024-02-15'),
(3, 'Funeral Benefit', 1.00, '2024-03-10'),
(4, 'Critical Illness', 1.00, '2024-04-05'),
(5, 'Hospital Cash Plan', 0.00, '2024-05-20');

CREATE TABLE ClaimRegister (
    ClaimRegisterid INT PRIMARY KEY,
    claim_type VARCHAR(100) NOT NULL,
    claim_status INT,
    claim_date DATE
);

INSERT INTO ClaimRegister (ClaimRegisterid, claim_type, claim_status, claim_date)
VALUES
(1, 'Accident Claim', 0, '2024-01-05'),
(2, 'Health Claim', 1, '2024-01-10'),
(3, 'Life Claim', 2, '2024-01-15'),
(4, 'Disability Claim', 1, '2024-02-01'),
(5, 'Funeral Claim', 0, '2024-02-12');

CREATE TABLE Beneficiary (
    Beneficiaryid INT PRIMARY KEY,
    beneficiary_name VARCHAR(100) NOT NULL,
    beneficiary_age INT,
    beneficiary_type VARCHAR(100)
);

INSERT INTO Beneficiary (Beneficiaryid, beneficiary_name, beneficiary_age, beneficiary_type)
VALUES
(1, 'John Smith', 35, 'Spouse'),
(2, 'Emily Johnson', 12, 'Child'),
(3, 'Michael Brown', 40, 'Parent'),
(4, 'Sophia Davis', 28, 'Spouse'),
(5, 'Oliver Wilson', 5, 'Child');

CREATE TABLE InsuranceMaster (
    InsuranceMasterid INT PRIMARY KEY,
    premium_amount INT,
    inception_date DATE,
    payment_frequency VARCHAR(100),
    fundid INT,
    InsuranceBenefitid INT,
    ClaimRegisterid INT,
    Beneficiaryid INT,
    FOREIGN KEY (fundid) REFERENCES Fund(fundid),
    FOREIGN KEY (InsuranceBenefitid) REFERENCES InsuranceBenefit(InsuranceBenefitid),
    FOREIGN KEY (ClaimRegisterid) REFERENCES ClaimRegister(ClaimRegisterid),
    FOREIGN KEY (Beneficiaryid) REFERENCES Beneficiary(Beneficiaryid)
);

INSERT INTO InsuranceMaster
(InsuranceMasterid, premium_amount, inception_date, payment_frequency, fundid, InsuranceBenefitid, ClaimRegisterid, Beneficiaryid)
VALUES
(1, 1200, '2024-01-01', 'Monthly', 1, 1, 1, 1),
(2, 1500, '2024-02-10', 'Quarterly', 2, 2, 2, 2),
(3, 1000, '2024-03-05', 'Monthly', 3, 3, 3, 3),
(4, 1800, '2024-04-20', 'Annually', 4, 4, 4, 4),
(5, 2000, '2024-05-12', 'Monthly', 5, 5, 5, 5);


--sql query for joining all the tables
select *
from Fund inner join InsuranceBenefit on fund.fundid=InsuranceBenefit.InsuranceBenefitid
inner join Beneficiary on Beneficiary.Beneficiaryid=InsuranceBenefit.InsuranceBenefitid 
inner join ClaimRegister on ClaimRegister.ClaimRegisterid=fund.fundid
inner join InsuranceMaster on InsuranceMaster.InsuranceMasterid=ClaimRegister.ClaimRegisterid