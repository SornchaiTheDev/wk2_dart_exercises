const pizzaPrices = {
  'margherita': 5.5,
  'pepperoni': 7.5,
  'vegetarian': 6.5,
};

void main() {
  const order = ['margherita', 'pepperoni', "yay"];

  double totalPrice = 0;

  for (String type in order) {
    bool isInPizzaType = pizzaPrices.keys.contains(type);
    if (isInPizzaType) {
      totalPrice += pizzaPrices[type]!;
    } else {
      print("$type pizza is not on the menu");
    }
  }

  print("Total: \$${totalPrice.toInt()}");
}
