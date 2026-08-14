void main(){
  
  final rawJson = {
    'name': 'Tonny Stark',
    'power': 'Money',
    'isAlive': true
  };
  
  final ironmanJoven = Hero.fromJson(rawJson);
  
  final Hero iroman = Hero(
    isAlive: false,
    power: 'Money',
    name: 'Tony Starck'
  );
  
  print('iroman $iroman');
  print('ironman Joven $ironmanJoven');
}

class Hero {
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  Hero.fromJson(Map<String, dynamic> json) :
    name = json['name'] ?? 'No name found',
    power = json['power'] ?? 'No power found',
    isAlive = json['isAlive'] ?? 'No isAlive found'
  ;
  
  @override
  String toString(){
    return '$name, $power, isAlive: ${isAlive ? 'YES' : 'Nop'}';
  }
}