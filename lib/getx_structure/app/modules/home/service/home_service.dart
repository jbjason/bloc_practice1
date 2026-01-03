import 'package:bloc_practice1/getx_structure/core/base/base_client.dart';
import 'package:bloc_practice1/getx_structure/core/urls/api_url.dart';
import 'package:flutter/widgets.dart';

class StudentDashboardService {
  Future<dynamic> getStudentCourse(BuildContext ctx) async {
    var response =
        await BaseClient().getData(endPoint: ApiUrl.testApi, ctx: ctx);
    return response;
  }

  Future<dynamic> getStudyPlan({
    required String classId,
    required String type,
    required int moduleType,
    required BuildContext ctx
  }) async {
    var response = await BaseClient().getData(
        endPoint: ApiUrl.testApi,ctx: ctx);

    return response;
  }

  Future<dynamic> getClassListStudent(BuildContext ctx) async {
    var response = await BaseClient().getData(endPoint: ApiUrl.testApi, ctx: ctx);
    return response;
  }
}