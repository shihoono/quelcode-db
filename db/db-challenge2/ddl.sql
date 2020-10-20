CREATE TABLE users (
    id                  INT(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    email               VARCHAR(100) NOT NULL,
    password            VARCHAR(100) NOT NULL,
    name                VARCHAR(100) NOT NULL,
    introduction        VARCHAR(1000), 
    office_phone_number VARCHAR(13),
    phone_number        VARCHAR(13),
    is_deleted          TINYINT(1) NOT NULL DEFAULT 0,
    created_at          DATETIME NOT NULL,
    updated_at          TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE rooms (
    id                  INT(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name                VARCHAR(100) NOT NULL,
    description         VARCHAR(1000),
    is_file_sendable    TINYINT(1) NOT NULL DEFAULT 0,
    is_deleted          TINYINT(1) NOT NULL DEFAULT 0,
    created_at          DATETIME NOT NULL,
    create_user_id      INT(11) NOT NULL,
    updated_at          TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    update_user_id      INT(11) NOT NULL
);

CREATE TABLE messages (
    id                  INT(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    room_id             INT(11) NOT NULL REFERENCES rooms(id),
    create_user_id      INT(11) NOT NULL REFERENCES users(id),
    content             VARCHAR(1000) NOT NULL,
    file                VARCHAR(100),
    is_deleted          TINYINT(1) NOT NULL DEFAULT 0,
    created_at          DATETIME NOT NULL,
    updated_at          TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    update_user_id      INT(11) NOT NULL
);

CREATE TABLE tasks (
    id                  INT(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    rep_user_id         INT(11) NOT NULL REFERENCES users(id),
    room_id             INT(11) NOT NULL REFERENCES rooms(id),
    create_user_id      INT(11) NOT NULL REFERENCES users(id),
    content             VARCHAR(1000) NOT NULL,
    due_date            DATETIME,
    is_completed        TINYINT(1) NOT NULL DEFAULT 0,
    is_deleted          TINYINT(1) NOT NULL DEFAULT 0,
    created_at          DATETIME NOT NULL,
    updated_at          TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    update_user_id      INT(11) NOT NULL
);

CREATE TABLE rooms_users (
    user_id             INT(11) NOT NULL REFERENCES users(id),
    room_id             INT(11) NOT NULL REFERENCES rooms(id),
    joined_at           DATETIME NOT NULL,
    PRIMARY KEY (user_id, room_id)
);
