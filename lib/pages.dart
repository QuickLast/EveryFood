import 'package:flutter/material.dart';
import 'package:cooking_app/bricks.dart';

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
                              builder: (context) => const SignInPage()));
                    },
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size.fromHeight(45),
                      foregroundColor: const Color.fromRGBO(255, 104, 13, 1),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
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
                              builder: (context) => const SignUpPage()));
                    },
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size.fromHeight(45),
                      foregroundColor: const Color.fromRGBO(255, 104, 13, 1),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Color.fromARGB(255, 230, 230, 230)])),
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.transparent,
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                right: 20,
                left: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 25),
                  // Back Button + Title
                  Header(
                    title: "Популярные рецепты",
                    iconButton: IconButton(
                      icon: const Padding(
                        padding: EdgeInsets.only(left: 2),
                        child: Icon(
                          Icons.logout,
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
                  const SizedBox(height: 20),
                  // Search Bar + Filter
                  FilteredSearchBar(),
                  const SizedBox(height: 20),
                  // Tags Block
                  const Text(
                    "Не знаете, что искать? Попробуйте эти ингредиенты:",
                    style: TextStyle(
                        fontFamily: "Raleway", fontWeight: FontWeight.bold),
                  ),
                  Wrap(
                    runSpacing: 0,
                    alignment: WrapAlignment.center,
                    children: <Widget>[
                      FoodTag(
                        label: "Огурец",
                        color: Color.fromARGB(255, 141, 241, 110),
                        selectedColor: Color.fromARGB(255, 109, 189, 85),
                      ),
                      const SizedBox(width: 5),
                      FoodTag(
                        label: "Томат",
                        color: Color.fromARGB(255, 255, 187, 160),
                        selectedColor: Color.fromARGB(255, 206, 150, 128),
                      ),
                      const SizedBox(width: 5),
                      FoodTag(
                        label: "Клубника",
                        color: Color.fromARGB(255, 255, 97, 69),
                        selectedColor: Color.fromARGB(255, 206, 78, 56),
                      ),
                      const SizedBox(width: 5),
                      FoodTag(
                        label: "Сельдерей",
                        color: Color.fromARGB(255, 198, 255, 160),
                        selectedColor: Color.fromARGB(255, 160, 207, 129),
                      ),
                      const SizedBox(width: 5),
                    ],
                  ),
                  // Top Recipes Block
                  const Text(
                    "Новые рецепты:",
                    style: TextStyle(
                        fontFamily: "Dela",
                        fontSize: 25,
                        fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 180,
                        width: 180,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/salad.png"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 133, 236, 137),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 5, right: 5, top: 3, bottom: 3),
                                      child: Text(
                                        "Легко",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Raleway",
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 219, 133, 236),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 5, right: 5, top: 3, bottom: 3),
                                      child: Text(
                                        "Популярное",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Raleway",
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Осенний \nсалат",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Raleway",
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "120 ККал",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Raleway",
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text(
                                          "10 мин",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "Raleway",
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 180,
                        width: 180,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/taco.png"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 133, 236, 137),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 5, right: 5, top: 3, bottom: 3),
                                      child: Text(
                                        "Легко",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Raleway",
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 219, 133, 236),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 5, right: 5, top: 3, bottom: 3),
                                      child: Text(
                                        "Популярное",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Raleway",
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Тако \nМексиканское",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Raleway",
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "120 ККал",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Raleway",
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text(
                                          "10 мин",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "Raleway",
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  // ListView with the Recipes
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      textAlign: TextAlign.start,
                      "Все рецепты:",
                      style: TextStyle(
                          fontFamily: "Railway",
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 15),
                  ListView.separated(
                    shrinkWrap: true,
                    itemCount: 10,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 100,
                        height: 85,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(18))),
                        child: Row(
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.all(15),
                              child: Image(
                                width: 50,
                                height: 50,
                                image: AssetImage(
                                  "assets/images/dish.png",
                                ),
                              ),
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Свежайший завтрак",
                                  style: TextStyle(
                                      fontFamily: "Raleway",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  "Кирилл Осипов",
                                  style: TextStyle(
                                      fontFamily: "Raleway",
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: 4, bottom: 4, left: 5, right: 5),
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(255, 187, 13, 1),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    child: const Text("Medium",
                                        style: TextStyle(
                                            fontFamily: "Raleway",
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white)),
                                  ),
                                  const SizedBox(height: 4),
                                  const Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.alarm,
                                        size: 12,
                                      ),
                                      SizedBox(width: 2),
                                      Text(
                                        "20 мин",
                                        style: TextStyle(
                                            fontFamily: "Raleway",
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          height: 120,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(253, 97, 0, 0),
                  Color.fromRGBO(253, 97, 0, 0.527)
                ]),
          ),
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                height: 60,
                padding: const EdgeInsets.only(left: 20, right: 20),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(27),
                    ),
                    color: Colors.white),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 35,
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color.fromRGBO(252, 229, 205, 0.5),
                      ),
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.home,
                          color: Color.fromRGBO(255, 105, 13, 1),
                          size: 20,
                        ),
                        label: const Text(
                          "Главная",
                          style: TextStyle(
                            fontFamily: "Railway",
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: Color.fromRGBO(255, 105, 13, 1),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 35,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color.fromRGBO(252, 229, 205, 0.5),
                      ),
                      child: TextButton(
                        style: TextButton.styleFrom(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                        onPressed: () {},
                        child: const Icon(
                          Icons.add,
                          color: Color.fromRGBO(255, 105, 13, 1),
                          size: 23,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 35,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color.fromRGBO(252, 229, 205, 0.5),
                      ),
                      child: TextButton(
                        style: TextButton.styleFrom(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                        onPressed: () {},
                        child: const Icon(
                          Icons.person,
                          color: Color.fromRGBO(255, 105, 13, 1),
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 15),
              const MixButton(),
            ],
          ),
        ),
      ),
    );
  }
}

// Sign Up
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
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

// Sign In
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
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
