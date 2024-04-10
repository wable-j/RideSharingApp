USE RideSharingApp
GO

---- SAMPLE RECORDS FOR LOCATIONS TABLE ----

INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('123 Main St', 'Springfield', 'IL', 62704);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('456 Elm St', 'Springfield', 'IL', 62705);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('789 Pine St', 'Springfield', 'IL', 62706);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('1011 Oak St', 'Springfield', 'IL', 62707);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('123 Main St', 'Centerville', 'OH', 45459);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('456 Elm St', 'Centerville', 'OH', 45458);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('789 Pine St', 'Centerville', 'OH', 45457);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('1011 Oak St', 'Centerville', 'OH', 45456);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('123 Main St', 'Gotham', 'NY', 10001);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('456 Elm St', 'Gotham', 'NY', 10002);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('789 Pine St', 'Gotham', 'NY', 10003);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('1011 Oak St', 'Gotham', 'NY', 10004);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('123 Main St', 'Metropolis', 'CA', 90210);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('456 Elm St', 'Metropolis', 'CA', 90211);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('789 Pine St', 'Metropolis', 'CA', 90212);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('1011 Oak St', 'Metropolis', 'CA', 90213);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('123 Main St', 'Smallville', 'KS', 67524);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('456 Elm St', 'Smallville', 'KS', 67525);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('789 Pine St', 'Smallville', 'KS', 67526);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('1011 Oak St', 'Smallville', 'KS', 67527);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('200 Maple Ave', 'Boulder', 'CO', 80302);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('300 Pine St', 'Boulder', 'CO', 80303);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('400 Oak Rd', 'Boulder', 'CO', 80304);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('500 Cedar Blvd', 'Boulder', 'CO', 80305);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('600 Elm St', 'Salem', 'OR', 97301);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('700 Fir St', 'Salem', 'OR', 97302);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('800 Spruce Ln', 'Salem', 'OR', 97303);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('900 Willow Way', 'Salem', 'OR', 97304);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('1000 Birch St', 'Austin', 'TX', 78701);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('1100 Poplar Ave', 'Austin', 'TX', 78702);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('1200 Aspen St', 'Austin', 'TX', 78703);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('1300 Redwood Rd', 'Austin', 'TX', 78704);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('1400 Sequoia Ln', 'Raleigh', 'NC', 27601);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('1500 Magnolia Blvd', 'Raleigh', 'NC', 27602);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('1600 Pinehurst St', 'Raleigh', 'NC', 27603);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('1700 Dogwood Dr', 'Raleigh', 'NC', 27604);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('1800 Peachtree St', 'Atlanta', 'GA', 30301);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('1900 Oakdale Rd', 'Atlanta', 'GA', 30302);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('2000 Maplewood Dr', 'Atlanta', 'GA', 30303);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('2100 Cherry Ln', 'Atlanta', 'GA', 30304);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('2200 Maple Ave', 'Tucson', 'AZ', 85701);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('2300 Pine St', 'Tucson', 'AZ', 85702);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('2400 Oak Rd', 'Tucson', 'AZ', 85703);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('2500 Cedar Blvd', 'Tucson', 'AZ', 85704);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('2600 Elm St', 'Reno', 'NV', 89501);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('2700 Fir St', 'Reno', 'NV', 89502);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('2800 Spruce Ln', 'Reno', 'NV', 89503);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('2900 Willow Way', 'Reno', 'NV', 89504);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('3000 Birch St', 'Madison', 'WI', 53701);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('3100 Poplar Ave', 'Madison', 'WI', 53702);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('3200 Aspen St', 'Madison', 'WI', 53703);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('3300 Redwood Rd', 'Madison', 'WI', 53704);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('3400 Sequoia Ln', 'Charleston', 'SC', 29401);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('3500 Magnolia Blvd', 'Charleston', 'SC', 29402);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('3600 Pinehurst St', 'Charleston', 'SC', 29403);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('3700 Dogwood Dr', 'Charleston', 'SC', 29404);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('3800 Peachtree St', 'Portland', 'OR', 97201);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('3900 Oakdale Rd', 'Portland', 'OR', 97202);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('4000 Maplewood Dr', 'Portland', 'OR', 97203);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('4100 Cherry Ln', 'Portland', 'OR', 97204);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('4200 Sycamore St', 'Minneapolis', 'MN', 55401);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('4300 Redbud Ln', 'Minneapolis', 'MN', 55402);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('4400 Hawthorn Rd', 'Minneapolis', 'MN', 55403);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('4500 Cedar Ave', 'Minneapolis', 'MN', 55404);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('4600 Birch St', 'Mobile', 'AL', 36602);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('4700 Maple Dr', 'Mobile', 'AL', 36603);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('4800 Oak St', 'Mobile', 'AL', 36604);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('4900 Pine Ln', 'Mobile', 'AL', 36605);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('5000 Walnut St', 'Boise', 'ID', 83701);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('5100 Chestnut Ave', 'Boise', 'ID', 83702);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('5200 Spruce Rd', 'Boise', 'ID', 83703);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('5300 Fir St', 'Boise', 'ID', 83704);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('5400 Magnolia St', 'Louisville', 'KY', 40202);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('5500 Poplar Ln', 'Louisville', 'KY', 40203);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('5600 Elm St', 'Louisville', 'KY', 40204);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('5700 Beech Ave', 'Louisville', 'KY', 40205);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('5800 Ash Dr', 'Omaha', 'NE', 68102);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('5900 Maple Rd', 'Omaha', 'NE', 68103);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('6000 Birch Blvd', 'Omaha', 'NE', 68104);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('6100 Cedar St', 'Omaha', 'NE', 68105);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('6200 Sequoia Cir', 'Albuquerque', 'NM', 87101);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('6300 Redwood Rd', 'Albuquerque', 'NM', 87102);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('6400 Cedar Pass', 'Albuquerque', 'NM', 87103);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('6500 Pine View Blvd', 'Albuquerque', 'NM', 87104);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('6600 Maple Ln', 'Boulder', 'CO', 80306);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('6700 Oak Terrace', 'Boulder', 'CO', 80307);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('6800 Birch Way', 'Boulder', 'CO', 80308);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('6900 Elm St', 'Boulder', 'CO', 80309);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('7000 Peachtree Ln', 'Atlanta', 'GA', 30305);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('7100 Oakdale Ct', 'Atlanta', 'GA', 30306);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('7200 Maplewood Pl', 'Atlanta', 'GA', 30307);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('7300 Cherry St', 'Atlanta', 'GA', 30308);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('7400 Sequoia Park', 'Portland', 'OR', 97205);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('7500 Redwood Ave', 'Portland', 'OR', 97206);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('7600 Cedar Ln', 'Portland', 'OR', 97207);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('7700 Pine St', 'Portland', 'OR', 97208);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('7800 Walnut Grove', 'Boise', 'ID', 83705);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('7900 Chestnut Ct', 'Boise', 'ID', 83706);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('8000 Spruce Path', 'Boise', 'ID', 83707);
INSERT INTO LOCATIONS (Street, City, [State], Zipcode) VALUES ('8100 Fir Tree Ave', 'Boise', 'ID', 83708);

---- SAMPLE RECORDS FOR RATE CARD TABLE ----

INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Springfield', 'Springfield', 40, 5, 50);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Springfield', 'Centerville', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Springfield', 'Gotham', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Springfield', 'Metropolis', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Springfield', 'Smallville', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Springfield', 'Boulder', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Springfield', 'Salem', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Springfield', 'Austin', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Springfield', 'Raleigh', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Springfield', 'Atlanta', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Springfield', 'Tucson', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Springfield', 'Reno', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Springfield', 'Madison', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Springfield', 'Charleston', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Springfield', 'Portland', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Springfield', 'Minneapolis', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Springfield', 'Mobile', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Springfield', 'Boise', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Springfield', 'Louisville', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Springfield', 'Omaha', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Springfield', 'Albuquerque', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Centerville', 'Springfield', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Centerville', 'Centerville', 40, 5, 50);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Centerville', 'Gotham', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Centerville', 'Metropolis', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Centerville', 'Smallville', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Centerville', 'Boulder', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Centerville', 'Salem', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Centerville', 'Austin', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Centerville', 'Raleigh', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Centerville', 'Atlanta', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Centerville', 'Tucson', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Centerville', 'Reno', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Centerville', 'Madison', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Centerville', 'Charleston', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Centerville', 'Portland', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Centerville', 'Minneapolis', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Centerville', 'Mobile', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Centerville', 'Boise', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Centerville', 'Louisville', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Centerville', 'Omaha', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Centerville', 'Albuquerque', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Gotham', 'Springfield', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Gotham', 'Centerville', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Gotham', 'Gotham', 40, 10, 50);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Gotham', 'Metropolis', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Gotham', 'Smallville', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Gotham', 'Boulder', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Gotham', 'Salem', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Gotham', 'Austin', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Gotham', 'Raleigh', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Gotham', 'Atlanta', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Gotham', 'Tucson', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Gotham', 'Reno', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Gotham', 'Madison', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Gotham', 'Charleston', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Gotham', 'Portland', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Gotham', 'Minneapolis', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Gotham', 'Mobile', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Gotham', 'Boise', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Gotham', 'Louisville', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Gotham', 'Omaha', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Gotham', 'Albuquerque', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Metropolis', 'Springfield', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Metropolis', 'Centerville', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Metropolis', 'Gotham', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Metropolis', 'Metropolis', 40, 10, 50);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Metropolis', 'Smallville', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Metropolis', 'Boulder', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Metropolis', 'Salem', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Metropolis', 'Austin', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Metropolis', 'Raleigh', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Metropolis', 'Atlanta', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Metropolis', 'Tucson', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Metropolis', 'Reno', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Metropolis', 'Madison', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Metropolis', 'Charleston', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Metropolis', 'Portland', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Metropolis', 'Minneapolis', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Metropolis', 'Mobile', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Metropolis', 'Boise', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Metropolis', 'Louisville', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Metropolis', 'Omaha', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Metropolis', 'Albuquerque', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Smallville', 'Springfield', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Smallville', 'Centerville', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Smallville', 'Gotham', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Smallville', 'Metropolis', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Smallville', 'Smallville', 40, 5, 50);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Smallville', 'Boulder', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Smallville', 'Salem', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Smallville', 'Austin', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Smallville', 'Raleigh', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Smallville', 'Atlanta', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Smallville', 'Tucson', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Smallville', 'Reno', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Smallville', 'Madison', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Smallville', 'Charleston', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Smallville', 'Portland', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Smallville', 'Minneapolis', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Smallville', 'Mobile', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Smallville', 'Boise', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Smallville', 'Louisville', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Smallville', 'Omaha', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Smallville', 'Albuquerque', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boulder', 'Springfield', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boulder', 'Centerville', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boulder', 'Gotham', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boulder', 'Metropolis', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boulder', 'Smallville', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boulder', 'Boulder', 40, 10, 50);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boulder', 'Salem', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boulder', 'Austin', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boulder', 'Raleigh', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boulder', 'Atlanta', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boulder', 'Tucson', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boulder', 'Reno', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boulder', 'Madison', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boulder', 'Charleston', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boulder', 'Portland', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boulder', 'Minneapolis', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boulder', 'Mobile', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boulder', 'Boise', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boulder', 'Louisville', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boulder', 'Omaha', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boulder', 'Albuquerque', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Salem', 'Springfield', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Salem', 'Centerville', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Salem', 'Gotham', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Salem', 'Metropolis', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Salem', 'Smallville', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Salem', 'Boulder', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Salem', 'Salem', 40, 5, 50);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Salem', 'Austin', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Salem', 'Raleigh', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Salem', 'Atlanta', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Salem', 'Tucson', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Salem', 'Reno', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Salem', 'Madison', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Salem', 'Charleston', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Salem', 'Portland', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Salem', 'Minneapolis', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Salem', 'Mobile', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Salem', 'Boise', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Salem', 'Louisville', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Salem', 'Omaha', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Salem', 'Albuquerque', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Austin', 'Springfield', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Austin', 'Centerville', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Austin', 'Gotham', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Austin', 'Metropolis', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Austin', 'Smallville', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Austin', 'Boulder', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Austin', 'Salem', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Austin', 'Austin', 40, 15, 50);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Austin', 'Raleigh', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Austin', 'Atlanta', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Austin', 'Tucson', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Austin', 'Reno', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Austin', 'Madison', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Austin', 'Charleston', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Austin', 'Portland', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Austin', 'Minneapolis', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Austin', 'Mobile', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Austin', 'Boise', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Austin', 'Louisville', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Austin', 'Omaha', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Austin', 'Albuquerque', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Raleigh', 'Springfield', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Raleigh', 'Centerville', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Raleigh', 'Gotham', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Raleigh', 'Metropolis', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Raleigh', 'Smallville', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Raleigh', 'Boulder', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Raleigh', 'Salem', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Raleigh', 'Austin', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Raleigh', 'Raleigh', 40, 15, 50);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Raleigh', 'Atlanta', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Raleigh', 'Tucson', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Raleigh', 'Reno', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Raleigh', 'Madison', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Raleigh', 'Charleston', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Raleigh', 'Portland', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Raleigh', 'Minneapolis', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Raleigh', 'Mobile', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Raleigh', 'Boise', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Raleigh', 'Louisville', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Raleigh', 'Omaha', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Raleigh', 'Albuquerque', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Atlanta', 'Springfield', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Atlanta', 'Centerville', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Atlanta', 'Gotham', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Atlanta', 'Metropolis', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Atlanta', 'Smallville', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Atlanta', 'Boulder', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Atlanta', 'Salem', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Atlanta', 'Austin', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Atlanta', 'Raleigh', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Atlanta', 'Atlanta', 40, 5, 50);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Atlanta', 'Tucson', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Atlanta', 'Reno', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Atlanta', 'Madison', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Atlanta', 'Charleston', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Atlanta', 'Portland', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Atlanta', 'Minneapolis', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Atlanta', 'Mobile', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Atlanta', 'Boise', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Atlanta', 'Louisville', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Atlanta', 'Omaha', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Atlanta', 'Albuquerque', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Tucson', 'Springfield', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Tucson', 'Centerville', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Tucson', 'Gotham', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Tucson', 'Metropolis', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Tucson', 'Smallville', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Tucson', 'Boulder', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Tucson', 'Salem', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Tucson', 'Austin', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Tucson', 'Raleigh', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Tucson', 'Atlanta', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Tucson', 'Tucson', 40, 15, 50);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Tucson', 'Reno', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Tucson', 'Madison', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Tucson', 'Charleston', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Tucson', 'Portland', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Tucson', 'Minneapolis', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Tucson', 'Mobile', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Tucson', 'Boise', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Tucson', 'Louisville', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Tucson', 'Omaha', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Tucson', 'Albuquerque', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Reno', 'Springfield', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Reno', 'Centerville', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Reno', 'Gotham', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Reno', 'Metropolis', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Reno', 'Smallville', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Reno', 'Boulder', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Reno', 'Salem', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Reno', 'Austin', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Reno', 'Raleigh', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Reno', 'Atlanta', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Reno', 'Tucson', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Reno', 'Reno', 40, 10, 50);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Reno', 'Madison', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Reno', 'Charleston', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Reno', 'Portland', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Reno', 'Minneapolis', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Reno', 'Mobile', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Reno', 'Boise', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Reno', 'Louisville', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Reno', 'Omaha', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Reno', 'Albuquerque', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Madison', 'Springfield', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Madison', 'Centerville', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Madison', 'Gotham', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Madison', 'Metropolis', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Madison', 'Smallville', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Madison', 'Boulder', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Madison', 'Salem', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Madison', 'Austin', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Madison', 'Raleigh', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Madison', 'Atlanta', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Madison', 'Tucson', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Madison', 'Reno', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Madison', 'Madison', 40, 15, 50);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Madison', 'Charleston', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Madison', 'Portland', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Madison', 'Minneapolis', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Madison', 'Mobile', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Madison', 'Boise', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Madison', 'Louisville', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Madison', 'Omaha', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Madison', 'Albuquerque', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Charleston', 'Springfield', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Charleston', 'Centerville', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Charleston', 'Gotham', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Charleston', 'Metropolis', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Charleston', 'Smallville', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Charleston', 'Boulder', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Charleston', 'Salem', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Charleston', 'Austin', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Charleston', 'Raleigh', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Charleston', 'Atlanta', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Charleston', 'Tucson', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Charleston', 'Reno', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Charleston', 'Madison', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Charleston', 'Charleston', 40, 5, 50);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Charleston', 'Portland', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Charleston', 'Minneapolis', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Charleston', 'Mobile', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Charleston', 'Boise', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Charleston', 'Louisville', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Charleston', 'Omaha', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Charleston', 'Albuquerque', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Portland', 'Springfield', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Portland', 'Centerville', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Portland', 'Gotham', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Portland', 'Metropolis', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Portland', 'Smallville', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Portland', 'Boulder', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Portland', 'Salem', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Portland', 'Austin', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Portland', 'Raleigh', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Portland', 'Atlanta', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Portland', 'Tucson', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Portland', 'Reno', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Portland', 'Madison', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Portland', 'Charleston', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Portland', 'Portland', 40, 15, 50);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Portland', 'Minneapolis', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Portland', 'Mobile', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Portland', 'Boise', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Portland', 'Louisville', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Portland', 'Omaha', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Portland', 'Albuquerque', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Minneapolis', 'Springfield', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Minneapolis', 'Centerville', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Minneapolis', 'Gotham', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Minneapolis', 'Metropolis', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Minneapolis', 'Smallville', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Minneapolis', 'Boulder', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Minneapolis', 'Salem', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Minneapolis', 'Austin', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Minneapolis', 'Raleigh', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Minneapolis', 'Atlanta', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Minneapolis', 'Tucson', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Minneapolis', 'Reno', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Minneapolis', 'Madison', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Minneapolis', 'Charleston', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Minneapolis', 'Portland', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Minneapolis', 'Minneapolis', 40, 5, 50);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Minneapolis', 'Mobile', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Minneapolis', 'Boise', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Minneapolis', 'Louisville', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Minneapolis', 'Omaha', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Minneapolis', 'Albuquerque', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Mobile', 'Springfield', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Mobile', 'Centerville', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Mobile', 'Gotham', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Mobile', 'Metropolis', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Mobile', 'Smallville', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Mobile', 'Boulder', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Mobile', 'Salem', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Mobile', 'Austin', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Mobile', 'Raleigh', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Mobile', 'Atlanta', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Mobile', 'Tucson', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Mobile', 'Reno', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Mobile', 'Madison', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Mobile', 'Charleston', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Mobile', 'Portland', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Mobile', 'Minneapolis', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Mobile', 'Mobile', 40, 10, 50);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Mobile', 'Boise', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Mobile', 'Louisville', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Mobile', 'Omaha', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Mobile', 'Albuquerque', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boise', 'Springfield', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boise', 'Centerville', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boise', 'Gotham', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boise', 'Metropolis', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boise', 'Smallville', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boise', 'Boulder', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boise', 'Salem', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boise', 'Austin', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boise', 'Raleigh', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boise', 'Atlanta', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boise', 'Tucson', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boise', 'Reno', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boise', 'Madison', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boise', 'Charleston', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boise', 'Portland', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boise', 'Minneapolis', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boise', 'Mobile', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boise', 'Boise', 40, 10, 50);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boise', 'Louisville', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boise', 'Omaha', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Boise', 'Albuquerque', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Louisville', 'Springfield', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Louisville', 'Centerville', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Louisville', 'Gotham', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Louisville', 'Metropolis', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Louisville', 'Smallville', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Louisville', 'Boulder', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Louisville', 'Salem', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Louisville', 'Austin', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Louisville', 'Raleigh', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Louisville', 'Atlanta', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Louisville', 'Tucson', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Louisville', 'Reno', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Louisville', 'Madison', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Louisville', 'Charleston', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Louisville', 'Portland', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Louisville', 'Minneapolis', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Louisville', 'Mobile', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Louisville', 'Boise', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Louisville', 'Louisville', 40, 10, 50);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Louisville', 'Omaha', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Louisville', 'Albuquerque', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Omaha', 'Springfield', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Omaha', 'Centerville', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Omaha', 'Gotham', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Omaha', 'Metropolis', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Omaha', 'Smallville', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Omaha', 'Boulder', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Omaha', 'Salem', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Omaha', 'Austin', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Omaha', 'Raleigh', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Omaha', 'Atlanta', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Omaha', 'Tucson', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Omaha', 'Reno', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Omaha', 'Madison', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Omaha', 'Charleston', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Omaha', 'Portland', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Omaha', 'Minneapolis', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Omaha', 'Mobile', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Omaha', 'Boise', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Omaha', 'Louisville', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Omaha', 'Omaha', 40, 10, 50);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Omaha', 'Albuquerque', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Albuquerque', 'Springfield', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Albuquerque', 'Centerville', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Albuquerque', 'Gotham', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Albuquerque', 'Metropolis', 300, 10, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Albuquerque', 'Smallville', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Albuquerque', 'Boulder', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Albuquerque', 'Salem', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Albuquerque', 'Austin', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Albuquerque', 'Raleigh', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Albuquerque', 'Atlanta', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Albuquerque', 'Tucson', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Albuquerque', 'Reno', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Albuquerque', 'Madison', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Albuquerque', 'Charleston', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Albuquerque', 'Portland', 100, 10, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Albuquerque', 'Minneapolis', 100, 5, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Albuquerque', 'Mobile', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Albuquerque', 'Boise', 300, 15, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Albuquerque', 'Louisville', 100, 15, 70);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Albuquerque', 'Omaha', 300, 5, 80);
INSERT INTO RATECARD (FromCity, ToCity, Rate, DiscountPercentage, CommissionPercentage) VALUES ('Albuquerque', 'Albuquerque', 40, 10, 50);

