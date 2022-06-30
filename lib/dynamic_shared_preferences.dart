library dynamic_shared_preferences;

import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class DynamicSharedPreferences {
  save({required String? key,required dynamic value, required bool? isModel}) async {

    final SharedPreferences instance = await SharedPreferences.getInstance();
    if (isModel == true) {
       // Encode and store dataModel in SharedPreferences
      final String _value = json.encode(value);
      await instance.setString(key!, _value);
    }
    else{
      if(value is String){
        instance.setString(key!, value);
      }
      else if(value is int){
        instance.setInt(key!, value);
      }
      else if(value is double){
        instance.setDouble(key!, value);
      }
      else if(value is bool){
        instance.setBool(key!, value);
      }
      else if(value is List<String>){
        instance.setStringList(key!, value);
      }
    }
  }

  dynamic get({required String? key, required bool? isModel}) async {
    final SharedPreferences instance = await SharedPreferences.getInstance();

    if (isModel == true) {
      final String? _value = instance.getString(key!);
      json.decode(_value.toString());
      return json.decode(_value.toString());
    }
    else{
      if(instance.getString(key!) != null){
        return instance.getString(key);

      }
      else if(instance.getInt(key) != null){
        return instance.getInt(key);
      }
      else if(instance.getDouble(key) != null){
        return instance.getDouble(key);
      }
      else if(instance.getBool(key) != null){
        return instance.getBool(key);
      }
      else if(instance.getStringList(key) != null){
        return instance.getStringList(key);
      }
    }
  }


  void remove({required String? key}) async {
    final SharedPreferences instance = await SharedPreferences.getInstance();
    instance.remove(key!);
  }
  void clear() async {
    final SharedPreferences instance = await SharedPreferences.getInstance();
      instance.clear();

  }


}
