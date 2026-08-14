void main(){
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final sprites = <String>['ditto/front.png', 'ditto/backend.png'];
  
  // es como el any de Typescript, hay que tener mucho cuidado con este tipo de variables
  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = [1,2,3,4,5];
  errorMessage = {1,2,3,4,5};
  errorMessage = () => true;
  errorMessage = null;
  
  
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  
  """);
    
}