---- SAMPLE RECORDS FOR CAR TABLE ----

INSERT INTO Car (CarModel, CarType, RegistrationNumber, LicensePlate, Capacity, [Status]) VALUES 
('Toyota Camry', 'Sedan', 'REG201', 'LP2001', 4, 'Available'),
('Ford Focus', 'Hatchback', 'REG202', 'LP2002', 3, 'Available'),
('Honda Accord', 'Sedan', 'REG203', 'LP2003', 4, 'Available'),
('Chevrolet Malibu', 'Sedan', 'REG204', 'LP2004', 4, 'Available'),
('Hyundai Sonata', 'Sedan', 'REG205', 'LP2005', 4, 'Available'),
('Nissan Altima', 'Sedan', 'REG206', 'LP2006', 4, 'Available'),
('Kia Optima', 'Sedan', 'REG207', 'LP2007', 4, 'Available'),
('Subaru Forester', 'MidSize SUV', 'REG208', 'LP2008', 6, 'Available'),
('Mazda CX-5', 'MidSize SUV', 'REG209', 'LP2009', 6, 'Available'),
('Toyota RAV4', 'MidSize SUV', 'REG210', 'LP2010', 6, 'Available'),
('Volkswagen Golf', 'Hatchback', 'REG211', 'LP2011', 3, 'Available'),
('Ford Escape', 'SUV', 'REG212', 'LP2012', 5, 'Available'),
('Honda CR-V', 'SUV', 'REG213', 'LP2013', 5, 'Available'),
('Toyota Highlander', 'MidSize SUV', 'REG214', 'LP2014', 6, 'Available'),
('Audi Q5', 'SUV', 'REG215', 'LP2015', 5, 'Available'),
('Subaru Impreza', 'Hatchback', 'REG216', 'LP2016', 3, 'Available'),
('Chevrolet Trax', 'MidSize SUV', 'REG217', 'LP2017', 6, 'Available'),
('Kia Soul', 'Hatchback', 'REG218', 'LP2018', 3, 'Available'),
('Mazda 3', 'Hatchback', 'REG219', 'LP2019', 3, 'Available'),
('Jeep Cherokee', 'SUV', 'REG220', 'LP2020', 5, 'Available'),
('BMW 320i', 'Sedan', 'REG221', 'LP2021', 4, 'Available'),
('Mercedes A-Class', 'Hatchback', 'REG222', 'LP2022', 5, 'Available'),
('Audi A3', 'Sedan', 'REG223', 'LP2023', 4, 'Available'),
('Volvo XC40', 'SUV', 'REG224', 'LP2024', 5, 'Available'),
('Skoda Fabia', 'Hatchback', 'REG225', 'LP2025', 5, 'Available'),
('Tesla Model S', 'Sedan', 'REG226', 'LP2026', 5, 'Available'),
('Ford Fiesta', 'Hatchback', 'REG227', 'LP2027', 5, 'Available'),
('Chevrolet Bolt', 'Hatchback', 'REG228', 'LP2028', 4, 'Available'),
('Porsche Cayenne', 'SUV', 'REG229', 'LP2029', 5, 'Available'),
('Lexus NX', 'SUV', 'REG230', 'LP2030', 5, 'Available'),
('Hyundai Elantra', 'Sedan', 'REG231', 'LP2031', 4, 'Available'),
('Kia Rio', 'Hatchback', 'REG232', 'LP2032', 5, 'Available'),
('Jeep Compass', 'MidSize SUV', 'REG233', 'LP2033', 5, 'Available'),
('Nissan Sentra', 'Sedan', 'REG234', 'LP2034', 5, 'Available'),
('Mitsubishi Mirage', 'Hatchback', 'REG235', 'LP2035', 4, 'Available'),
('GMC Terrain', 'MidSize SUV', 'REG236', 'LP2036', 5, 'Available'),
('Cadillac XT4', 'SUV', 'REG237', 'LP2037', 5, 'Available'),
('Buick Encore', 'MidSize SUV', 'REG238', 'LP2038', 5, 'Available'),
('Acura RDX', 'SUV', 'REG239', 'LP2039', 5, 'Available'),
('Infiniti QX50', 'MidSize SUV', 'REG240', 'LP2040', 5, 'Available'),
('Chrysler 300', 'Sedan', 'REG241', 'LP2041', 5, 'Available'),
('Dodge Charger', 'Sedan', 'REG242', 'LP2042', 5, 'Available'),
('Honda Civic', 'Sedan', 'REG243', 'LP2043', 5, 'Available'),
('Toyota Corolla', 'Sedan', 'REG244', 'LP2044', 5, 'Available'),
('Kia Forte', 'Sedan', 'REG245', 'LP2045', 5, 'Available'),
('Volkswagen Tiguan', 'SUV', 'REG246', 'LP2046', 5, 'Available'),
('Ford Escape', 'SUV', 'REG247', 'LP2047', 5, 'Available'),
('BMW X3', 'SUV', 'REG248', 'LP2048', 5, 'Available'),
('Mercedes GLA', 'MidSize SUV', 'REG249', 'LP2049', 5, 'Available'),
('Audi Q3', 'SUV', 'REG250', 'LP2050', 5, 'Available'),
('Volvo V60', 'Hatchback', 'REG251', 'LP2051', 5, 'Available'),
('Skoda Kodiaq', 'SUV', 'REG252', 'LP2052', 7, 'Available'),
('Tesla Model X', 'SUV', 'REG253', 'LP2053', 7, 'Available'),
('Ford Mustang Mach-E', 'SUV', 'REG254', 'LP2054', 5, 'Available'),
('Chevrolet Traverse', 'SUV', 'REG255', 'LP2055', 7, 'Available'),
('Porsche Macan', 'SUV', 'REG256', 'LP2056', 5, 'Available'),
('Lexus UX', 'SUV', 'REG257', 'LP2057', 5, 'Available'),
('Hyundai Kona', 'SUV', 'REG258', 'LP2058', 5, 'Available'),
('Kia Seltos', 'SUV', 'REG259', 'LP2059', 5, 'Available'),
('Jeep Grand Cherokee', 'SUV', 'REG260', 'LP2060', 5, 'Available');


