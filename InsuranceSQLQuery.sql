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
--Create a  InsuranceMaster
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

