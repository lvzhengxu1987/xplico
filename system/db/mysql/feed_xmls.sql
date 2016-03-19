--
-- Tabella delle tranzazioni web
--
CREATE TABLE IF NOT EXISTS feed_xmls (
  id INTEGER NOT NULL AUTO_INCREMENT,
  sol_id INTEGER NOT NULL,
  pol_id INTEGER NOT NULL,
  source_id INTEGER NOT NULL,
  feed_id INTEGER NOT NULL REFERENCES feeds(id) ON DELETE CASCADE,
  web_id INTEGER DEFAULT -1,
  capture_date TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
  decoding_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  viewed_date TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
  first_visualization_user_id INTEGER,
  flow_info VARCHAR( 255 ) NOT NULL,
  url VARCHAR( 4096 ),
  rs_header VARCHAR( 255 ),
  rs_body VARCHAR( 255 ),
  rs_bd_size INTEGER,
  PRIMARY KEY (id),
  FOREIGN KEY (pol_id) REFERENCES pols(id) ON DELETE CASCADE,
  FOREIGN KEY (sol_id) REFERENCES sols(id) ON DELETE CASCADE,
  FOREIGN KEY (source_id) REFERENCES sources(id) ON DELETE CASCADE
) TYPE = MYISAM ;