// test_model.dart
import 'dart:convert';
import 'package:bloc_practice1/provider_structure/core/error/safe_parse.dart';
import 'package:bloc_practice1/provider_structure/feature/home/domain/entities/test_model_entity.dart';

class TestModel extends TestEntity {
  const TestModel({
    required super.id,
    required super.title,
    required super.description,
    required super.img,
    required super.status,
    required super.birthDate,
  });

  factory TestModel.fromMap(Map<String, dynamic> map) {
    return TestModel(
      id: safeParse<int>(map['id'], 'id') ?? 0,
      title: safeParse<String>(map['title'], 'title') ?? '',
      description: safeParse<String>(map['description'], 'description') ?? '',
      img: safeParse<String>(map['img'], 'img') ?? '',
      status: safeParse<String>(map['status'], 'status') ?? '',
      birthDate: safeParse<String>(map['birthDate'], 'birthDate') ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'img': img,
      'status': status,
      'birthDate': birthDate,
    };
  }

  String toJson() => json.encode(toMap());

  factory TestModel.fromJson(String source) =>
      TestModel.fromMap(json.decode(source));
}
