# **Insurance Database Project**

# Overview

# 

###### This project implements a relational database for an Insurance Management System. The database consists of multiple tables representing funds, insurance benefits, claims, beneficiaries, and the insurance master records. All tables are linked using foreign key constraints to ensure data integrity.





Database Tables

1\. Fund



| Column      | Data Type     | Description               |

| ----------- | ------------- | ------------------------- |

| fundid      | INT (PK)      | Unique ID of the fund     |

| fund\_name   | VARCHAR(100)  | Name of the fund          |

| fund\_amount | DECIMAL(10,2) | Fund amount               |

| fund\_date   | DATE          | Date the fund was created |



2\. InsuranceBenefit

| Column                | Data Type     | Description                        |

| --------------------- | ------------- | ---------------------------------- |

| InsuranceBenefitid    | INT (PK)      | Unique ID of the benefit           |

| benefit\_type          | VARCHAR(100)  | Type of benefit (e.g., Life Cover) |

| benefit\_status        | DECIMAL(10,2) | Status of the benefit              |

| benefitinception\_date | DATE          | Start date of the benefit          |



3\. ClaimRegister



| Column          | Data Type    | Description                            |

| --------------- | ------------ | -------------------------------------- |

| ClaimRegisterid | INT (PK)     | Unique ID of the claim                 |

| claim\_type      | VARCHAR(100) | Type of claim (Accident, Health, etc.) |

| claim\_status    | INT          | Status of the claim                    |

| claim\_date      | DATE         | Date of the claim                      |



4\. Beneficiary



| Column           | Data Type    | Description                        |

| ---------------- | ------------ | ---------------------------------- |

| Beneficiaryid    | INT (PK)     | Unique ID of the beneficiary       |

| beneficiary\_name | VARCHAR(100) | Name of the beneficiary            |

| beneficiary\_age  | INT          | Age of the beneficiary             |

| beneficiary\_type | VARCHAR(100) | Type (Spouse, Child, Parent, etc.) |



5\. InsuranceMaster



| Column             | Data Type    | Description                                       |

| ------------------ | ------------ | ------------------------------------------------- |

| InsuranceMasterid  | INT (PK)     | Unique ID of the insurance record                 |

| premium\_amount     | INT          | Premium amount                                    |

| inception\_date     | DATE         | Policy start date                                 |

| payment\_frequency  | VARCHAR(100) | Payment frequency (Monthly, Quarterly, etc.)      |

| fundid             | INT (FK)     | References `Fund(fundid)`                         |

| InsuranceBenefitid | INT (FK)     | References `InsuranceBenefit(InsuranceBenefitid)` |

| ClaimRegisterid    | INT (FK)     | References `ClaimRegister(ClaimRegisterid)`       |

| Beneficiaryid      | INT (FK)     | References `Beneficiary(Beneficiaryid)`           |



