CREATE TABLE users (
    id                  INT(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    email               VARCHAR(100) NOT NULL,
    password            VARCHAR(100) NOT NULL,
    name                VARCHAR(100) NOT NULL,
    indroduction        VARCHAR(1000), 
    office_phone_number VARCHAR(13),
    phone_number        VARCHAR(13),
    is_deleted          TINYINT(1) NOT NULL DEFAULT 0,
    created_at          DATETIME NOT NULL,
    updated_at          TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

