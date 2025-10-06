CREATE TABLE USER (
    id_user INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    is_admin BOOLEAN DEFAULT FALSE,
    is_active BOOLEAN DEFAULT TRUE,
    created_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE PARKING_SPOT (
    id_spot INT PRIMARY KEY AUTO_INCREMENT,
    spot_number VARCHAR(10) NOT NULL UNIQUE,
    is_available BOOLEAN DEFAULT TRUE
);

CREATE TABLE RESERVATION (
    id_reservation INT PRIMARY KEY AUTO_INCREMENT,
    start_date DATETIME NOT NULL,
    end_date DATETIME NOT NULL,
    actual_end_date DATETIME NULL,
    status ENUM('active', 'completed', 'cancelled') DEFAULT 'active',
    id_user INT NOT NULL,
    id_spot INT NOT NULL,
    FOREIGN KEY (id_user) REFERENCES USER (id_user),
    FOREIGN KEY (id_spot) REFERENCES PARKING_SPOT (id_spot)
);

CREATE TABLE WAITING_LIST (
    id_waiting INT PRIMARY KEY AUTO_INCREMENT,
    position INT NOT NULL,
    request_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    id_user INT NOT NULL UNIQUE,
    FOREIGN KEY (id_user) REFERENCES USER(id_user)

);
