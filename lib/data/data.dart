// Food
import 'package:class25/models/food.dart';
import 'package:class25/models/order.dart';
import 'package:class25/models/restaurant.dart';
import 'package:class25/models/user.dart';

final _burrito =
    Food(imageUrl: 'assets/burrito.jpg', name: 'Burrito', price: 8.99);
final _steak = Food(imageUrl: 'assets/Steak.jpg', name: 'Steak', price: 17.99);
final _pasta = Food(imageUrl: 'assets/pasta.jpg', name: 'Pasta', price: 14.99);
final _ramen = Food(imageUrl: 'assets/Ramen.jpeg', name: 'Ramen', price: 13.99);
final _pancakes =
    Food(imageUrl: 'assets/Pancakes.jpg', name: 'Pancakes', price: 9.99);
final _burger =
    Food(imageUrl: 'assets/burger.jpg', name: 'Burger', price: 14.99);
final _pizza = Food(imageUrl: 'assets/pizza.jpg', name: 'Pizza', price: 11.99);
final _salmon = Food(
    imageUrl: 'assets/Salmon Salad.jpg', name: 'Salmon Salad', price: 12.99);

// Restaurants
final _restaurant0 = Restaurant(
  imageUrl: 'assets/res5.jpg',
  name: 'Restaurant 0',
  address: 'Dhanmondi, Dhaka, BD',
  rating: 5,
  menu: [_burrito, _steak, _pasta, _ramen, _pancakes, _burger, _pizza, _salmon],
);
final _restaurant1 = Restaurant(
  imageUrl: 'assets/res1.jpg',
  name: 'Restaurant 1',
  address: 'Mirpur, Dhaka, BD',
  rating: 4,
  menu: [_steak, _pasta, _ramen, _pancakes, _burger, _pizza],
);
final _restaurant2 = Restaurant(
  imageUrl: 'assets/res2.jpg',
  name: 'Restaurant 2',
  address: 'Gulsan, Dhaka, DB',
  rating: 4,
  menu: [_steak, _pasta, _pancakes, _burger, _pizza, _salmon],
);
final _restaurant3 = Restaurant(
  imageUrl: 'assets/res3.jpg',
  name: 'Restaurant 3',
  address: 'Kakrail, Dhaka, BD',
  rating: 2,
  menu: [_burrito, _steak, _burger, _pizza, _salmon],
);
final _restaurant4 = Restaurant(
  imageUrl: 'assets/res4.jpg',
  name: 'Restaurant 4',
  address: 'Firmgate, Dhaka, BD',
  rating: 3,
  menu: [_burrito, _ramen, _pancakes, _salmon],
);

final List<Restaurant> restaurants = [
  _restaurant0,
  _restaurant1,
  _restaurant2,
  _restaurant3,
  _restaurant4,
];

// User
final currentUser = User(
  name: 'Rebecca',
  orders: [
    Order(
      date: 'Nov 10, 2019',
      food: _steak,
      restaurant: _restaurant2,
      quantity: 1,
    ),
    Order(
      date: 'Nov 8, 2019',
      food: _ramen,
      restaurant: _restaurant0,
      quantity: 3,
    ),
    Order(
      date: 'Nov 5, 2019',
      food: _burrito,
      restaurant: _restaurant1,
      quantity: 2,
    ),
    Order(
      date: 'Nov 2, 2019',
      food: _salmon,
      restaurant: _restaurant3,
      quantity: 1,
    ),
    Order(
      date: 'Nov 1, 2019',
      food: _pancakes,
      restaurant: _restaurant4,
      quantity: 1,
    ),
    Order(
      date: 'Nov 1, 2019',
      food: _pancakes,
      restaurant: _restaurant4,
      quantity: 1,
    ),
  ],
  cart: [
    Order(
      date: 'Nov 11, 2019',
      food: _burger,
      restaurant: _restaurant2,
      quantity: 2,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: _pasta,
      restaurant: _restaurant2,
      quantity: 1,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: _salmon,
      restaurant: _restaurant3,
      quantity: 1,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: _pancakes,
      restaurant: _restaurant4,
      quantity: 3,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: _burrito,
      restaurant: _restaurant1,
      quantity: 2,
    ),
  ],
);
