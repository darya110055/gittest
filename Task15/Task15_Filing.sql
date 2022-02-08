INSERT INTO `firm` (`CodeFirm`, `NameFirm`) VALUES
	(1, 'Philips'),
	(2, 'Bosh'),
	(3, 'Mulinex');
INSERT INTO `internet_sales` (`CodeSales`, `EmailAddress`, `PaymentDelivery`) VALUES
	(1, 'fdgdfgdfgdfgdfgdf', b'0'),
	(2, 'ghfhgfhgfh', b'0'),
	(3, 'fgdgdfjnf', b'1'),
	(4, 'wervxchb', b'1'),
	(5, ',jhgkldf', b'0');
  INSERT INTO `product` (`CodeProduct`, `NameProduct`, `Firm`, `Model`, `TechnicalSpecifcations`, `Price`, `WarrantyPeriod`, `Picture`) VALUES
	(1, 'Chmhb', 2, 'ghgh', 'dgbggn', 156.50, 14, _binary ''),
	(2, 'hgdfhf', 2, 'ghgh', 'dgbggn', 156.50, 45, _binary ''),
	(3, 'V,hj,df', 3, 'ghgh', 'dgbggn', 156.50, 424, _binary ''),
	(4, 'Vxdfg', 1, 'ghgh', 'dgbggn', 156.50, 21, _binary ''),
	(5, 'Wjlbdf', 3, 'ghgh', 'dgbggn', 156.50, 452, _binary ''),
	(6, 'LKnklbvd', 1, 'ghgh', 'dgbggn', 156.50, 42, _binary '');
INSERT INTO `orders` (`CodeOrders`, `CodeSales`, `CodeProduct`, `DateOrder`, `TimeOrder`, `Number`, `FullNameCustomer`, `Phone`, `OrderConfirmation`, `DateDelivery`, `TimeDelivery`, `AddressDelivery`, `FullNameCourier`) VALUES
	(1, 3, 1, '2022-02-08', '12:28:50', 1, 'FVbfgh', 6546516, b'0', NULL, NULL, NULL, NULL),
	(2, 1, 4, '2022-02-08', '12:28:50', 1, 'hjgjh', 6546516, b'0', '2022-02-08', '12:29:31', 'Cgngfg', 'gfhgfjgj'),
	(3, 1, 5, '2022-02-08', '12:28:50', 1, 'FVbfhgjhggh', 6546516, b'0', NULL, NULL, NULL, NULL);
INSERT INTO `sales_product` (`CodeProduct`, `CodeSales`) VALUES
	(3, 2),
	(4, 5),
	(3, 3),
	(2, 5);
