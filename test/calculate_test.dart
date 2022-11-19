import 'package:flutter_test/flutter_test.dart';
import 'package:learn_flutter/calculate.dart';

void main() {
  test('calculate ...', () async {

  
    int result = Calculate.add(4, 5);


    expect(result, 9);


  });
}