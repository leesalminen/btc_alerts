-- Postgresql
create table prices (
	id bigserial primary key,
	rate decimal(10,2) not null,
	timestamp timestamp with time zone default now(),
	source varchar(50) not null
);