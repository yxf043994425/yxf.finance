CREATE TABLE bank (
  id          BIGINT        NOT NULL,
  code        VARCHAR(255)  NOT NULL,
  name        VARCHAR(255)  NOT NULL,
  parent_id   BIGINT        NOT NULL DEFAULT 0,
  short_name  VARCHAR(255)           DEFAULT NULL,
  icon        VARCHAR(255)           DEFAULT NULL,
  telephone   VARCHAR(255)           DEFAULT NULL,
  address     VARCHAR(255)           DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY code (code),
  UNIQUE KEY name (name),
  FOREIGN KEY (parent_id)   REFERENCES bank (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
