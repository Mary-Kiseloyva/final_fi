import 'package:auto_route/auto_route.dart';
import 'package:fi/navigation/app_router.dart';
import 'package:fi/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AuthPage extends StatefulWidget {
  const AuthPage({
    super.key,
  });

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final AuthViewModel authViewModel = AuthViewModel();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Вход'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Пожалуйста, введите свой email,"),
            const Text("Мы отправим Вам проверочный код."),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: "example@yandex.ru",
                ),
              ),
            ),
            SizedBox(
              width: 200,
              child: OutlinedButton(
                onPressed: () async {
                  final email = emailController.text;
                  if (!authViewModel.validateEmail(email)) {
                    showInvalidEmailAlert();
                    return;
                  }
                  final isRegistered = await authViewModel.requestCode(email);
                  if (isRegistered) {
                    context.router.push(AuthCodeRoute(email: email));
                  } else {
                    context.router.push(RegistrationRoute(email: email));
                  }
                },
                child: const Text('Получить код'),
              ),
            ),
            const ConfidentialNoteWidget(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }

  showInvalidEmailAlert() {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Ошибка'),
        content: const Text('Неверный Email'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Oк'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
  }
}

class ConfidentialNoteWidget extends StatelessWidget {
  final EdgeInsets padding;

  const ConfidentialNoteWidget({super.key, required this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: const Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'Нажимая кнопку, вы соглашаетесь с ',
              style: TextStyle(fontSize: 12),
            ),
            TextSpan(
              text: 'Правилами и политикой конфиденциальности Компании.',
              style:
                  TextStyle(fontSize: 12, decoration: TextDecoration.underline),
            ),
          ],
        ),
      ),
    );
  }
}
