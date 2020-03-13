CREATE TABLE bill_record (
  id            BIGINT        NOT NULL AUTO_INCREMENT,
  description   TEXT                   DEFAULT NULL,
  category_id   BIGINT        NOT NULL,
  account_id    BIGINT        NOT NULL,
  record_id     BIGINT        NOT NULL,
  create_date   TIMESTAMP      NOT NULL DEFAULT '0000-00-00 00:00:00',
  update_date   TIMESTAMP      NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  FOREIGN KEY (account_id)  REFERENCES account (id),
  FOREIGN KEY (category_id) REFERENCES category (id),
  FOREIGN KEY (record_id)   REFERENCES card_record (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;