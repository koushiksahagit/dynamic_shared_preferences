# Dynamic Shared Preferences
[![pub package](https://img.shields.io/pub/v/dynamic_shared_preferences.svg?color=blue)](https://pub.dev/packages/dynamic_shared_preferences)

## Features
You can Save and retrieve following data with this package: 
`String`,  `int`,  `double`,  `List<String>`,  `dataModel`  

## Getting started

To use this package add `dynamic_shared_preferences` as dependency to your `pubspec.yaml`

```yaml
dependencies:
  ...
  dynamic_shared_preferences: ^0.0.1
```

## Usage

### Instantiate

```dart
DynamicSharedPreferences gen = DynamicSharedPreferences();
```

### Save Values to a key

```
gen.save(key: 'keyName', value: ParsedDataModel, isModel: true);
```
```
gen.save(key: 'keyName', value: 'keyValue', isModel: false);
```

### Fetch Values  from a key

```
gen.get(key: 'keyName', isModel: true);
```
```
gen.get(key: 'keyName', isModel: false);
```

### Remove Values for a key 

```
gen.remove(key: 'keyName');
```

### Clear all key values

```
gen.clear();
```
