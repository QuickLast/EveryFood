import 'package:cooking_app/pages/home_page.dart';
import 'package:cooking_app/pages/signup_page.dart';
import 'package:cooking_app/pages/welcome_page.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(bottom: 10, top: 50),
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(252, 229, 205, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    width: 40,
                    height: 40,
                    child: Center(
                      child: IconButton(
                        icon: const Padding(
                          padding: EdgeInsets.only(left: 6),
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 20,
                            color: Color.fromRGBO(255, 104, 13, 0.8),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const WelcomePage()));
                        },
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(40),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Авторизация",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Raleway",
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Добро пожаловать назад!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Raleway",
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Введите ваш email:",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Raleway",
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "email@gmail.com",
                          hintStyle: const TextStyle(
                            color: Color.fromRGBO(133, 140, 148, 1),
                            fontFamily: "Raleway",
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                          contentPadding: const EdgeInsets.only(
                              right: 17, left: 17, top: 10, bottom: 10),
                          filled: true,
                          fillColor: const Color.fromRGBO(238, 240, 242, 1),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Пароль:",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Raleway",
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "логин12",
                          hintStyle: const TextStyle(
                            color: Color.fromRGBO(133, 140, 148, 1),
                            fontFamily: "Raleway",
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                          contentPadding: const EdgeInsets.only(
                              right: 17, left: 17, top: 10, bottom: 10),
                          filled: true,
                          fillColor: const Color.fromRGBO(238, 240, 242, 1),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none),
                        ),
                      ),
                      const SizedBox(height: 15),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size.fromHeight(45),
                          foregroundColor:
                              const Color.fromRGBO(255, 104, 13, 1),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          side: BorderSide(color: Colors.orange),
                        ),
                        child:
                            const Text("Войти", style: TextStyle(fontSize: 18)),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                Center(
                  child: TextButton(
                    child: const Text("Еще не зарегистрированы?",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: "Raleway",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpPage()));
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
