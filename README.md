-- # bcsl057-Oct25
-- MySQL installation links:
-- MySQL Server 9.4: https://cdn.mysql.com/Downloads/MySQL-9.4/mysql-9.4.0-winx64.msi
-- MySQL Workbench 8.0.43: https://cdn.mysql.com/Downloads/MySQLGUITools/mysql-workbench-community-8.0.43-winx64.msi

-- Insert records into course_author table
INSERT INTO course_author (course_name, block_name, author_name)
VALUES
    ('HTML',   'Block 1', 'Sharma'),
    ('Spring', 'Block 2', 'Mishra'),
    ('Java',   'Block 3', 'Verma'),
    ('Python', 'Block 4', 'Agarwal'),
    ('CSS',    'Block 5', 'Kumar');
