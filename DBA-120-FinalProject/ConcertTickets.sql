-- create the database
DROP DATABASE IF EXISTS ConcertTickets;
CREATE DATABASE ConcertTickets;

CREATE TABLE `Customer` (
  `Customer_ID` int,
  `customer_name` varchar(255),
  `address` varchar(255),
  `zip` varchar(5),
  `phone` varchar(10),
  PRIMARY KEY (`Customer_ID`)
);

INSERT INTO `Customer` (`Customer_id`, `customer_name`, `address`, `zip`, `phone`) VALUES
(1, 'Gwendolyn Moran', '133 South Street Elkin, NC', '28621','3368353567'),
(2, 'Bob Smith', '243 Elk Spur Street Elkin, NC', '28621','3368356958'),
(3, 'Robert Weir', '1689 North Bridge Street Elkin, NC', '28621','3368357852'),
(4, 'John Marsh', '1483 North Bridge Street Elkin, NC', '28621','3368358291'),
(5, 'Randy Scovel', '297 Harris Avenue Elkin, NC', '28621','3368357432');


CREATE TABLE `Sales Agent` (
  `agent_id` int,
  `agent_name` varchar(255),
  `ticket_id` int,
  PRIMARY KEY (`agent_id`)
);

INSERT INTO `Sales Agent` (`agent_id`, `agent_name`, `ticket_id`) VALUES
(1, 'Gwendolyn Moran', 48),
(2, 'Xander Wagner', 69),
(3, 'Ivory Rojas', 83),
(4, 'Cadman Leblanc', 77),
(5, 'Yoshi Burke', 89);

CREATE TABLE `Concert` (
  `ticket_order_number` int,
  `customer_id` int,
  `customer_name` varchar(255),
  `band_name` varchar(255),
  `ticket_id` int,
  PRIMARY KEY (`ticket_order_number`),
  FOREIGN KEY (`customer_id`) REFERENCES `Customer`(`Customer_ID`)
);

INSERT INTO `Concert` (`ticket_order_number`, `customer_id`, `customer_name`, `band_name`, `ticket_id`) VALUES
(1, 1, 'Rob Lowe', 'Rush', 01),
(2, 2, 'Adam Smith', 'Widespread Panic', 02),
(3, 3, 'Paul Gaither', 'Primus', 03);

CREATE TABLE `Ticket` (
  `ticket_id` int,
  `quantity` int,
  `ticket_name` varchar(255),
  PRIMARY KEY (`ticket_id`)
);

INSERT INTO `Ticket` (`ticket_id`, `quantity`, `ticket_name`) VALUES
(1, 9, 12),
(2, 11, 13),
(3, 7, 14);


CREATE TABLE `Sales Commision` (
  `sales_commission` int,
  `agent_id` int,
  PRIMARY KEY (`sales_commission`)
);

INSERT INTO `Sales Commision` (`sales_commission`, `agent_id`) VALUES
(1000, 48),
(500, 35),
(100, 42),
(2000, 74),
(3000, 22),
(900, 86),
(6000, 77),
(5000, 53),
(700, 84),
(200, 99);

