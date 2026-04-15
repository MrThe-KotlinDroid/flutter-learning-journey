void main() {
  var restaurants = [
    {
      'name': 'Pizza Mario',
      'cuisine': 'Italian',
      'ratings': [5.0, 3.5, 4.5],
    },
    {
      'name': 'Chez Anne',
      'cuisine': 'French',
      'ratings': [5.0, 4.5, 4.0],
    },
    {
      'name': 'Navaratna',
      'cuisine': 'Indian',
      'ratings': [4.0, 4.5, 4.0],
    },
  ];

  for (var restaurant in restaurants) {
    final ratings = restaurant['ratings'] as List<double>;
    double total = 0.0;
    for (double rating in ratings) total += rating;
    restaurant['avgRating']= total / ratings.length;
  }

  for(var restaurant in restaurants) {
    print('${restaurant['name']} : ${(restaurant['avgRating'] as double).toStringAsFixed(1)}');
  }
}
