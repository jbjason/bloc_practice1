import 'package:bloc_practice1/provider_structure/core/base/base_client.dart';
import 'package:bloc_practice1/provider_structure/core/constants/my_api_url.dart';
import 'package:bloc_practice1/provider_structure/feature/home/data/model/test_model.dart';
import 'package:flutter/material.dart';

abstract class TestRemoteDataSource {
  Future<List<TestModel>> fetchCategories(BuildContext ctx);
}

class TestRemoteDataSourceImpl implements TestRemoteDataSource {
  @override
  Future<List<TestModel>> fetchCategories(BuildContext ctx) async {
    final response =
        await BaseClient.getData(endPoint: MyApiUrl.category, ctx: ctx);

    return (response as List).map((e) => TestModel.fromMap(e)).toList();
  }
}
