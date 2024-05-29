void main() {
  
  print( 'Inicio del programa' );
  
  httpGet( 'http://www.google.com' ).then( (value) {
    print( value );
  }).catchError( (err) {
    print( 'Error: $err' );
  });
  
  print( 'Fin del programa' );
  
}

Future<String> httpGet( String url ) {
  
  return Future.delayed( Duration(seconds: 1), () {
    
    throw 'Error en la peticion http';
    //return 'Respuesta de la peticion HTTP';
    
  } );
  
}