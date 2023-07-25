import 'package:fi/data/entity/auth/auth_email_part2_request.dart';
import 'package:fi/data/repository/cart_repository.dart';
import 'package:fi/util/request_utils.dart';
import 'package:fi/view_model/base_view_model.dart';
import 'package:flutter/cupertino.dart';

import '../data/service/auth_service.dart';
import '../util/app_components.dart';

class AuthCodeViewModel extends BaseViewModel {
  final AuthService authService = AppComponents().authService;
  final CartRepository cartRepository = AppComponents().cartRepository;
  final TextEditingController codeController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  Future<void> sendCode() async {
    await RequestUtils().executeRequest(() {
      return authService.authEmailPart2(
        request: AuthEmailPart2Request(
          email: emailController.text,
          code: codeController.text,
        ),
      );
    });
    cartRepository.loadCart();
  }

  @override
  void dispose() {
    codeController.dispose();
    emailController.dispose();
  }
}
