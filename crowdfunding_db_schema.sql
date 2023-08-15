--create category table
CREATE TABLE category (
	category_id VARCHAR NOT NULL PRIMARY KEY,
	category_name VARCHAR NOT NULL
);

--create subcategory table
CREATE TABLE subcategory (
	subcategory_id VARCHAR NOT NULL PRIMARY KEY,
	subcategory_name VARCHAR NOT NULL
);

--create contact table
CREATE TABLE contacts (
	contact_id INTEGER NOT NULL PRIMARY KEY,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	email VARCHAR NOT NULL
);

--create table for campaign csv
CREATE TABLE campaign (
	cf_id INTEGER NOT NULL PRIMARY KEY,
	contact_id INTEGER NOT NULL,
  	company_name VARCHAR NOT NULL,
	description VARCHAR NOT NULL,
	goal FLOAT(2) NOT NULL,
	pledged FLOAT(2) NOT NULL,
	outcome VARCHAR NOT NULL,
	backers_count INTEGER NOT NULL,
	country VARCHAR NOT NULL,
	currency VARCHAR NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	staff_pick BOOL NOT NULL,
	spotlight BOOL NOT NULL,
	category_id VARCHAR NOT NULL,
	subcategory_id VARCHAR NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

--verify table creation
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;

--verify table data
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;