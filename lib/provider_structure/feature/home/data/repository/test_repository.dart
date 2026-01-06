// data/repositories/test_repository_impl.dart
import 'package:bloc_practice1/provider_structure/feature/home/data/data_sources/test_data_source.dart';
import 'package:bloc_practice1/provider_structure/feature/home/domain/entities/test_model_entity.dart';
import 'package:bloc_practice1/provider_structure/feature/home/domain/repository/test_repository_domain.dart';
import 'package:flutter/material.dart';

class TestRepository implements TestRepositoryDomain {
  final TestRemoteDataSource remoteDataSource;

  TestRepository(this.remoteDataSource);

  @override
  Future<List<TestEntity>> fetchCategories(BuildContext ctx) async {
    final models = await remoteDataSource.fetchCategories(ctx);
    return models;
  }
}
