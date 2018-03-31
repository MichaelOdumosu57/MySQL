CREATE TABLE optimize3_7 (
 string_i CHAR(20),
 string_ii CHAR(20)
);

INSERT INTO optimize3_7 VALUES
('1', '1'),
('1', '1'),
('1', '1'),
('1', '1'),
('2', '2'),
('1', '3'),
('1', '1');

SELECT string_i, string_ii FROM optimize3_7
WHERE string_i = '1' OR  string_ii = '1';


SELECT string_i, string_ii
    FROM optimize3_7 WHERE string_i = '1'
UNION
SELECT string_i, string_ii
    FROM optimize3_7 WHERE string_ii = '1';
