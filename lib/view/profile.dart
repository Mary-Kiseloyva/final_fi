import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fi/navigation/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Профиль'),
        ),
        body: SafeArea(
            child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Container(
              color: Colors.grey,
              height: 150,
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Мария',
                          style: TextStyle(fontSize: 30),
                        ),
                        Text('+7 (951) 874-75-78',
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Image.asset('assets/palki.png'),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                context.router.navigate(
                  RegistrationRoute(
                    email: 'yu.mariyu2003@gmail.com',
                  ),
                );
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey))),
                  child: const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: [
                        Text('Мои данные', style: TextStyle(fontSize: 18)),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_outlined)
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        )));
  }
}
