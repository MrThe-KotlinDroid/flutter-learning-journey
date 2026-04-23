void main() {
  const bananas = 5;
  const apples = 6;
  const grains = {'pasta': '500g', 'rice': '1kg'};
  const addgrains = true;
  var shoppingList = {
    if (bananas > 0) 'bananas': bananas,
    if (apples > 0) 'apples': apples,
    if (addgrains) ...grains,
  };
  print(shoppingList); 
}
