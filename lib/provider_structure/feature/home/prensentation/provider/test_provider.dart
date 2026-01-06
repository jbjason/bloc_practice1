import 'package:bloc_practice1/provider_structure/feature/home/domain/entities/test_model_entity.dart';
import 'package:bloc_practice1/provider_structure/feature/home/domain/repository/test_repository_domain.dart';
import 'package:flutter/material.dart';

class TestProvider with ChangeNotifier {
  final TestRepositoryDomain repository;

  TestProvider(this.repository);

  final List<TestEntity> _categoryList = [];
  bool _isLoadingCategory = false;

  List<TestEntity> get categoryList => List.unmodifiable(_categoryList);
  bool get isLoadingCategory => _isLoadingCategory;

  Future<void> fetchCategories(BuildContext ctx) async {
    _isLoadingCategory = true;
    notifyListeners();
    try {
      final categories = await repository.fetchCategories(ctx);
      _categoryList
        ..clear()
        ..addAll(categories);
    } catch (e) {
      debugPrint('Error Parsing categories: $e');
    } finally {
      _isLoadingCategory = false;
      notifyListeners();
    }
  }
}
