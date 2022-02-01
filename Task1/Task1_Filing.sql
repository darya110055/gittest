INSERT INTO `customer` (`Id`, `NameCustomer`, `Address`, `Phone`) VALUES
	(1, 'dfsdf', 'fdf', 4535434),
	(2, 'df', 'dfd', 1654123),
	(3, 'dfdf', 'dfdsf', 543434),
	(4, 'fdsf', 'fdsf', 54345);

INSERT INTO `product` (`CodeProduct`, `NameProduct`, `PriceProduct`) VALUES
	(1, 'A', 4.45),
	(2, 'B', 4.45),
	(3, 'C', 4.45);

INSERT INTO `order` (`CodeOrder`, `IdCustomer`, `№Treaty`, `DateTreaty`, `CodeProduct`, `ScheduledDelivery`) VALUES
	(1, 3, 543, '2022-02-01', 2, 544),
	(2, 1, 453, '2022-02-01', 2, 546),
	(3, 1, 434, '2022-02-01', 1, 453),
	(4, 1, 4534, '2022-02-01', 3, 4354),
	(5, 2, 445, '2022-02-01', 1, 438);

INSERT INTO `shipment` (`CodeShipment`, `Date`) VALUES
	(1, '2022-02-01'),
	(2, '2022-02-01'),
	(3, '2022-02-01'),
	(4, '2022-02-01');

INSERT INTO `shipment_content` (`ShipmentCode`, `OrderCode`, `Number`) VALUES
	(2, 2, 15),
	(2, 4, 15),
	(4, 3, 15);

