INSERT INTO `employees` (`CodeEmployees`, `FullName`, `Position`) VALUES
	(1, 'gfhgfh', 'dfgdfg'),
	(2, 'dgdg', 'dfgdfg'),
	(3, 'dfgdf', 'dfgdfg'),
	(4, 'gfdfgjg', 'dfgdfg'),
	(5, 'gfhgkjhgkhgfh', 'dfgdfg');
INSERT INTO `firm` (`CodeFirm`, `NameFirm`) VALUES
	(1, 'dfg');
  INSERT INTO `product` (`CodeProduct`, `NameProduct`, `Firm`, `Model`, `TechnicalSpecifcations`, `WarrantyPeriod`, `Picture`) VALUES
	(1, 'ghgf', 1, 'fg', ';lj;ojopjn', 2, _binary ''),
	(2, 'hghg', 1, 'fg', ';lj;ojopjn', 5, _binary ''),
	(3, 'kmjh', 1, 'fg', ';lj;ojopjn', 8, _binary ''),
	(4, 'wfvv', 1, 'fg', ';lj;ojopjn', 3, _binary '');

INSERT INTO `orders` (`CodeOrder`, `FullNameClient`, `CodeProduct`, `Guarantee`, `Date`) VALUES
	(1, 'JHGv', 3, b'0', '2022-02-10'),
	(2, 'JHGv', 4, b'1', '2022-02-10'),
	(3, 'JHGv', 1, b'0', '2022-02-10');
INSERT INTO `order_fulfillment` (`CodeOrder`, `TypeRepair`, `RepairAmount`, `OrderExecutionDate`, `MessageClient`, `DateReceiptGoods`, `Price`, `CodeEmployee`) VALUES
	(1, 'klh', 568.00, '2022-02-10', b'1', '2022-02-10', 681.00, 2),
	(2, 'klh', 568.00, '2022-02-10', b'1', '2022-02-10', 681.00, 2);
