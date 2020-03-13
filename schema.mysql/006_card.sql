CREATE TABLE account_card (
  id            BIGINT        NOT NULL AUTO_INCREMENT,
  code          VARCHAR(255)  NOT NULL,
  amount        DECIMAL(10,2) NOT NULL DEFAULT 0,
  kind          TINYINT       NOT NULL DEFAULT 0,
  bank_id       BIGINT        NOT NULL,
  account_id    BIGINT        NOT NULL,
  create_date   TIMESTAMP     NOT NULL DEFAULT '0000-00-00 00:00:00',
  update_date   TIMESTAMP     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  FOREIGN KEY (account_id)  REFERENCES account (id) ON DELETE CASCADE,
  FOREIGN KEY (bank_id)     REFERENCES bank (id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE card_record (
  id            BIGINT        NOT NULL AUTO_INCREMENT,
  amount        DECIMAL(10,2) NOT NULL DEFAULT 0,
  kind          TINYINT       NOT NULL DEFAULT 0,
  card_id       BIGINT        NOT NULL,
  record_date   TIMESTAMP              DEFAULT '0000-00-00 00:00:00',
  create_date   TIMESTAMP     NOT NULL DEFAULT '0000-00-00 00:00:00',
  update_date   TIMESTAMP     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  FOREIGN KEY (card_id)     REFERENCES account_card (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
