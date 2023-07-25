import 'package:auto_route/auto_route.dart';
import 'package:fi/navigation/app_router.dart';
import 'package:fi/util/snack_bar_util.dart';
import 'package:fi/view/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../view_model/registration_view_model.dart';

@RoutePage()
class RegistrationPage extends StatefulWidget {
  final String email;

  const RegistrationPage({
    super.key,
    @pathParam required this.email,
  });

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final RegistrationViewModel registrationViewModel = RegistrationViewModel();

  @override
  void initState() {
    super.initState();
    registrationViewModel.emailController.text = widget.email;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Мои данные'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            InputWidget(
              textController: registrationViewModel.firstNameController,
              hintText: 'Иван',
            ),
            InputWidget(
              textController: registrationViewModel.secondNameController,
              hintText: 'Иванов',
            ),
            InputWidget(
              textController: registrationViewModel.phoneController,
              hintText: '+7 (000) 000-00-00',
            ),
            InputWidget(
              textController: registrationViewModel.emailController,
              hintText: '',
              enabled: false,
            ),
            StreamBuilder<String?>(
              stream: registrationViewModel.genderController.stream,
              builder: (context, genderSnapshot) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                  child: Row(
                    children: [
                      GenderCheckbox(
                        label: 'Муж',
                        value: genderSnapshot.data == 'male',
                        onChanged: () {
                          registrationViewModel.genderController.add('male');
                        },
                      ),
                      const SizedBox(width: 32),
                      GenderCheckbox(
                        label: 'Жен',
                        value: genderSnapshot.data == 'female',
                        onChanged: () {
                          registrationViewModel.genderController.add('female');
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const ConfidentialNoteWidget(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                  ),
                  SizedBox(
                    width: 250,
                    child: OutlinedButton(
                      onPressed: () {
                        debugPrint('you');
                        registrationViewModel
                            .registerUser()
                            .then((value) => context.router.push(
                                  AuthCodeRoute(email: widget.email),
                                ))
                            .catchError((error, stackTrace) =>
                                context.showSnackBar('Неверные данные'));
                      },
                      child: const Text('Сохранить'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    registrationViewModel.dispose();
  }
}

class InputWidget extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final bool enabled;

  const InputWidget(
      {super.key,
      required this.textController,
      required this.hintText,
      this.enabled = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: TextField(
          enabled: enabled,
          controller: textController,
          decoration: InputDecoration(
            hintText: hintText,
          ),
          inputFormatters: [
            LengthLimitingTextInputFormatter(120),
          ]),
    );
  }
}

class GenderCheckbox extends StatelessWidget {
  const GenderCheckbox({
    required this.value,
    required this.onChanged,
    required this.label,
    Key? key,
  }) : super(key: key);

  final bool value;
  final String label;
  final void Function() onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onChanged,
      child: Row(
        children: [
          Container(
            height: 22,
            width: 22,
            decoration: BoxDecoration(
              border: Border.all(
                color: value ? theme.hintColor : theme.focusColor,
                width: 1,
              ),
              borderRadius: BorderRadius.zero,
            ),
            child: Center(
              child: Visibility(
                visible: value,
                child: const Icon(Icons.done, size: 12),
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Text(
            label,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