---- SAMPLE RECORDS FOR USER TABLE ----

INSERT INTO [USER] (FirstName, LastName, Gender, DOB, Email, PhoneNumber) VALUES 
('Alice', 'Smith', 'Female', '1985-03-15', 'alice.smith@example.com', '555-001-0100'),
('Bob', 'Jones', 'Male', '1983-07-22', 'bob.jones@example.com', '555-001-0101'),
('Carol', 'Williams', 'Female', '1990-11-05', 'carol.williams@example.com', '555-001-0102'),
('David', 'Brown', 'Male', '1992-02-11', 'david.brown@example.com', '555-001-0103'),
('Eve', 'Davis', 'Female', '1988-08-24', 'eve.davis@example.com', '555-001-0104'),
('Frank', 'Miller', 'Male', '1984-05-16', 'frank.miller@example.com', '555-001-0105'),
('Grace', 'Wilson', 'Female', '1991-09-09', 'grace.wilson@example.com', '555-001-0106'),
('Henry', 'Moore', 'Male', '1989-12-30', 'henry.moore@example.com', '555-001-0107'),
('Ivy', 'Taylor', 'Female', '1993-04-17', 'ivy.taylor@example.com', '555-001-0108'),
('Jack', 'Anderson', 'Male', '1987-01-25', 'jack.anderson@example.com', '555-001-0109'),
('Liam', 'Harris', 'Male', '1995-06-19', 'liam.harris@example.com', '555-002-0200'),
('Mia', 'Johnson', 'Female', '1989-08-03', 'mia.johnson@example.com', '555-002-0201'),
('Noah', 'Lee', 'Male', '1982-12-01', 'noah.lee@example.com', '555-002-0202'),
('Olivia', 'White', 'Female', '1993-05-10', 'olivia.white@example.com', '555-002-0203'),
('Ethan', 'Taylor', 'Male', '1988-03-21', 'ethan.taylor@example.com', '555-002-0204'),
('Sophia', 'Brown', 'Female', '1990-01-15', 'sophia.brown@example.com', '555-002-0205'),
('Mason', 'Davis', 'Male', '1996-07-28', 'mason.davis@example.com', '555-002-0206'),
('Emma', 'Martinez', 'Female', '1992-11-24', 'emma.martinez@example.com', '555-002-0207'),
('Lucas', 'Garcia', 'Male', '1985-09-15', 'lucas.garcia@example.com', '555-002-0208'),
('Ava', 'Rodriguez', 'Female', '1994-02-02', 'ava.rodriguez@example.com', '555-002-0209'),
('Julia', 'Roberts', 'Female', '1992-03-13', 'julia.roberts@example.com', '555-100-1001'),
('Nathan', 'Lane', 'Male', '1991-05-27', 'nathan.lane@example.com', '555-100-1002'),
('Oliver', 'Henderson', 'Male', '1989-11-15', 'oliver.henderson@example.com', '555-100-1003'),
('Penelope', 'Cruz', 'Female', '1993-08-19', 'penelope.cruz@example.com', '555-100-1004'),
('Quincy', 'Adams', 'Male', '1988-12-01', 'quincy.adams@example.com', '555-100-1005'),
('Rachel', 'Green', 'Female', '1984-02-23', 'rachel.green@example.com', '555-100-1006'),
('Samuel', 'Jackson', 'Male', '1990-07-09', 'samuel.jackson@example.com', '555-100-1007'),
('Theresa', 'Clark', 'Female', '1995-09-16', 'theresa.clark@example.com', '555-100-1008'),
('Ulysses', 'Grant', 'Male', '1982-04-27', 'ulysses.grant@example.com', '555-100-1009'),
('Vanessa', 'Williams', 'Female', '1996-06-18', 'vanessa.williams@example.com', '555-100-1010'),
('William', 'Turner', 'Male', '1985-01-25', 'william.turner@example.com', '555-100-1011'),
('Xena', 'Warrior', 'Female', '1990-12-12', 'xena.warrior@example.com', '555-100-1012'),
('Yvonne', 'Strahovski', 'Female', '1992-07-30', 'yvonne.strahovski@example.com', '555-100-1013'),
('Zachary', 'Levi', 'Male', '1987-09-29', 'zachary.levi@example.com', '555-100-1014'),
('Alyssa', 'Milano', 'Female', '1980-12-19', 'alyssa.milano@example.com', '555-100-1015'),
('Bruce', 'Wayne', 'Male', '1979-06-11', 'bruce.wayne@example.com', '555-100-1016'),
('Catherine', 'Zeta', 'Female', '1988-09-25', 'catherine.zeta@example.com', '555-100-1017'),
('Dylan', 'Moran', 'Male', '1991-11-03', 'dylan.moran@example.com', '555-100-1018'),
('Eleanor', 'Rigby', 'Female', '1993-05-21', 'eleanor.rigby@example.com', '555-100-1019'),
('Finn', 'Hudson', 'Male', '1992-04-17', 'finn.hudson@example.com', '555-100-1020'),
('Georgia', 'Fox', 'Female', '1989-04-15', 'georgia.fox@example.com', '555-200-2001'),
('Harvey', 'Specter', 'Male', '1987-01-22', 'harvey.specter@example.com', '555-200-2002'),
('Isla', 'Fisher', 'Female', '1991-02-03', 'isla.fisher@example.com', '555-200-2003'),
('Jake', 'Gyllenhaal', 'Male', '1990-03-19', 'jake.gyllenhaal@example.com', '555-200-2004'),
('Keira', 'Knightley', 'Female', '1992-04-26', 'keira.knightley@example.com', '555-200-2005'),
('Liam', 'Neeson', 'Male', '1985-05-07', 'liam.neeson@example.com', '555-200-2006'),
('Mila', 'Kunis', 'Female', '1994-08-14', 'mila.kunis@example.com', '555-200-2007'),
('Nolan', 'Gould', 'Male', '1993-10-28', 'nolan.gould@example.com', '555-200-2008'),
('Olivia', 'Munn', 'Female', '1988-07-03', 'olivia.munn@example.com', '555-200-2009'),
('Patrick', 'Adams', 'Male', '1984-08-27', 'patrick.adams@example.com', '555-200-2010'),
('Quinn', 'Fabray', 'Female', '1995-11-11', 'quinn.fabray@example.com', '555-200-2011'),
('Rupert', 'Grint', 'Male', '1988-09-24', 'rupert.grint@example.com', '555-200-2012'),
('Samantha', 'Bee', 'Female', '1990-10-25', 'samantha.bee@example.com', '555-200-2013'),
('Timothy', 'Olyphant', 'Male', '1985-05-20', 'timothy.olyphant@example.com', '555-200-2014'),
('Uma', 'Thurman', 'Female', '1987-04-29', 'uma.thurman@example.com', '555-200-2015'),
('Victor', 'Garber', 'Male', '1986-03-16', 'victor.garber@example.com', '555-200-2016'),
('Wendy', 'Williams', 'Female', '1991-07-18', 'wendy.williams@example.com', '555-200-2017'),
('Xander', 'Berkeley', 'Male', '1989-08-01', 'xander.berkeley@example.com', '555-200-2018'),
('Yara', 'Shahidi', 'Female', '1994-02-10', 'yara.shahidi@example.com', '555-200-2019'),
('Zoe', 'Saldana', 'Female', '1988-06-19', 'zoe.saldana@example.com', '555-200-2020'),
('Aaron', 'Paul', 'Male', '1983-08-27', 'aaron.paul@example.com', '555-300-3001'),
('Bella', 'Thorne', 'Female', '1992-10-08', 'bella.thorne@example.com', '555-300-3002'),
('Corey', 'Feldman', 'Male', '1987-07-16', 'corey.feldman@example.com', '555-300-3003'),
('Dakota', 'Fanning', 'Female', '1994-02-23', 'dakota.fanning@example.com', '555-300-3004'),
('Elijah', 'Wood', 'Male', '1981-01-28', 'elijah.wood@example.com', '555-300-3005'),
('Felicity', 'Jones', 'Female', '1986-10-17', 'felicity.jones@example.com', '555-300-3006'),
('Grant', 'Gustin', 'Male', '1990-01-14', 'grant.gustin@example.com', '555-300-3007'),
('Halle', 'Berry', 'Female', '1986-08-14', 'halle.berry@example.com', '555-300-3008'),
('Ian', 'Somerhalder', 'Male', '1978-12-08', 'ian.somerhalder@example.com', '555-300-3009'),
('Jessica', 'Alba', 'Female', '1981-04-28', 'jessica.alba@example.com', '555-300-3010'),
('Keanu', 'Reeves', 'Male', '1964-09-02', 'keanu.reeves@example.com', '555-300-3011'),
('Lucy', 'Liu', 'Female', '1968-12-02', 'lucy.liu@example.com', '555-300-3012'),
('Morgan', 'Freeman', 'Male', '1937-06-01', 'morgan.freeman@example.com', '555-300-3013'),
('Natalie', 'Portman', 'Female', '1981-06-09', 'natalie.portman@example.com', '555-300-3014'),
('Orlando', 'Bloom', 'Male', '1977-01-13', 'orlando.bloom@example.com', '555-300-3015'),
('Penelope', 'Keith', 'Female', '1940-04-02', 'penelope.keith@example.com', '555-300-3016'),
('Quentin', 'Tarantino', 'Male', '1963-03-27', 'quentin.tarantino@example.com', '555-300-3017'),
('Rihanna', 'Fenty', 'Female', '1988-02-20', 'rihanna.fenty@example.com', '555-300-3018'),
('Stephen', 'Amell', 'Male', '1981-05-08', 'stephen.amell@example.com', '555-300-3019'),
('Tina', 'Fey', 'Female', '1970-05-18', 'tina.fey@example.com', '555-300-3020'),
('Adam', 'Baker', 'Male', '1992-01-01', 'adam.baker@example.com', '555-300-3021'),
('Brenda', 'Chapman', 'Female', '1993-02-02', 'brenda.chapman@example.com', '555-300-3022'),
('Charles', 'Dunn', 'Male', '1994-03-03', 'charles.dunn@example.com', '555-300-3023'),
('Diana', 'Evans', 'Female', '1995-04-04', 'diana.evans@example.com', '555-300-3024'),
('Edward', 'Fisher', 'Male', '1996-05-05', 'edward.fisher@example.com', '555-300-3025'),
('Fiona', 'Gray', 'Female', '1997-06-06', 'fiona.gray@example.com', '555-300-3026'),
('George', 'Hill', 'Male', '1998-07-07', 'george.hill@example.com', '555-300-3027'),
('Hannah', 'Irvine', 'Female', '1999-08-08', 'hannah.irvine@example.com', '555-300-3028'),
('Ian', 'Johnson', 'Male', '2000-09-09', 'ian.johnson@example.com', '555-300-3029'),
('Julia', 'Klein', 'Female', '2001-10-10', 'julia.klein@example.com', '555-300-3030'),
('Kevin', 'Lloyd', 'Male', '2002-11-11', 'kevin.lloyd@example.com', '555-300-3031'),
('Laura', 'Mason', 'Female', '2003-12-12', 'laura.mason@example.com', '555-300-3032'),
('Michael', 'Norton', 'Male', '2004-01-13', 'michael.norton@example.com', '555-300-3033'),
('Nina', 'Owens', 'Female', '2005-02-14', 'nina.owens@example.com', '555-300-3034'),
('Oscar', 'Peters', 'Male', '2006-03-15', 'oscar.peters@example.com', '555-300-3035'),
('Paula', 'Quinn', 'Female', '2007-04-16', 'paula.quinn@example.com', '555-300-3036'),
('Quincy', 'Reed', 'Male', '2008-05-17', 'quincy.reed@example.com', '555-300-3037'),
('Rachel', 'Stone', 'Female', '2009-06-18', 'rachel.stone@example.com', '555-300-3038'),
('Steven', 'Taylor', 'Male', '2010-07-19', 'steven.taylor@example.com', '555-300-3039'),
('Tina', 'Underwood', 'Female', '2011-08-20', 'tina.underwood@example.com', '555-300-3040'),
('Uriah', 'Vance', 'Male', '2012-09-21', 'uriah.vance@example.com', '555-300-3041'),
('Vera', 'Wells', 'Female', '2013-10-22', 'vera.wells@example.com', '555-300-3042'),
('Walter', 'Xu', 'Male', '2014-11-23', 'walter.xu@example.com', '555-300-3043'),
('Xena', 'Young', 'Female', '2015-12-24', 'xena.young@example.com', '555-300-3044'),
('Yosef', 'Zane', 'Male', '2016-01-25', 'yosef.zane@example.com', '555-300-3045'),
('Zara', 'Alberts', 'Female', '2017-02-26', 'zara.alberts@example.com', '555-300-3046'),
('Alan', 'Bennett', 'Male', '2018-03-27', 'alan.bennett@example.com', '555-300-3047'),
('Bethany', 'Carter', 'Female', '2019-04-28', 'bethany.carter@example.com', '555-300-3048'),
('Caleb', 'Drake', 'Male', '2020-05-29', 'caleb.drake@example.com', '555-300-3049'),
('Debra', 'Ellis', 'Female', '2021-06-30', 'debra.ellis@example.com', '555-300-3050'),
('Evan', 'Floyd', 'Male', '2022-07-01', 'evan.floyd@example.com', '555-300-3051'),
('Faith', 'Gibson', 'Female', '2023-08-02', 'faith.gibson@example.com', '555-300-3052'),
('Grant', 'Harper', 'Male', '2024-09-03', 'grant.harper@example.com', '555-300-3053'),
('Heidi', 'Irwin', 'Female', '2025-10-04', 'heidi.irwin@example.com', '555-300-3054'),
('Isaac', 'Jennings', 'Male', '2026-11-05', 'isaac.jennings@example.com', '555-300-3055'),
('Jenna', 'Knox', 'Female', '2027-12-06', 'jenna.knox@example.com', '555-300-3056'),
('Kyle', 'Lawson', 'Male', '2028-01-07', 'kyle.lawson@example.com', '555-300-3057'),
('Lila', 'Marshall', 'Female', '2029-02-08', 'lila.marshall@example.com', '555-300-3058'),
('Miles', 'Nolan', 'Male', '2030-03-09', 'miles.nolan@example.com', '555-300-3059'),
('Nora', 'Olsen', 'Female', '2031-04-10', 'nora.olsen@example.com', '555-300-3060');



