create table if not exists workers(
	id serial primary key,
	worker_name varchar(100) not null,
	grp integer
);


create table if not exists bosses(
	worker_id integer references workers(id),
	boss_id integer references workers(id),
	constraint bossespk primary key (worker_id, boss_id)
);