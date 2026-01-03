import 'dart:convert';
import 'package:bloc_practice1/getx_structure/app/modules/auth/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class UserRepository {
  static final box = GetStorage();

  static Future<void> init() async {
    await GetStorage.init();
  }

  static Future<void> setUser(UserModel user) async {
    const key = 'user_key';
    final jsonString = json.encode(user.toJson());
    await box.write(key, jsonString);
  }

  static UserModel? getUser() {
    const key = 'user_key';
    final jsonString = box.read<String>(key);
    if (jsonString != null) {
      final jsonMap = json.decode(jsonString);
      final user = UserModel.fromJson(jsonMap);
      return user;
    } else {
      return null;
    }
  }

  static Future<UserModel?> getAsyncUser() async {
    const key = 'user_key';
    final jsonString = box.read<String>(key); // Assuming box.read is async
    if (jsonString != null) {
      final jsonMap = json.decode(jsonString);
      final user = UserModel.fromJson(jsonMap);
      return user;
    } else {
      return null;
    }
  }

  static Future<void> setUserName(UserModel user, String name) async {
    const key = 'user_key';
    user.name = name;
    final jsonString = json.encode(user.toJson());
    await box.write(key, jsonString);
  }

  static Future<void> setUserEmail(UserModel user, String email) async {
    const key = 'user_key';
    user.email = email;
    final jsonString = json.encode(user.toJson());
    await box.write(key, jsonString);
  }

  static Future<void> clearUserInfo() async {
    await box.erase();
    debugPrint("Completed clearing user");
  }
}
