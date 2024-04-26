------- CREATE SCHEMA --------
CREATE SCHEMA `kanban_DB` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;

------- USE SCHEMA --------

use  kanban_DB ; 

--------- CREATE TABLE --------

CREATE TABLE tasks (
    taskId INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    description VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci default null ,
    assignees VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci default null ,
    status ENUM('No Status', 'To Do', 'Doing', 'Done') NOT NULL DEFAULT 'No Status',
	createdOn TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updatedOn TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

--------- INSERT DATA --------


-- Row 1
INSERT INTO tasks (Title, Description, Assignees, Status)
VALUES (
    'TaskTitle1TaskTitle2TaskTitle3TaskTitle4TaskTitle5TaskTitle6TaskTitle7TaskTitle8TaskTitle9TaskTitle0',
      'Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti1Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti2Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti3Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti4Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti5',
    'Assignees1Assignees2Assignees3',
    'No Status'
);

-- Row 2
INSERT INTO tasks (Title, description, Assignees, status)
VALUES (
    'Repository',
    '',
    '',
    'To Do'
);

-- Row 3
INSERT INTO tasks (Title, description, Assignees, status)
VALUES (
    'ดาต้าเบส',
    '້້ສ ້ າ ງ ຖ າ ນ ຂໍ ມ ູ ນ\nあなた、彼、彼女 (私ではありません)',
    'あなた、彼、彼女 (私ではありません)',
    'Doing'
);

-- Row 4
INSERT INTO tasks (Title, description, Assignees, status)
VALUES (
    '_Infrastructure_',
    ' _Setup containers_',
    'ไก่งวง กับ เพนกวิน',
    'Done'
);

