import 'package:fi/data/service/auth_service.dart';
import 'package:fi/model/profile.dart';

import '../data/entity/auth/auth_email_part1_request.dart';
import '../util/app_components.dart';
import '../util/constants_utils.dart';
import '../util/request_utils.dart';

class RegistrationViewModel {
  final AuthService authService = AppComponents().authService;

  Future<void> registerUser(String email, String firstName, String secondName,
      String phone, String? gender) {
    return RequestUtils().executeRequest(() {
      return authService.register(
        profile: Profile(
            email: email,
            gender: gender,
            firstName: firstName.isEmpty ? null : firstName,
            secondName: secondName.isEmpty ? null : secondName,
            phone: phone.isEmpty ? null : phone,
            role: 'client'
        ),
      );
    });
  }

  Future<void> requestCode(String email) {
    return RequestUtils().executeRequest(() {
      return authService.authEmailPart1(
        request: AuthEmailPart1Request(
          email: email,
          digits: ConstantsUtils.validationCodeDigits,
        ),
      );
    });
  }
}
