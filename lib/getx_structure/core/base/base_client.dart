// ignore_for_file: use_build_context_synchronously
import 'dart:convert';
import 'package:bloc_practice1/getx_structure/app/modules/auth/model/user_model.dart';
import 'package:bloc_practice1/getx_structure/core/error/api_exception.dart';
import 'package:bloc_practice1/getx_structure/app/modules/auth/repository/user_repository.dart';
import 'package:bloc_practice1/getx_structure/core/urls/api_url.dart';
import 'package:bloc_practice1/getx_structure/core/utils/my_dialog.dart';
import 'package:bloc_practice1/getx_structure/core/utils/my_string.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class BaseClient {
  static final dio = Dio(BaseOptions(connectTimeout: Duration(seconds: 3)));

  ///
  // without context, shows dialog by getx -->MyDialog.showSnackbar(msg: "msg");
  Future<dynamic> getData({
    required String endPoint,
    Object? body,
    Map<String, dynamic>? parameters,
    Options? options,
    required BuildContext ctx,
  }) async {
    try {
      final url = "${ApiUrl.baseUrl}/${ApiUrl.version}/$endPoint";
      Logger().i("$url/$parameters");
      final response = await dio.get(
        url,
        queryParameters: parameters,
        data: body ?? jsonEncode({}),
        options: options ?? Options(headers: await _setHeader()),
      );
      Logger().t("\x1B[95mResponse status code: ${response.statusCode}");
      if (response.statusCode == 200) return response.data;
      MyDialog().showFailedToast(msg: MyString.errorMsg, context: ctx);
    } on DioException catch (e) {
      ApiException.handleException(e, ctx);
    } catch (e) {
      Logger().e(e);
      MyDialog().showFailedToast(
        title: "Unexpected Error!",
        msg: e.toString(),
        context: ctx,
      );
    }
  }

  Future<dynamic> postData({
    required String endPoint,
    Object? body,
    Map<String, dynamic>? parameters,
    Options? options,
    required BuildContext ctx,
  }) async {
    try {
      final url = "${ApiUrl.baseUrl}/${ApiUrl.version}/$endPoint";
      Logger().i("$url/$parameters");
      final response = await dio.post(
        url,
        queryParameters: parameters,
        data: body ?? jsonEncode({}),
        options: options ?? Options(headers: await _setHeader()),
      );
      Logger().t("\x1B[95mResponse status code: ${response.statusCode}");
      if (response.statusCode == 200) return response.data;
      MyDialog().showFailedToast(msg: MyString.errorMsg, context: ctx);
    } on DioException catch (e) {
      ApiException.handleException(e, ctx);
    } catch (e) {
      Logger().e(e);
      MyDialog().showFailedToast(
        title: "Unexpected Error!",
        msg: e.toString(),
        context: ctx,
      );
    }
  }

  Future<dynamic> patchData({
    required String endPoint,
    Object? body,
    Map<String, dynamic>? parameters,
    Options? options,
    required BuildContext ctx,
  }) async {
    try {
      final url = "${ApiUrl.baseUrl}/${ApiUrl.version}/$endPoint";
      Logger().i("$url/$parameters");
      final response = await dio.patch(
        url,
        queryParameters: parameters,
        data: body ?? jsonEncode({}),
        options: options ?? Options(headers: await _setHeader()),
      );
      Logger().t("\x1B[95mResponse status code: ${response.statusCode}");
      if (response.statusCode == 200) return response.data;
      MyDialog().showFailedToast(msg: MyString.errorMsg, context: ctx);
    } on DioException catch (e) {
      Logger().e(e);
      ApiException.handleException(e, ctx);
    } catch (e) {
      Logger().e(e);
      MyDialog().showFailedToast(
        title: "Unexpected Error!",
        msg: e.toString(),
        context: ctx,
      );
    }
  }

  Future<dynamic> putData({
    required String endPoint,
    Object? body,
    Map<String, dynamic>? parameters,
    Options? options,
    required BuildContext ctx,
  }) async {
    try {
      final url = "${ApiUrl.baseUrl}/${ApiUrl.version}/$endPoint";
      Logger().i("$url/$parameters");
      final response = await dio.put(
        url,
        queryParameters: parameters,
        data: body ?? jsonEncode({}),
        options: options ?? Options(headers: await _setHeader()),
      );
      Logger().t("\x1B[95mResponse status code: ${response.statusCode}");
      if (response.statusCode == 200) return response.data;
      MyDialog().showFailedToast(msg: MyString.errorMsg, context: ctx);
    } on DioException catch (e) {
      ApiException.handleException(e, ctx);
    } catch (e) {
      Logger().e(e);
      MyDialog().showFailedToast(
        title: "Unexpected Error!",
        msg: e.toString(),
        context: ctx,
      );
    }
  }

  Future<dynamic> deleteData({
    required String endPoint,
    Object? body,
    Map<String, dynamic>? parameters,
    Options? options,
    required BuildContext ctx,
  }) async {
    try {
      final url = "${ApiUrl.baseUrl}/${ApiUrl.version}/$endPoint";
      Logger().i("$url/$parameters");
      final response = await dio.delete(
        url,
        queryParameters: parameters,
        data: body,
        options: options ?? Options(headers: await _setHeader()),
      );
      Logger().t("\x1B[95mResponse status code: ${response.statusCode}");
      if (response.statusCode == 200) return response.data;
      MyDialog().showFailedToast(msg: MyString.errorMsg, context: ctx);
    } on DioException catch (e) {
      ApiException.handleException(e, ctx);
    } catch (e) {
      Logger().e(e);
      MyDialog().showFailedToast(
        title: "Unexpected Error!",
        msg: e.toString(),
        context: ctx,
      );
    }
  }

  Future<Map<String, String>> _setHeader() async {
    ///
    /// checking if the user data is available on local storagee
    UserModel? user = await UserRepository.getAsyncUser();

    if (user != null) {
      return {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${user.token}',
      };
    } else {
      return {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      };
    }
  }
}
