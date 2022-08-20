create table IF NOT EXISTS sources(
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 link text unique not null
);

create table IF NOT EXISTS tasks(
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 source_id INTEGER not null,
 statusCode smallint not null,
 created timestamp DEFAULT CURRENT_TIMESTAMP not null,
 body text unique,
 foreign key(source_id) references sources(id) on delete cascade
);

-- Table for storing RSS feed items
create table IF NOT EXISTS items(
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 source_id INTEGER not null,
 task_id INTEGER not null,
 title text not null,
 link text not null,
 description text,
 guid text unique not null,
 pubDate timestamp not null,
 foreign key(source_id) references sources(id) on delete cascade,
 foreign key(task_id) references tasks(id) on delete cascade
);