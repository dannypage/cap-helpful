DROP TABLE IF EXISTS leagues;

CREATE TABLE leagues (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    max_contracts INT,
    max_roster INT,
    max_retained INT,
    max_cap_space DECIMAL(10, 2)
);

INSERT INTO leagues (id, name, max_contracts, max_roster, max_retained, max_cap_space)
VALUES (1, 'nhl', 50, 23, 3, 87_000_000);

---

DROP TABLE IF EXISTS teams;

CREATE TABLE teams (
	id INT PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	league_id INT,
	FOREIGN KEY (league_id) REFERENCES leagues (id)
);

INSERT INTO teams
VALUES (1, 'Boston', 1), (2, 'DC', 1), (3, 'Philly', 1), (4, 'Raleigh', 1); 

---

DROP TABLE IF EXISTS players;

CREATE TABLE players (
	id INT PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	position VARCHAR(1) NOT NULL,
	age INT NOT NULL
);

INSERT INTO players 
VALUES
(1, 'John Smith', 'F', 27),
(2, 'Mary Johnson', 'D', 31),
(3, 'Michael Williams', 'G', 35),
(4, 'Jennifer Jones', 'F', 29),
(5, 'James Brown', 'D', 25),
(6, 'Linda Davis', 'G', 33),
(7, 'William Miller', 'F', 26),
(8, 'Elizabeth Wilson', 'D', 30),
(9, 'David Moore', 'G', 34),
(10, 'Susan Taylor', 'F', 28),
(11, 'Joseph Anderson', 'D', 32),
(12, 'Jessica Thomas', 'G', 36),
(13, 'Charles Jackson', 'F', 24),
(14, 'Sarah White', 'D', 38),
(15, 'Thomas Harris', 'G', 37),
(16, 'Karen Martin', 'F', 23),
(17, 'Christopher Thompson', 'D', 27),
(18, 'Nancy Garcia', 'G', 31),
(19, 'Daniel Martinez', 'F', 29),
(20, 'Lisa Robinson', 'D', 35);

DROP TABLE IF EXISTS contracts;

CREATE TABLE contracts (
	id INT PRIMARY KEY,
	player_id int,
	team_id int,
	league_id int,
	per_year decimal(10,2),
	n_years int,
	start_year int,
	end_year int,
	rostered bool,
	foreign key (team_id) references teams (id),
	foreign key (player_id) references players (id),
	foreign key (league_id) references leagues (id)
);

insert into contracts
values (1, 1, 1, 1, 10_000_000, 4, 2023, 2027, true);