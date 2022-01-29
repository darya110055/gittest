INSERT INTO `customer` (`Id`, `NameCustomer`, `Address`, `Phone`) VALUES
	(2, 'df', 'dfd', 1654123),
	(3, 'dfdf', 'dfdsf', 543434),
	(1, 'dfsdf', 'fdf', 4535434),
	(4, 'fdsf', 'fdsf', 54345);
INSERT INTO `order` (`CodeOrder`, `IdCustomer`, `№Treaty`, `DateTreaty`, `CodeProduct`, `ScheduledDelivery`) VALUES
	(2, 1, 2472, '2022-01-29', 1, 78),
	(3, 3, 786578, '2022-01-29', 2, 783783),
	(4, 4, 78278, '2022-01-29', 1, 7837),
	(1, 3, 257424, '2022-01-29', 3, 2727);
INSERT INTO `product` (`CodeProduct`, `NameProduct`, `PriceProduct`) VALUES
	(1, 'A', 4.45),
	(2, 'B', 54.40),
	(3, 'C', 4.45);
INSERT INTO `shipment` (`CodeShipment`, `CodeOrder`, `Date`, `GoodsShipped`) VALUES
	(2, 1, '2022-01-29', 45234),
	(3, 3, '2022-01-29', 54245),
	(1, 2, '2022-01-29', 5345);
