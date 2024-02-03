import 'package:cooking_app/pages/signin_page.dart';
import 'package:cooking_app/pages/signup_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Scaffold(
          extendBody: true,
          body: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/logo.png', width: 300),
                const Text(
                  "Everyfood встречает вас!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Raleway",
                      fontSize: 27,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Удивительное место, где всегда пахнет едой.\nДаже твоя бабушка уже здесь, а ты?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Raleway",
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                ),
                const SizedBox(height: 40),
                const Text(
                  "Пожалуйста, выберите:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Raleway",
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 40, right: 40, top: 10, bottom: 10),
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInPage(),
                        ),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size.fromHeight(45),
                      foregroundColor: const Color.fromRGBO(255, 104, 13, 1),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      side: BorderSide(color: Colors.orange),
                    ),
                    child: const Text("Войти", style: TextStyle(fontSize: 18)),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 40, right: 40, bottom: 10),
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpPage(),
                        ),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size.fromHeight(45),
                      foregroundColor: const Color.fromRGBO(255, 104, 13, 1),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      side: BorderSide(color: Colors.orange),
                    ),
                    child: const Text("Зарегистрироваться",
                        style: TextStyle(fontSize: 18)),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
