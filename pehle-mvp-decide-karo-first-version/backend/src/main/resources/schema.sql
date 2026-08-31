CREATE DATABASE IF NOT EXISTS hostel_lost_found;
USE hostel_lost_found;

CREATE TABLE IF NOT EXISTS users (
 id BIGINT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(100) NOT NULL, email VARCHAR(150) NOT NULL UNIQUE,
 password VARCHAR(255) NOT NULL, role ENUM('STUDENT','ADMIN') NOT NULL DEFAULT 'STUDENT'
);
CREATE TABLE IF NOT EXISTS items (
 id BIGINT PRIMARY KEY AUTO_INCREMENT, title VARCHAR(160) NOT NULL, description TEXT NOT NULL, category VARCHAR(60) NOT NULL,
 image_url VARCHAR(1000), location VARCHAR(255) NOT NULL, date DATETIME NOT NULL, type ENUM('LOST','FOUND') NOT NULL,
 status ENUM('PENDING','OPEN','CLAIMED','RETURNED','REJECTED') NOT NULL DEFAULT 'PENDING', user_id BIGINT NOT NULL,
 CONSTRAINT fk_items_user FOREIGN KEY (user_id) REFERENCES users(id)
);
CREATE TABLE IF NOT EXISTS claims (
 id BIGINT PRIMARY KEY AUTO_INCREMENT, item_id BIGINT NOT NULL, claimant_id BIGINT NOT NULL, proof_or_message TEXT NOT NULL,
 status ENUM('PENDING','APPROVED','REJECTED') NOT NULL DEFAULT 'PENDING',
 CONSTRAINT fk_claims_item FOREIGN KEY (item_id) REFERENCES items(id), CONSTRAINT fk_claims_user FOREIGN KEY (claimant_id) REFERENCES users(id)
);

INSERT IGNORE INTO users (id,name,email,password,role) VALUES (1,'Hostel Admin','admin@hostel.edu','replace-with-a-hash','ADMIN'),(2,'Demo Student','student@hostel.edu','replace-with-a-hash','STUDENT');
