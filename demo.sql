CREATE TABLE `users`
(
    `id`       INT PRIMARY KEY AUTO_INCREMENT,
    `username` VARCHAR(255) UNIQUE NOT NULL,
    `email`    VARCHAR(255) UNIQUE NOT NULL,
    `password` VARCHAR(255)        NOT NULL
);

CREATE TABLE `authors`
(
    `id`      INT PRIMARY KEY AUTO_INCREMENT,
    `user_id` INT,
    CONSTRAINT userFk FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
);

ALTER TABLE `authors`
    ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

CREATE TABLE `books`
(
    `id`        INT PRIMARY KEY AUTO_INCREMENT,
    `name`      VARCHAR(255) NOT NULL,
    `author_id` INT
);

CREATE TABLE `authors_books`
(
    `author_id` INT,
    `book_id`   INT,
    CONSTRAINT authorFk FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
    CONSTRAINT bookFk FOREIGN KEY (`book_id`) REFERENCES `books` (`id`)
);



# ALTER TABLE `books` DROP CONSTRAINT books_ibfk_1;
# ALTER TABLE `books` DROP COLUMN `author_id`;

# ALTER TABLE `books`
    #     ADD FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`);
