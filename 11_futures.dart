void main() async {
  print('Inicio del programa');
  
  httpGet('ss')
      .then(((value) {
        print(value);
      }))
      .catchError((err) {
        print('Error: $err');
      });

  try{
    final String value2 = await httpGet2('ss');
    print(value2);  
    
  } catch (err) {
    print('Tenemos un error $err');
  }
  
  
  print('Fin del programa'); 
  
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    throw 'Error en la peticion http';

    //return 'Respuesta de la peticion http';
  });
}


Future<String> httpGet2(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  
  return 'Tenemos un valor de la pretición';
}
