import 'package:fi/data/service/auth_service.dart';
import 'package:fi/model/profile.dart';
import 'package:flutter/cupertino.dart';

import '../util/app_components.dart';
import '../util/request_utils.dart';
import '../util/value_stream_wrapper.dart';
import 'base_view_model.dart';

class RegistrationViewModel extends BaseViewModel {
  final AuthService authService = AppComponents().authService;
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController secondNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final ValueStreamWrapper<String> genderController = ValueStreamWrapper();

  Future<void> registerUser() {
    final firstName = firstNameController.text;
    final secondName = secondNameController.text;
    final phone = phoneController.text;

    return RequestUtils().executeRequest(() {
      return authService.register(
        profile: Profile(
            email: emailController.text,
            gender: genderController.valueOrNull ?? 'unknown',
            firstName: firstName.isEmpty ? null : firstName,
            secondName: secondName.isEmpty ? null : secondName,
            phone: phone.isEmpty ? null : phone,
            role: 'client'
        ),
      );
    });
  }

  @override
  void dispose() {
    firstNameController.dispose();
    secondNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    genderController.dispose();
  }
}
