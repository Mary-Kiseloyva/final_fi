import 'package:dio/dio.dart';
import 'package:fi/data/service/auth_service.dart';
import 'package:fi/util/constants_utils.dart';
import 'package:flutter/cupertino.dart';

import '../data/entity/auth/auth_email_part1_request.dart';
import '../util/app_components.dart';

class AuthViewModel {
  final AuthService authService = AppComponents().authService;

  bool validateEmail(String email) {
    return ConstantsUtils.emailRegExp.hasMatch(email);
  }

  Future<bool> requestCode(String email) async {
    try {
      await authService.authEmailPart1(
        request: AuthEmailPart1Request(
          email: email,
          digits: ConstantsUtils.validationCodeDigits,
        ),
      );
    } on DioException catch (error) {
      if (error.response?.statusCode == 451) {
        return false;
      } else {
        debugPrint(error.toString());
        rethrow;
      }
    }
    return true;
  }
}
