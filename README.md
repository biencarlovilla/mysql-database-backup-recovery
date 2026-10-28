# MySQL Database Backup & Recovery

## Project Overview

This project demonstrates basic database administration using MySQL. The objective was to create a database, perform a backup, simulate accidental data loss, restore the database, and verify that all records were successfully recovered.

## Tools Used

- MySQL Server 8.4
- MySQL Workbench
- macOS Terminal
- SQL
- Visual Studio Code

## Project Workflow

### 1. Database Creation

Created a MySQL database named `company_db` containing an `employees` table with 10 fictional employee records.

**SQL Script:** `scripts/01-create-database.sql`

### 2. Data Insertion

Inserted 10 sample employee records containing employee IDs, names, departments, and salaries.

**SQL Script:** `scripts/02-insert-data.sql`

### 3. Database Backup

Used MySQL's `mysqldump` utility to export the database structure and records into a SQL backup file.

```bash
/usr/local/mysql/bin/mysqldump -u root -p company_db > backups/company_db_backup.sql
```

Verified that the backup file existed and contained the employee records.

### 4. Simulated Data Loss

Simulated accidental data deletion using:

```sql
DELETE FROM employees;
```

Verified that the employee record count decreased from 10 to 0.

**SQL Script:** `scripts/03-simulate-data-loss.sql`

### 5. Database Restoration

Restored the database using the previously created SQL backup:

```bash
/usr/local/mysql/bin/mysql -u root -p company_db < backups/company_db_backup.sql
```

The database restoration completed without reported errors.

### 6. Recovery Verification

Executed SQL queries to confirm that the employee records were successfully restored.

```sql
SELECT COUNT(*) AS restored_employees
FROM employees;
```

**SQL Script:** `scripts/04-verify-recovery.sql`

## Results

| Metric | Result |
|---|---|
| Original employee records | 10 |
| Records after deletion | 0 |
| Records after restoration | 10 |
| Record recovery | 100% |

All 10 original employee records were successfully recovered from the database backup.

## Screenshots

The `screenshots` folder contains documentation of the database operations:

1. `01-original-records.png` - Original employee records
2. `02-database-backup.png` - Backup file and contents verification
3. `03-data-deletion.png` - Simulated data loss
4. `04-database-recovery.png` - Restored employee records
5. `05-recovery-verification.png` - Final record count verification

## Skills Demonstrated

- Relational database management
- MySQL database administration
- SQL queries and data manipulation
- Database backup using `mysqldump`
- Database restoration
- Data recovery verification
- Technical documentation

## Conclusion

This project demonstrated a complete basic backup and recovery workflow using MySQL. By creating a backup, simulating data loss, restoring the database, and verifying the results, I gained practical experience with database protection and recovery procedures.