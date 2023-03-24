CREATE TABLE category (
    category_id VARCHAR,
    category VARCHAR,
    PRIMARY KEY (category_id)
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(30) NOT NULL,
    subcategory VARCHAR(30) NOT NULL,
    PRIMARY KEY (subcategory_id)
);

CREATE TABLE contacts (
    contact_id INTEGER,
    first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30),
	email VARCHAR,
    PRIMARY KEY (contact_id)
);

CREATE TABLE campaign (
    cf_id INTEGER,
    contact_id INTEGER REFERENCES contacts(contact_id),
	company_name VARCHAR,
	description VARCHAR,
	goal DECIMAL,
	pledged DECIMAL,
	outcome VARCHAR,
	backers_count INTEGER,
	country VARCHAR,
	currency VARCHAR,
	launched_date DATE,
	end_date DATE,
	category_id VARCHAR REFERENCES category(category_id),
	subcategory_id VARCHAR REFERENCES subcategory(subcategory_id),
    PRIMARY KEY (cf_id)
);