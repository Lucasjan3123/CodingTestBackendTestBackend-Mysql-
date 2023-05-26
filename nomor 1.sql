
 use user;
create table users(
    -> id INT NOT NULL,
    -> name varchar(50) NOT NULL,
    -> gender ENUM("M","F") NOT NULL,
    -> status ENUM("Aktif","delete") NOT NULL,
    -> PRIMARY KEY(id)
    -> );

 create table hobbies(
    -> id INT NOT NULL,
    -> name varchar(50) NOT NULL,
    -> level INT NOT NULL,
    -> PRIMARY KEY(id)
    -> );

 create table map_user_hobby(
    -> id INT NOT NULL,
    -> id_user INT NOT NULL,
    -> id_hobby INT NOT NULL,
    -> status ENUM("Aktif","Deleted") NOT NULL,
    -> PRIMARY KEY (id),
    -> FOREIGN KEY (id_user) REFERENCES users(id),
    -> FOREIGN KEY (id_hobby) REFERENCES hobbies(id)
    -> );

Create INDEX idx_users_id ON users(id);
 Create INDEX idx_hobby_id ON hobbies(id);
 Create INDEX idx_map_user_hobby_id ON map_user_hobby(id);

