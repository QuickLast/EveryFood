import 'package:cooking_app/pages/home_page.dart';
import 'package:cooking_app/pages/signin_page.dart';
import 'package:cooking_app/pages/welcome_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var _email = "";
  var _name = "";
  var _password = "";
  var _rePassword = "";

  var _errorText = "";
  var _needAnError = false;

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
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Регистрация",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Raleway",
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
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
                        onChanged: (value) => _email = value,
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
                          "Введите ваше имя:",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Raleway",
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        onChanged: (value) => _name = value,
                        decoration: InputDecoration(
                          hintText: "Пьер Петров",
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
                          "Придумайте пароль:",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Raleway",
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        onChanged: (value) => _password = value,
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
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Повторите пароль:",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Raleway",
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        onSubmitted: (value) => _rePassword = value,
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
                          setState(
                            () {
                              int errorCounter = 0;
                              if (_name == "" ||
                                  _email == "" ||
                                  _password == "" ||
                                  _rePassword == "") {
                                _needAnError = true;
                                _errorText = "Введите данные!";
                                errorCounter++;
                              } else if (!_email
                                  .contains(RegExp(r"\w+@\w+\.\w+"))) {
                                _needAnError = true;
                                _errorText = "Введен некорректный email!";
                                errorCounter++;
                              } else if (_name.length < 4) {
                                _needAnError = true;
                                _errorText =
                                    "Имя должно состоять хотя бы из четырех символов!";
                                errorCounter++;
                              } else if (_password.length < 4) {
                                _needAnError = true;
                                _errorText =
                                    "Пароль должен состоять хотя бы из четырех символов!";
                                errorCounter++;
                              } else if (_password != _rePassword) {
                                _needAnError = true;
                                _errorText = "Пароли должны совпадать!";
                                errorCounter++;
                              }

                              if (errorCounter == 0) {
                                _needAnError = false;
                                _email = "";
                                _password = "";
                                _name = "";
                                _rePassword = "";
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomePage()));
                              }
                            },
                          );
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
                        child: const Text("Зарегистрироваться",
                            style: TextStyle(fontSize: 18)),
                      ),
                      const SizedBox(height: 10),
                      _needAnError
                          ? Center(
                              child: Text(
                                _errorText,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontFamily: "Raleway",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 231, 38, 24)),
                              ),
                            )
                          : const Center(
                              child: Text(
                                "Регистрируясь, вы соглашаетесь с нашим\nПользовательским Соглашением",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Raleway",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                    ],
                  ),
                ),
                Center(
                  child: TextButton(
                    child: const Text("Уже зарегистрированы?",
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
                              builder: (context) => const SignInPage()));
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