-- SELECT * FROM [USER]

---- SAMPLE RECORDS FOR DRIVER TABLE ----

INSERT INTO Driver (UserID, CarID, LicenseNumber, Rating) VALUES 
(200, 100, 'DL200', 4.2),
(201, 101, 'DL201', 4.8),
(202, 102, 'DL202', 4.7),
(203, 103, 'DL203', 4.5),
(204, 104, 'DL204', 4.6),
(205, 105, 'DL205', 4.4),
(206, 106, 'DL206', 4.3),
(207, 107, 'DL207', 4.9),
(208, 108, 'DL208', 4.1),
(209, 109, 'DL209', 4.0),
(260, 160, 'DL260', 4.5),
(262, 162, 'DL262', 4.4),
(264, 164, 'DL264', 4.6),
(266, 166, 'DL266', 4.7),
(268, 168, 'DL268', 4.3),
(270, 170, 'DL270', 4.8),
(272, 172, 'DL272', 4.2),
(274, 174, 'DL274', 4.9),
(276, 176, 'DL276', 4.1),
(278, 178, 'DL278', 4.5),
(280, 180, 'DL280', 4.4),
(282, 182, 'DL282', 4.3),
(284, 184, 'DL284', 4.8),
(286, 186, 'DL286', 4.7),
(288, 188, 'DL288', 4.5),
(290, 190, 'DL290', 4.6),
(292, 192, 'DL292', 4.4),
(294, 194, 'DL294', 4.2),
(296, 196, 'DL296', 4.9),
(298, 198, 'DL298', 4.1),
(221, 201, 'DL401', 4.5),
(223, 203, 'DL403', 4.7),
(225, 205, 'DL405', 4.8),
(227, 207, 'DL407', 4.6),
(229, 209, 'DL409', 4.4),
(231, 211, 'DL411', 4.5),
(233, 213, 'DL413', 4.7),
(235, 215, 'DL415', 4.8),
(237, 217, 'DL417', 4.6),
(239, 219, 'DL419', 4.4),
(241, 221, 'DL421', 4.5),
(243, 223, 'DL423', 4.7),
(245, 225, 'DL425', 4.8),
(247, 227, 'DL427', 4.6),
(249, 229, 'DL429', 4.4),
(251, 231, 'DL431', 4.5),
(253, 233, 'DL433', 4.7),
(255, 235, 'DL435', 4.8),
(257, 237, 'DL437', 4.6),
(259, 239, 'DL439', 4.4);




