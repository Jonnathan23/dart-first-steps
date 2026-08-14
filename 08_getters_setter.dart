void main() {
  final Square mySquare = Square(side: -10);

  print('área: ${mySquare.calculateArea()}');
  
  mySquare.side = 7;
  
  print('new área: ${mySquare.calculateArea()}');
}

class Square {
  double _side; //side * side

  Square({required side}):
    assert(side >= 0, 'side must be += 0'),
  
    _side = side
  ;

  double calculateArea() {
    return _side * _side;
  }

  double get area {
    return _side * _side;
  }
  
  set side(double value){
    print('Setting new value $value');
    if( value <0) throw 'Value must be +0';
    
    _side = value;
  }
}
