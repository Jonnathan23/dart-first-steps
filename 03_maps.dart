void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': <int, String>{1: 'ditto/front.png', 2: 'ditto/backend.png'},
  };

  print(pokemon);

  print('Name: ${pokemon['name']}\n');
  print('Name: ${pokemon['sprites']}');

  final sprites = pokemon['sprites'];

  print('Back: ${sprites[2]}');
  print('Front: ${sprites[1]}');
}
