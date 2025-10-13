# BCSL057 - Oct 2025

## MySQL Installation Links

- **MySQL Server 9.4 (Windows x64)**  
  [Download](https://cdn.mysql.com//Downloads/MySQL-9.4/mysql-9.4.0-winx64.msi)

- **MySQL Workbench Community 8.0.43 (Windows x64)**  
  [Download](https://cdn.mysql.com//Downloads/MySQLGUITools/mysql-workbench-community-8.0.43-winx64.msi)

---

## SQL Script
```sql

-- create course_author table
CREATE TABLE course_author (
    topic VARCHAR(50),
    block_number VARCHAR(20),
    author_name VARCHAR(50)
);

-- Insert data into course_author table
INSERT INTO course_author (course_name, block_name, author_name)
VALUES
    ('HTML',   'Block 1', 'Sharma'),
    ('Spring', 'Block 2', 'Mishra'),
    ('Java',   'Block 3', 'Verma'),
    ('Python', 'Block 4', 'Agarwal'),
    ('CSS',    'Block 5', 'Kumar');
