```dart
import 'package:dynamic_shared_preferences/dynamic_shared_preferences.dart';
```
  
```dart
void main(){
// Assign model to the instance
  DynamicSharedPreferences gen = DynamicSharedPreferences();
// `response` is from Rest Api parsing
  final parsed = jsonDecode(response.body);

  fetchedDataModel = parsed
            .map<DataModel>((dynamic json) => DataModel.fromJson(json))
            .toList() as List<DataModel>;

  gen.save(key: 'keyName', value: 'fetchedDataModel', isModel: true);
}
```

```dart
void main(){
// Get values from model
  DynamicSharedPreferences gen = DynamicSharedPreferences();
  gen.get(key: 'keyName', isModel: true).then((onValue) {
    fetchedData = onValue
          .map<DataModel>((dynamic json) => DataModel.fromJson(json))
          .toList() as List<DataModel>;
      
    print("Saved data: " + fetchedData[0].keyName.toString());
    });
}
```

```dart
void main(){
  //Normal shared preference operations with String, Integer, Double, Boolean, List<String> types
  DynamicSharedPreferences gen = DynamicSharedPreferences();
  gen.save(key: 'keyName', value: 'keyValue', isModel: false);
  gen.get(key: 'keyName', isModel: false);
  gen.clear();
  gen.remove(key: 'keyName');
}
```