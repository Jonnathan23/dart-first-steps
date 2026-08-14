void main(){
  emitNumbers().listen((value) {
    print('Stream value: $value');
  });
  
}

/**
 * Los streams necesitan que alguien los esté escuchando para que empiecen a emitir
 * valores
 * 
 * */
Stream<int> emitNumbers(){
  return Stream.periodic(const Duration(seconds: 1), (value) {    
    return value;
  }).take(5);
  
}