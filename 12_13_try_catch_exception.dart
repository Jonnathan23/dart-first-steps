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
    final String value2 = await httpGet2('ss', false);
    print(value2);  
    
  } on Exception catch(err){
    print('Tenemos una Exception: $err');
    
  } catch (err) {
    print('OOPS!! algo terrible pasó: $err');
    
  }
  
  
  print('Fin del programa'); 
  
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    throw 'Error en la peticion http';

    //return 'Respuesta de la peticion http';
  });
}


Future<String> httpGet2(String url, bool active) async {
  await Future.delayed(const Duration(seconds: 1));
  
   if(!active) throw Exception( 'Error en la peticion http');
  
  return 'Tenemos un valor de la pretición';
}
