import 'package:flutter_test/flutter_test.dart';

import 'package:dynamic_shared_preferences/dynamic_shared_preferences.dart';

void main() {
  test('adds one to input values', () {
    DynamicSharedPreferences gen = DynamicSharedPreferences();
    gen.save(key: 'keyName', value: 'keyValue', isModel: true);
    gen.get(key: 'keyName', isModel: true);
    gen.clear();
    gen.remove(key: 'keyName');
  });
}
