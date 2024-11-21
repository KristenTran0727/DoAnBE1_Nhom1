-- Tạo cơ sở dữ liệu
CREATE DATABASE IF NOT EXISTS DoAnBE1_Nhom1;
USE DoAnBE1_Nhom1;

-- Tạo bảng manufactures
CREATE TABLE IF NOT EXISTS manufactures (
    manu_id INT AUTO_INCREMENT PRIMARY KEY,
    manu_name VARCHAR(100) NOT NULL
);

-- Tạo bảng protypes
CREATE TABLE IF NOT EXISTS protypes (
    type_id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(100) NOT NULL
);

-- Tạo bảng products
CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    manu_id INT NOT NULL,
    type_id INT NOT NULL,
    price INT,
    pro_image VARCHAR(150) NOT NULL,
    description TEXT,
    feature TINYINT(1) DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_manu_id FOREIGN KEY (manu_id) REFERENCES manufactures(manu_id),
    CONSTRAINT fk_type_id FOREIGN KEY (type_id) REFERENCES protypes(type_id)
);
