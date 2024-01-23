-- Start writing code here
-- Ex.1
create table users(
	user_id int primary key GENERATED ALWAYS AS IDENTITY,
	username VARCHAR(255) not null unique,
	email VARCHAR(255) not null unique,
	password VARCHAR(255) not null,
	created_at timestamptz default current_date not null unique
)

-- Ex.2
create table products(
	product_id int primary key GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(255) not null,
	description TEXT,
	price NUMERIC(10,2) not null, 
	created_at TIMESTAMPTZ default current_date not null unique
)

-- Ex.3
create table categories(
	category_id INT primary key GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(255) not null unique,
	created_at TIMESTAMPTZ default current_date unique
)

-- EX.4
create table product_categories(
	product_category_id INT primary key GENERATED ALWAYS AS IDENTITY,
	product_id INT REFERENCES products(product_id) ON DELETE CASCADE,
	category_id INT REFERENCES categories(category_id) ON DELETE CASCADE
)