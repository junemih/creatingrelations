CREATE TABLE timeslots (
  id INTEGER PRIMARY KEY NOT NULL,
  start_time TIME,
  end_time TIME
);

INSERT INTO timeslots (start_time, end_time)
VALUES
  ('08:30:00', '10:20:00'),
  ('10:30:00', '11:20:00');


DROP TABLE rooms;
CREATE TABLE rooms (
  id INTEGER PRIMARY KEY NOT NULL,
  number INTEGER,
  buildingid INTEGER,
  seating INTEGER,
  FOREIGN KEY(buildingid) REFERENCES buildings(id)
);

CREATE TABLE schedule (
  id INTEGER PRIMARY KEY NOT NULL,
  coursecode VARCHAR(5),
  roomid INT,
  timeslotid INT,
  FOREIGN KEY (roomid) REFERENCES rooms(id),
  FOREIGN KEY (timeslotid) REFERENCES timeslots(id),
  CONSTRAINT time_slot UNIQUE (roomid, timeslotid)
);

INSERT INTO schedule (coursecode, roomid, timeslotid)
VALUES
  ('INFO 330A', 1, 1),
  ('INFO 314', 2, 2);