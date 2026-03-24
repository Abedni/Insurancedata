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
CREATE TABLE InsuranceMaster (
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
INSERT INTO Fund (fundid, fund_name, fund_amount, fund_date)
VALUES
(6, 'Growth Fund', 10000.50, '2024-01-15'),
(7, 'Equity Fund', 25000.00, '2024-02-10'),
(8, 'Balanced Fund', 15000.75, '2024-03-05'),
(9, 'Income Fund', 8000.25, '2024-04-20'),
(10, 'Index Fund', 30000.00, '2024-05-12');

--2.2 Inserting data into InsuranceBenefit
INSERT INTO InsuranceBenefit (InsuranceBenefitid, benefit_type, benefit_status, benefitinception_date)
VALUES
(1, 'Life Cover', 1.00, '2024-01-01'),
(2, 'Disability Cover', 0.00, '2024-02-15'),
(3, 'Funeral Benefit', 1.00, '2024-03-10'),
(4, 'Critical Illness', 1.00, '2024-04-05'),
(5, 'Hospital Cash Plan', 0.00, '2024-05-20');