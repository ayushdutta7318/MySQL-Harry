-- Foreign key: we use foreign key so that a table does not contain a large number of:
use startersql;
DROP table if exists addresses;

create table addresses(
	id int auto_increment primary key,
    user_id int,
    street varchar(255),
    city varchar(100),
    state varchar(100),
    pincode varchar(10), 
    constraint fk_user foreign key(user_id) references users(id) on delete cascade
    -- user_id in this table will be mapped by id coln in users table
);

INSERT INTO addresses (user_id, street, city, state, pincode) VALUES
(17, '142 Oak Street', 'Portland', 'OR', '97205'),
(4, '38 Maple Avenue', 'Austin', 'TX', '78701'),
(22, '715 Cedar Lane', 'Denver', 'CO', '80203'),
(9, '209 Pine Road', 'Madison', 'WI', '53703'),
(1, '84 Birch Street', 'Phoenix', 'AZ', '85004'),
(13, '563 Elm Avenue', 'Salem', 'OR', '97301'),
(25, '27 Willow Court', 'Raleigh', 'NC', '27601'),
(6, '901 Spruce Drive', 'Boise', 'ID', '83702'),
(19, '316 Cherry Lane', 'Tampa', 'FL', '33602'),
(11, '62 Aspen Road', 'Boulder', 'CO', '80302'),
(3, '448 Walnut Street', 'Columbus', 'OH', '43215'),
(16, '19 Redwood Avenue', 'Sacramento', 'CA', '95814'),
(8, '830 Magnolia Drive', 'Atlanta', 'GA', '30303'),
(24, '155 Sycamore Lane', 'Nashville', 'TN', '37201'),
(5, '704 Poplar Street', 'Omaha', 'NE', '68102'),
(20, '93 Cypress Court', 'Seattle', 'WA', '98104'),
(2, '521 Ash Road', 'Boston', 'MA', '02108'),
(14, '260 Juniper Avenue', 'Minneapolis', 'MN', '55401'),
(23, '77 Chestnut Lane', 'Richmond', 'VA', '23219'),
(7, '612 Hawthorn Street', 'Newark', 'DE', '19711'),
(18, '345 Dogwood Drive', 'Louisville', 'KY', '40202'),
(10, '128 Palm Avenue', 'Orlando', 'FL', '32801'),
(21, '999 Alder Street', 'Eugene', 'OR', '97401'),
(12, '46 Laurel Road', 'Hartford', 'CT', '06103'),
(15, '287 Beech Lane', 'Ann Arbor', 'MI', '48104');