-- SELECT * FROM DRIVER

---- SAMPLE RECORDS FOR PASSENGER TABLE ----

INSERT INTO Passenger (UserID, PassengerRating) VALUES 
(210, 4.9),
(211, 4.8),
(212, 4.7),
(213, 4.6),
(214, 4.5),
(215, 4.4),
(216, 4.3),
(217, 4.2),
(218, 4.1),
(219, 4.0),
(220, 4.8),
(222, 4.7),
(224, 4.9),
(226, 4.6),
(228, 4.5),
(230, 4.7),
(232, 4.8),
(234, 4.6),
(236, 4.4),
(238, 4.3),
(240, 4.5),
(242, 4.7),
(244, 4.8),
(246, 4.9),
(248, 4.5),
(250, 4.3),
(252, 4.6),
(254, 4.7),
(256, 4.8),
(258, 4.4),
(241, 4.9),
(243, 4.8),
(245, 4.7),
(247, 4.6),
(249, 4.5),
(251, 4.4),
(253, 4.3),
(255, 4.2),
(257, 4.1),
(259, 4.0),
(261, 4.9),
(263, 4.8),
(265, 4.7),
(267, 4.6),
(269, 4.5),
(271, 4.4),
(273, 4.3),
(275, 4.2),
(277, 4.1),
(279, 4.0);



---- SAMPLE RECORDS FOR TRIP TABLE ----

INSERT INTO Trip (DriverID, TripType, [Date], TripStatus) VALUES
(301, 'Business', '2023-04-10 10:00:00', 'Completed'),
(300, 'Personal', '2023-04-10 11:00:00', 'Completed'),
(302, 'Business', '2023-04-11 10:00:00', 'Completed'),
(303, 'Personal', '2023-04-11 11:00:00', 'Ongoing'),
(304, 'Personal', '2023-04-12 10:00:00', 'Completed'),
(305, 'Business', '2023-04-12 11:00:00', 'Completed'),
(306, 'Personal', '2023-04-13 10:00:00', 'Ongoing'),
(307, 'Business', '2023-04-13 11:00:00', 'Completed'),
(308, 'Business', '2023-04-14 10:00:00', 'Completed'),
(309, 'Personal', '2023-04-14 11:00:00', 'Completed'),
(310, 'Business', '2023-04-15 10:00:00', 'Completed'),
(311, 'Personal', '2023-04-15 11:00:00', 'Completed'),
(312, 'Business', '2023-04-16 10:00:00', 'Ongoing'),
(313, 'Personal', '2023-04-16 11:00:00', 'Completed'),
(314, 'Business', '2023-04-17 10:00:00', 'Completed'),
(315, 'Personal', '2023-04-17 11:00:00', 'Ongoing'),
(316, 'Business', '2023-04-18 10:00:00', 'Completed'),
(317, 'Personal', '2023-04-18 11:00:00', 'Completed'),
(318, 'Business', '2023-04-19 10:00:00', 'Ongoing'),
(319, 'Personal', '2023-04-19 11:00:00', 'Completed'),
(320, 'Business', '2023-04-20 10:00:00', 'Completed'),
(321, 'Personal', '2023-04-20 11:00:00', 'Ongoing'),
(322, 'Business', '2023-04-21 10:00:00', 'Completed'),
(323, 'Personal', '2023-04-21 11:00:00', 'Completed'),
(324, 'Business', '2023-04-22 10:00:00', 'Ongoing'),
(325, 'Personal', '2023-04-22 11:00:00', 'Completed'),
(326, 'Business', '2023-04-23 10:00:00', 'Completed'),
(327, 'Personal', '2023-04-23 11:00:00', 'Ongoing'),
(328, 'Business', '2023-04-24 10:00:00', 'Completed'),
(329, 'Personal', '2023-04-24 11:00:00', 'Completed'),
(330, 'Business', '2023-04-25 10:00:00', 'Ongoing'),
(331, 'Personal', '2023-04-25 11:00:00', 'Completed'),
(332, 'Business', '2023-04-26 10:00:00', 'Completed'),
(333, 'Personal', '2023-04-26 11:00:00', 'Ongoing'),
(334, 'Business', '2023-04-27 10:00:00', 'Completed'),
(335, 'Personal', '2023-04-27 11:00:00', 'Completed'),
(336, 'Business', '2023-04-28 10:00:00', 'Ongoing'),
(337, 'Personal', '2023-04-28 11:00:00', 'Completed'),
(338, 'Business', '2023-04-29 10:00:00', 'Completed'),
(339, 'Personal', '2023-04-29 11:00:00', 'Ongoing'),
(340, 'Business', '2023-04-30 10:00:00', 'Completed'),
(341, 'Personal', '2023-04-30 11:00:00', 'Completed'),
(342, 'Business', '2023-05-01 10:00:00', 'Ongoing'),
(343, 'Personal', '2023-05-01 11:00:00', 'Completed'),
(344, 'Business', '2023-05-02 10:00:00', 'Completed'),
(345, 'Personal', '2023-05-02 11:00:00', 'Ongoing'),
(346, 'Business', '2023-05-03 10:00:00', 'Completed'),
(347, 'Personal', '2023-05-03 11:00:00', 'Completed'),
(348, 'Business', '2023-05-04 10:00:00', 'Ongoing'),
(349, 'Personal', '2023-05-04 11:00:00', 'Completed'),
(350, 'Business', '2023-05-05 10:00:00', 'Completed'),
(351, 'Personal', '2023-05-05 11:00:00', 'Ongoing'),
(352, 'Business', '2023-05-06 10:00:00', 'Completed'),
(353, 'Personal', '2023-05-06 11:00:00', 'Completed'),
(354, 'Business', '2023-05-07 10:00:00', 'Ongoing'),
(355, 'Personal', '2023-05-07 11:00:00', 'Completed'),
(356, 'Business', '2023-05-08 10:00:00', 'Completed'),
(357, 'Personal', '2023-05-08 11:00:00', 'Ongoing'),
(358, 'Business', '2023-05-09 10:00:00', 'Completed'),
(359, 'Personal', '2023-05-09 11:00:00', 'Completed');


