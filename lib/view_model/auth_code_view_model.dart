import 'package:fi/data/entity/auth/auth_email_part2_request.dart';
import 'package:fi/util/request_utils.dart';

import '../data/service/auth_service.dart';
import '../util/app_components.dart';

class AuthCodeViewModel {
  final AuthService authService = AppComponents().authService;

  Future<void> sendCode(String code, String email) async {
    await RequestUtils().executeRequest(() {
      return authService.authEmailPart2(
          request: AuthEmailPart2Request(email: email, code: code));
    });
  }
}
