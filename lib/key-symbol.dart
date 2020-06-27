import 'package:calculator/calculator-key.dart';
enum KeyType{FUNTCION ,OPERATOR,INTEGER}

class KeySymbol{
  const KeySymbol(this.value);
  final String value;

  static List<KeySymbol> _function = [Keys.clear,Keys.sign,Keys.percent,Keys.decimal];
  static List<KeySymbol> _operator = [Keys.divide,Keys.multiply,Keys.subtract,Keys.add,Keys.equals];

  @override
String toString() => value;
  bool get isOperator => _operator.contains(this);
  bool get isFunction => _function.contains(this);
  bool get isInteger => !isOperator && !isFunction;
  KeyType get type => isFunction ? KeyType.FUNTCION:(isOperator ? KeyType.OPERATOR : KeyType.INTEGER);
}