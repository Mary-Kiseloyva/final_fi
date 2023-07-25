import 'package:auto_route/auto_route.dart';
import 'package:fi/view_model/auth_code_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';
import 'package:fi/util/snack_bar_util.dart';

@RoutePage()
class AuthCodePage extends StatefulWidget {
  final String email;

  const AuthCodePage({
    super.key,
    @pathParam required this.email,
  });

  @override
  State<AuthCodePage> createState() => _AuthCodePageState();
}

class _AuthCodePageState extends State<AuthCodePage> {
  final AuthCodeViewModel authCodeViewModel = AuthCodeViewModel();

  @override
  void initState() {
    super.initState();
    authCodeViewModel.emailController.text = widget.email;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Вход'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Ваш e-mail'),
            ),
            TextField(
              enabled: false,
              controller: authCodeViewModel.emailController,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: CodeWidget(
                codeController: authCodeViewModel.codeController,
              ),
            ),
            SizedBox(
              width: 250,
              child: OutlinedButton(
                onPressed: () {
                  authCodeViewModel
                      .sendCode()
                      .then((value) => context.router.popUntilRoot())
                      .catchError((error, stackTrace) {
                    context.showSnackBar('Неверный код');
                  });
                },
                child: const Text('Войти'),
              ),
            )
          ]),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    authCodeViewModel.dispose();
  }
}

class CodeWidget extends StatelessWidget {
  final TextEditingController codeController;

  final codeCursor = Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Container(
        width: 33,
        height: 1,
        decoration: const BoxDecoration(),
      ),
    ],
  );

  final preFilledCode = Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Container(
        width: 33,
        height: 1,
        decoration: const BoxDecoration(),
      ),
    ],
  );

  CodeWidget({super.key, required this.codeController});

  @override
  Widget build(BuildContext context) {
    return Pinput(
      controller: codeController,
      length: 4,
      separator: const SizedBox(
        width: 23,
      ),
      autofillHints: const [AutofillHints.oneTimeCode],
      cursor: codeCursor,
      preFilledWidget: preFilledCode,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
    );
  }
}