-- SELECT * FROM TRIP
---- SAMPLE RECORDS FOR DRIVER BILLING TABLE ----

INSERT INTO DriverBilling (TripID, BillAmount) VALUES 
(500, 0),
(501, 0),
(502, 0),
(503, 0),
(504, 0),
(505, 0),
(506, 0),
(507, 0),
(508, 0),
(509, 0),
INSERT INTO DriverBilling (TripID, BillAmount) VALUES 
(510, 0),
(511, 0),
(512, 0),
(513, 0),
(514, 0),
(515, 0),
(516, 0),
(517, 0),
(518, 0),
(519, 0),
(520, 0),
(521, 0),
(522, 0),
(523, 0),
(524, 0),
(525, 0),
(526, 0),
(527, 0),
(528, 0),
(529, 0),
(530, 0),
(531, 0),
(532, 0),
(533, 0),
(534, 0),
(535, 0),
(536, 0),
(537, 0),
(538, 0),
(539, 0),
(540, 0),
(541, 0),
(542, 0),
(543, 0),
(544, 0),
(545, 0),
(546, 0),
(547, 0),
(548, 0),
(549, 0),
(550, 0),
(551, 0),
(552, 0),
(553, 0),
(554, 0),
(555, 0),
(556, 0),
(557, 0),
(558, 0),
(559, 0);

-- SELECT * FROM DRIVERBILLING
-- DELETE FROM DRIVERBILLING

---- SAMPLE RECORDS FOR BILLING TABLE ----

INSERT INTO Billing (BillAmount, DiscountAmount, ChargedAmount, PaymentMethod, CreditCardNumber) VALUES 
(120.00, 5.00, 115.00, 'Credit Card', '4111111111111111'),
(200.00, 10.00, 190.00, 'Debit Card', '5500000000000004'),
(150.00, 7.50, 142.50, 'Credit Card', '340000000000009'),
(180.00, 9.00, 171.00, 'Cash', NULL),
(100.00, 5.00, 95.00, 'Cash', NULL),
(220.00, 11.00, 209.00, 'Credit Card', '5500000000000005'),
(130.00, 6.50, 123.50, 'Debit Card', '340000000000010'),
(210.00, 10.50, 199.50, 'Credit Card', '6011000000000005'),
(160.00, 8.00, 152.00, 'Debit Card', '4111111111111113'),
(190.00, 9.50, 180.50, 'Credit Card', '5500000000000006'),
INSERT INTO Billing (BillAmount, DiscountAmount, ChargedAmount, PaymentMethod, CreditCardNumber) VALUES 
(125.00, 5.25, 119.75, 'Credit Card', '4111111111111121'),
(205.00, 10.25, 194.75, 'Debit Card', '5500000000000024'),
(155.00, 7.75, 147.25, 'Credit Card', '340000000000019'),
(185.00, 9.25, 175.75, 'Cash', NULL),
(105.00, 5.25, 99.75, 'Cash', NULL),
(225.00, 11.25, 213.75, 'Credit Card', '5500000000000025'),
(135.00, 6.75, 128.25, 'Debit Card', '340000000000020'),
(215.00, 10.75, 204.25, 'Credit Card', '6011000000000015'),
(165.00, 8.25, 156.75, 'Debit Card', '4111111111111123'),
(195.00, 9.75, 185.25, 'Credit Card', '5500000000000026'),
(120.00, 5.00, 115.00, 'Debit Card', '4111111111111127'),
(200.00, 0.00, 200.00, 'Cash', NULL),
(180.00, 18.00, 162.00, 'Credit Card', '340000000000021'),
(190.00, 0.00, 190.00, 'Debit Card', '6011000000000016'),
(100.00, 10.00, 90.00, 'Cash', NULL),
(220.00, 22.00, 198.00, 'Credit Card', '4111111111111131'),
(140.00, 7.00, 133.00, 'Debit Card', '5500000000000034'),
(160.00, 8.00, 152.00, 'Credit Card', '340000000000022'),
(130.00, 0.00, 130.00, 'Cash', NULL),
(210.00, 10.50, 199.50, 'Debit Card', '4111111111111135'),
(170.00, 8.50, 161.50, 'Credit Card', '6011000000000025'),
(195.00, 19.50, 175.50, 'Debit Card', '5500000000000046'),
(120.00, 6.00, 114.00, 'Cash', NULL),
(200.00, 10.00, 190.00, 'Credit Card', '4111111111111141'),
(150.00, 15.00, 135.00, 'Debit Card', '340000000000023'),
(180.00, 9.00, 171.00, 'Credit Card', '6011000000000035'),
(190.00, 0.00, 190.00, 'Cash', NULL),
(100.00, 5.00, 95.00, 'Debit Card', '4111111111111151'),
(220.00, 11.00, 209.00, 'Credit Card', '5500000000000056'),
(130.00, 6.50, 123.50, 'Cash', NULL),
(210.00, 0.00, 210.00, 'Debit Card', '340000000000024'),
(160.00, 16.00, 144.00, 'Credit Card', '4111111111111161'),
(190.00, 9.50, 180.50, 'Debit Card', '6011000000000045'),
(125.00, 12.50, 112.50, 'Cash', NULL),
(205.00, 20.50, 184.50, 'Credit Card', '5500000000000064'),
(155.00, 0.00, 155.00, 'Debit Card', '340000000000025'),
(185.00, 18.50, 166.50, 'Credit Card', '4111111111111171'),
(105.00, 10.50, 94.50, 'Cash', NULL),
(225.00, 0.00, 225.00, 'Debit Card', '6011000000000055'),
(135.00, 13.50, 121.50, 'Credit Card', '5500000000000072'),
(215.00, 21.50, 193.50, 'Debit Card', '4111111111111181'),
(165.00, 16.50, 148.50, 'Cash', NULL),
(195.00, 9.75, 185.25, 'Credit Card', '340000000000026'),
(120.00, 12.00, 108.00, 'Debit Card', '6011000000000065'),
(200.00, 10.00, 190.00, 'Credit Card', '4111111111111191'),
(180.00, 0.00, 180.00, 'Cash', NULL),
(190.00, 19.00, 171.00, 'Debit Card', '5500000000000080');


SELECT * FROM BILLING
---- SAMPLE RECORDS FOR PASSENGER TRIPS TABLE ----

