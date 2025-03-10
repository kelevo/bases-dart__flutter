void main() {
  
  final windPlant = WindPlant( initialEnergy: 100 );
  final nuclearPlant = NuclearPlant( energyLeft: 1000 );
  
  print( 'wind: ${ chargePhone( windPlant ) }' );
  print( 'nuclear: ${ chargePhone( nuclearPlant ) }' );

}

double chargePhone( EnergyPlant plant ) {
  
  if ( plant.energyLeft < 10 ) {
    throw Exception( 'Not enought energy' );
  }
  
  return plant.energyLeft - 10;
  
}

enum PlantType { nuclear, wind, water }

// Molde para hacer otras plantas de energia
abstract class EnergyPlant {
  
  double energyLeft;
  final PlantType type; // nuclear, wind, water
  
  EnergyPlant({ 
    required this.energyLeft, 
    required this.type 
  });
  
  void consumeEnergy( double amount );
  
}

// extends o implements
// extends => extender o heredar de otra clase (se hereda todo)
class WindPlant extends EnergyPlant {
  
  WindPlant({ required double initialEnergy })
    : super( energyLeft: initialEnergy, type: PlantType.wind );
  
  @override
  void consumeEnergy( double amount ) {
    energyLeft -= amount;
  }
  
}

// implements
class NuclearPlant implements EnergyPlant {
  
  @override
  double energyLeft;
  
  @override
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant({ required this.energyLeft });
  
  @override
  void consumeEnergy( double amount ) {
    energyLeft -= ( amount * 0.5 );
  }
  
}