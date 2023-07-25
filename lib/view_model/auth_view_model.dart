import 'package:dio/dio.dart';
import 'package:fi/data/service/auth_service.dart';
import 'package:fi/util/constants_utils.dart';
import 'package:flutter/cupertino.dart';

import '../data/entity/auth/auth_email_part1_request.dart';
import '../util/app_components.dart';
import 'base_view_model.dart';

class AuthViewModel extends BaseViewModel {
  final AuthService authService = AppComponents().authService;
  final TextEditingController emailController = TextEditingController();

  bool validateEmail() {
    return ConstantsUtils.emailRegExp.hasMatch(emailController.text);
  }

  Future<bool> requestCode() async {
    try {
      await authService.authEmailPart1(
        request: AuthEmailPart1Request(
          email: emailController.text,
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

  @override
  void dispose() {
    emailController.dispose();
  }
}
