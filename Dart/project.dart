import 'dart:io';

class Pizza {
  int small = 150;
  int medium = 250;
  int large = 500;
  int monster = 750;

  int quantity = 0;
  int price = 0;
  int selectedOrder = 0;

  void order() {
    print('--- Pizza Menu ---');
    print('Small size : 150₹');
    print('Medium size : 250₹');
    print('Large size : 500₹');
    print('Monster size : 750₹');

    stdout.write('Enter num to select your order : ');
    selectedOrder = int.parse(stdin.readLineSync().toString());

    stdout.write('Enter the qty : ');
    quantity = int.parse(stdin.readLineSync().toString());
    print('');

    print('--- Bill ---');
    switch (selectedOrder) {
      case 1:
        print('small pizza');
        price = small * quantity;

        break;
      case 2:
        print('medium pizza');
        price = medium * quantity;
        break;
      case 3:
        print('large pizza');
        price = large * quantity;
        break;
      case 4:
        print('monster pizza');
        price = monster * quantity;
        break;
      default:
        print('Invalid Input');
    }
    print('Qty : $quantity');
    print('Totla Price : $price');
  }

  void pizzaOffer() {
    switch (selectedOrder) {
      case 1:
        if (quantity >= 4) {
          print('Offer : 500 ml coke free');
        }
        break;
      case 2:
        if (quantity >= 3) {
          print('Offer : 1 ltr coke free');
        }
        break;
      case 3:
        if (quantity >= 2) {
          print('Offer : 500 ml coke + ice cream');
        }
        break;
      case 4:
        if (quantity >= 1) {
          print('Offer : 1 ltr coke + ice cream');
        }
        break;

      default:
        print('Invalid Input');
    }
  }
}

void main() {
  Pizza pizza = Pizza();
  pizza.order();
  pizza.pizzaOffer();
}
