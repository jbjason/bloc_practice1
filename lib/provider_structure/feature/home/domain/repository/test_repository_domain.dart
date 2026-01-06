import 'package:bloc_practice1/provider_structure/feature/home/domain/entities/test_model_entity.dart';
import 'package:flutter/material.dart';

abstract class TestRepositoryDomain {
  Future<List<TestEntity>> fetchCategories(BuildContext ctx);
}
