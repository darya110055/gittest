INSERT INTO `view_dish` (`CodeViewDish`, `NameViewDish`) VALUES
	(1, 'суп'),
	(2, 'салат'),
	(3, 'закуска'),
	(4, 'второе');
INSERT INTO `dish` (`CodeDish`, `NameDish`, `ViewDish`, `ServingWeight,g`, `Pucture`, `CookingTime`, `Recipe`) VALUES
	(1, 'Сптам', 4, 561, NULL, 15, 'АСаривариваривкарврва'),
	(2, 'варва', 2, 453, NULL, 25, 'Шпплииьти'),
	(3, 'ИМ рор', 3, 124, NULL, 56, 'авпвап'),
	(4, 'Мордор', 1, 563, NULL, 45, 'апвапапап');
INSERT INTO `cooking` (`CodeDish`, `NumberPortions`, `Date`) VALUES
  (2, 454, '2022-02-03'),
	(3, 454, '2022-02-03'),
	(4, 454, '2022-02-03');
INSERT INTO `product` (`CodeProduct`, `NameProduct`, `CaloricContent`, `ProductWeight`, `Price`) VALUES
	(1, 'апваппа', 561, 56.00, 54.00),
	(2, 'прар', 242, 42.00, 54.00),
	(3, 'вапавп', 212, 3213.00, 52.00),
	(4, 'апавпва', 545, 4554.00, 418.00);
INSERT INTO `dish_product` (`Dish`, `Product`) VALUES
	(3, 3),
	(3, 4),
	(2, 2),
	(3, 1),
	(2, 1);