INSERT INTO PassengerTrips (PassengerID, TripID, BillingID, StartLocationID, DropLocationID) VALUES 
(400, 500, 700, 1, 2),
(401, 501, 701, 3, 4),
(402, 502, 702, 5, 6),
(403, 503, 703, 7, 8),
(404, 504, 704, 9, 10),
(405, 505, 705, 11, 12),
(406, 506, 706, 13, 14),
(407, 507, 707, 15, 16),
(408, 508, 708, 17, 18),
(409, 509, 709, 19, 20),
(400, 500, 700, 1, 20),
(401, 501, 701, 3, 30),
(402, 502, 702, 5, 40),
(403, 503, 703, 7, 20),
(404, 504, 704, 9, 30),
(405, 505, 705, 11, 40),
(406, 506, 706, 13, 20),
(407, 507, 707, 15, 30),
(408, 508, 708, 17, 40),
(409, 509, 709, 19, 20),
(410, 510, 710, 21, 30),
(411, 511, 711, 22, 40),
(412, 512, 712, 23, 20),
(413, 513, 713, 24, 30),
(414, 514, 714, 25, 40),
(415, 515, 715, 26, 20),
(416, 516, 716, 27, 30),
(417, 517, 717, 28, 40),
(418, 518, 718, 29, 20),
(419, 519, 719, 30, 30),
(420, 520, 720, 31, 40),
(421, 521, 721, 32, 20),
(422, 522, 722, 33, 30),
(423, 523, 723, 34, 40),
(424, 524, 724, 35, 20),
(425, 525, 725, 36, 30),
(426, 526, 726, 37, 40),
(427, 527, 727, 38, 20),
(428, 528, 728, 39, 30),
(429, 529, 729, 40, 40),
(430, 530, 730, 1, 30),
(431, 531, 731, 2, 40),
(432, 532, 732, 3, 20),
(433, 533, 733, 4, 30),
(434, 534, 734, 5, 40),
(435, 535, 735, 6, 20),
(436, 536, 736, 7, 30),
(437, 537, 737, 8, 40),
(438, 538, 738, 9, 20),
(439, 539, 739, 10, 30),
(440, 540, 740, 11, 40),
(441, 541, 741, 12, 20),
(442, 542, 742, 13, 30),
(443, 543, 743, 14, 40),
(444, 544, 744, 15, 20),
(445, 545, 745, 16, 30),
(446, 546, 746, 17, 40),
(447, 547, 747, 18, 20),
(448, 548, 748, 19, 30),
(449, 549, 749, 20, 40),
(450, 550, 750, 21, 30),
(451, 551, 751, 22, 40),
(452, 552, 752, 23, 20),
(453, 553, 753, 24, 30),
(454, 554, 754, 25, 40),
(455, 555, 755, 26, 20),
(456, 556, 756, 27, 30),
(457, 557, 757, 28, 40),
(458, 558, 758, 29, 20),
(459, 559, 759, 30, 30);


Select * from PASSENGERTRIPS
---- SAMPLE RECORDS FOR COMPLAINT TABLE ----

INSERT INTO Complaint (PassengerTripID, ComplaintDescription, IsResolved) VALUES 
(800, 'Driver was late', 0),
(801, 'Car was not clean', 0),
(802, 'Air conditioning was not working', 0),
(803, 'Driver was speeding', 0),
(804, 'Music was too loud', 0),
(805, 'Driver took a longer route', 0),
(806, 'Car smelled of smoke', 0),
(807, 'Driver was rude', 0),
(808, 'Driver was talking on the phone', 0),
(809, 'Car had mechanical issues', 0),
INSERT INTO Complaint (PassengerTripID, ComplaintDescription, IsResolved) VALUES 
(810, 'Driver was late', 0),
(811, 'Car was not clean', 0),
(812, 'Air conditioning was not working', 0),
(813, 'Driver was speeding', 0),
(814, 'Music was too loud', 0),
(815, 'Driver took a longer route', 0),
(816, 'Car smelled of smoke', 0),
(817, 'Driver was rude', 0),
(818, 'Driver was talking on the phone', 0),
(819, 'Car had mechanical issues', 0),
(820, 'Driver was late', 0),
(821, 'Car was not clean', 0),
(822, 'Air conditioning was not working', 0),
(823, 'Driver was speeding', 0),
(824, 'Music was too loud', 0),
(825, 'Driver took a longer route', 0),
(826, 'Car smelled of smoke', 0),
(827, 'Driver was rude', 0),
(828, 'Driver was talking on the phone', 0),
(829, 'Car had mechanical issues', 0),
(830, 'Driver was late', 0),
(831, 'Car was not clean', 0),
(832, 'Air conditioning was not working', 0),
(833, 'Driver was speeding', 0),
(834, 'Music was too loud', 0),
(835, 'Driver took a longer route', 0),
(836, 'Car smelled of smoke', 0),
(837, 'Driver was rude', 0),
(838, 'Driver was talking on the phone', 0),
(839, 'Car had mechanical issues', 0),
(840, 'Driver was late', 0),
(841, 'Car was not clean', 0),
(842, 'Air conditioning was not working', 0),
(843, 'Driver was speeding', 0),
(844, 'Music was too loud', 0),
(845, 'Driver took a longer route', 0),
(846, 'Car smelled of smoke', 0),
(847, 'Driver was rude', 0),
(848, 'Driver was talking on the phone', 0),
(849, 'Car had mechanical issues', 0),
(850, 'Driver was late', 0),
(851, 'Car was not clean', 0),
(852, 'Air conditioning was not working', 0),
(853, 'Driver was speeding', 0),
(854, 'Music was too loud', 0),
(855, 'Driver took a longer route', 0),
(856, 'Car smelled of smoke', 0),
(857, 'Driver was rude', 0),
(858, 'Driver was talking on the phone', 0),
(859, 'Car had mechanical issues', 0);


---- SAMPLE RECORDS FOR SERVICE REQUESTS TABLE ----

INSERT INTO ServiceRequest (ComplaintID, CustomerRepresentative, [Status]) VALUES 
(900, 'Alice Johnson', 'Pending'),
(901, 'Bob Smith', 'Resolved'),
(902, 'Cathy Davis', 'Pending'),
(903, 'David Brown', 'Pending'),
(904, 'Eve Martin', 'Resolved'),
(905, 'Frank Clark', 'Pending'),
(906, 'Grace Lee', 'Resolved'),
(907, 'Henry Wilson', 'Resolved'),
(908, 'Ivy Jones', 'Pending'),
(909, 'Jack White', 'Pending'),
INSERT INTO ServiceRequest (ComplaintID, CustomerRepresentative, [Status]) VALUES 
(910, 'Alice Johnson', 'Pending'),
(911, 'Bob Smith', 'Resolved'),
(912, 'Cathy Davis', 'Pending'),
(913, 'David Brown', 'Pending'),
(914, 'Eve Martin', 'Resolved'),
(915, 'Frank Clark', 'Pending'),
(916, 'Grace Lee', 'Resolved'),
(917, 'Henry Wilson', 'Resolved'),
(918, 'Ivy Jones', 'Pending'),
(919, 'Jack White', 'Pending'),
(920, 'Alice Johnson', 'Pending'),
(921, 'Bob Smith', 'Resolved'),
(922, 'Cathy Davis', 'Pending'),
(923, 'David Brown', 'Pending'),
(924, 'Eve Martin', 'Resolved'),
(925, 'Frank Clark', 'Pending'),
(926, 'Grace Lee', 'Resolved'),
(927, 'Henry Wilson', 'Resolved'),
(928, 'Ivy Jones', 'Pending'),
(929, 'Jack White', 'Pending'),
(930, 'Alice Johnson', 'Pending'),
(931, 'Bob Smith', 'Resolved'),
(932, 'Cathy Davis', 'Pending'),
(933, 'David Brown', 'Pending'),
(934, 'Eve Martin', 'Resolved'),
(935, 'Frank Clark', 'Pending'),
(936, 'Grace Lee', 'Resolved'),
(937, 'Henry Wilson', 'Resolved'),
(938, 'Ivy Jones', 'Pending'),
(939, 'Jack White', 'Pending'),
(940, 'Alice Johnson', 'Pending'),
(941, 'Bob Smith', 'Resolved'),
(942, 'Cathy Davis', 'Pending'),
(943, 'David Brown', 'Pending'),
(944, 'Eve Martin', 'Resolved'),
(945, 'Frank Clark', 'Pending'),
(946, 'Grace Lee', 'Resolved'),
(947, 'Henry Wilson', 'Resolved'),
(948, 'Ivy Jones', 'Pending'),
(949, 'Jack White', 'Pending');



-- DBCC CHECKIDENT ('TRIP', RESEED, 499);
