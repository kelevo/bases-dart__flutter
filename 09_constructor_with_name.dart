void main() {
  
  final Map<String, dynamic> rawJson = {
    'name': 'Spiderman',
    'power': 'Habilidades aracnidas',
    'isAlive': true
  };
  
  final ironman = Hero(
    name: 'Tony Stark',
    power: 'Money',
    isAlive: false
  );
  
  // Creamos una instancia del constructor con nombre propio
  final ironmanConstructorWithName = Hero.fromJson( rawJson );
  
  print( ironman );
  print( ironmanConstructorWithName );
  
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
  
  // Constructor con nombre propio
  Hero.fromJson( Map<String, dynamic> json )
    : name    = json['name'] ?? 'No name found',
      power   = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No isAlive found';
  
  @override
  String toString() {
    return 'name: $name, power: $power, isAlive: ${ isAlive ? 'Yes' : 'No' }';
  }
  
}