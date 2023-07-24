CREATE TABLE correct
(
    id   INT          NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

CREATE TABLE wrong
(
    /* Jika terjadi kesalahan pada file sql, maka migration mengalami dirty state */
    /* id   INTSS     NOT NULL AUTO_INCREMENT, */
    id   INT          NOT NULL AUTO_INCREMENT,
    /* name VARCHOORRS(255) NOT NULL, */
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB;