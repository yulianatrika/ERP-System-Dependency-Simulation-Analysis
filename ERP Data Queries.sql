-- Query 1: Create Base Table for ERP Systems --
CREATE TABLE erp_db (
    "Component Name" TEXT,
    "Module Code" TEXT,
    "Module Name" TEXT,
    "Table Name" TEXT,
    "Dependency Table Name" TEXT,
    "Dependency Table Count" INT,
    "Cross Module Dependencies Names" TEXT,
    "Cross Module Dependencies Count" INT,
    "Table Category" TEXT,
    "Table Category Notes" TEXT,
    "Complexity" TEXT
);

-- Query 2: Perview First 10 Rows of the Dataset --
SELECT * FROM erp_edb LIMIT 10;

-- Query 3: Check Total Number of Records --
SELECT COUNT(*) FROM erp_db

-- Query 4: List All Unique ERP Modules --
SELECT DISTINCT "Module Name" FROM erp_db ORDER BY "Module Name"

-- Query 5: Calculate Number of Tables per Modules --
SELECT "Module Name", COUNT(*) AS total_tables
FROM erp_db
GROUP BY "Module Name"
ORDER BY total_tables DESC;

-- Query 6: Analyze Complexity Distribution --
SELECT "Complexity", COUNT (*) AS total
FROM erp_db
GROUP BY "Complexity"
ORDER BY total DESC;

-- Query 7: Identify Cross-Module Dependencies --
SELECT
"Module Name",
"Table Name",
"Cross Module Dependencies Names",
"Cross Module Dependencies Count"
FROM erp_db
WHERE "Cross Module Dependencies Count" > 0
ORDER BY "Module Name", "Cross Module Dependencies Count"