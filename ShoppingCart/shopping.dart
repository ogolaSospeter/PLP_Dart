/*
Create a Dart program that simulates an online shopping cart system. Your program should implement the following:

Standard Functions:
Create a function calculateTotal that accepts a list of item prices and returns the total price.
Implement optional parameters for tax calculation.
Anonymous Functions:
Use an anonymous function to filter out items with a price below a certain threshold (e.g., items under $10).
Higher-Order Functions:
Write a function applyDiscount that takes a list of prices and a discount function as parameters. The discount function should reduce the price by a percentage.
Recursive Functions:
Create a recursive function calculateFactorialDiscount that calculates a special discount based on the factorial of the number of items in the cart (e.g., if there are 4 items, the discount is 4! percent).
Instructions:
The program should use the applyDiscount function to apply a discount to all items in the cart.
Calculate the final price after applying the discount and tax, using the calculateTotal function.
Use the recursive function for an additional special discount and apply it to the final price.
*/

import 'dart:math';

void main() {
  List<double> cart = [5.0, 10.0, 15.0, 20.0, 25.0];
  double tax = 0.1;
  double discount = 0.2;

  double total = calculateTotal(cart, tax);
  print('Total price before discount: \$${total.toStringAsFixed(2)}');

  List<double> discountedCart = applyDiscount(cart, discount);
  double discountedTotal = calculateTotal(discountedCart, tax);
  print('Total price after discount: \$${discountedTotal.toStringAsFixed(2)}');

  double finalPrice = calculateFactorialDiscount(discountedTotal, cart.length);
  print(
      'Final price after special discount: \$${finalPrice.toStringAsFixed(2)}');
}

double calculateTotal(List<double> cart, double tax) {
  double total = cart.fold(0, (prev, element) => prev + element);
  return total * (1 + tax);
}

List<double> applyDiscount(List<double> cart, double discount) {
  return cart.map((price) => price * (1 - discount)).toList();
}

double calculateFactorialDiscount(double price, int n) {
  if (n == 0) {
    return price;
  } else {
    return calculateFactorialDiscount(price * (1 - n / 100), n - 1);
  }
}
