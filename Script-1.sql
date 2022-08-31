create table if not exists Genres
(id SERIAL primary key,
name varchar(40) not null);

create table if not exists Performers 
(id SERIAL primary key,
name varchar(80) not null);

create table if not exists Albums 
(id SERIAL primary key,
name varchar(80) not null, 
post_year integer not null, 
performer_id INTEGER not null references Performers(id));

create table if not exists Compilations 
(id SERIAL primary key, 
name varchar(80) not null, 
post_year varchar(80));

create table if not exists Tracks 
(id SERIAL primary key, 
name varchar(80) not null, 
duration INTEGER not null, 
album_id INTEGER not null references Albums(id), 
compilation_id INTEGER not null references Compilations(id));

create table if not exists Genre_Performer
(id SERIAL primary key,
name varchar(80) not null,
genre_id INTEGER references Genres(id), 
performer_id INTEGER references Performers(id))

CREATE TABLE IF NOT EXISTS Performer_Album
(id SERIAL PRIMARY KEY,
performer_id integer REFERENCES Performers(id)
album_id integer REFERENCES Albums(id));

CREATE TABLE IF NOT EXISTS Compilation_Track
(id Serial PRIMARY KEY,
compilation_id integer REFERENCES Compilations(id),
track_id integer REFERENCES Tracks(id));
