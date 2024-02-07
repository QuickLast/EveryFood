import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cooking_app/custom_widgets.dart';
import 'package:cooking_app/func.dart';
import 'package:cooking_app/pages/home_page.dart';
import 'package:cooking_app/pages/profile_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wheel_chooser/wheel_chooser.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  String _name = "";
  String _description = "";
  String _difficulty = "Легко";
  int _time = 0;
  var difficulties = ["Легко", "Средне", "Сложно"];
  String _errorText = "";
  bool _needAnError = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Color.fromARGB(255, 242, 242, 242)])),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 25),
                  // Back Button + Title
                  Header(
                    title: "Добавление рецепта",
                    headerButton: HeaderButton(
                      icon: const Icon(Icons.arrow_back_ios, size: 20),
                      padding: const EdgeInsets.only(left: 10),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Введите название рецепта:",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 7),
                  TextField(
                    onChanged: (value) => _name = value,
                    decoration: InputDecoration(
                      hintText: "Макароны по-флотски",
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
                  SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Как можно детальнее опишите Ваш рецепт:",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 7),
                  TextField(
                    minLines: 2,
                    maxLines: 10,
                    onChanged: (value) => _description = value,
                    decoration: InputDecoration(
                      hintText: "Шаг 1. Налить в кастрюлю воду\nШаг 2. ...",
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
                  SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Выберите сложность приготовления рецепта:",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 7),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(
                          right: 17, left: 17, top: 15, bottom: 15),
                      filled: true,
                      fillColor: const Color.fromRGBO(238, 240, 242, 1),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                      suffixIcon: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          isExpanded: true,
                          dropdownColor: const Color.fromRGBO(238, 240, 242, 1),
                          focusColor: Color.fromRGBO(255, 105, 13, 1),
                          padding: EdgeInsets.only(left: 20, right: 20),
                          icon: Icon(Icons.touch_app, color: Colors.grey),
                          value: _difficulty,
                          onChanged: (newValue) {
                            setState(() {
                              _difficulty = newValue!;
                            });
                          },
                          items: difficulties
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                  color: getDifficultyColor(value),
                                  fontFamily: "Raleway",
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Выберите время приготовления рецепта (в минутах):",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(height: 7),
                  SizedBox(
                    height: 80,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(
                            right: 17, left: 17, top: 15, bottom: 15),
                        filled: true,
                        fillColor: const Color.fromRGBO(238, 240, 242, 1),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none),
                        suffixIcon: WheelChooser.integer(
                          horizontal: true,
                          unSelectTextStyle: TextStyle(
                              fontFamily: "Raleway",
                              fontSize: 11,
                              fontWeight: FontWeight.w500),
                          selectTextStyle: TextStyle(
                              fontFamily: "Dela",
                              color: Color.fromRGBO(255, 105, 13, 1),
                              fontSize: 11,
                              fontWeight: FontWeight.w500),
                          onValueChanged: (value) => _time = value,
                          minValue: 1,
                          maxValue: 300,
                          isInfinite: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(
                  left: 40, right: 40, top: 10, bottom: 10),
              child: OutlinedButton(
                onPressed: () {
                  setState(
                    () {
                      int errorCounter = 0;
                      if (_name == "" || _description == "" || _time == 0) {
                        _needAnError = true;
                        _errorText = "Введите данные!";
                        errorCounter++;
                      } else if (_name.length < 4) {
                        _needAnError = true;
                        _errorText =
                            "Имя должно состоять хотя бы из четырех символов!";
                        errorCounter++;
                      } else if (_description.length < 30) {
                        _needAnError = true;
                        _errorText =
                            "Описание должно состоять хотя бы из тридцати символов!";
                        errorCounter++;
                      } else if (_name.length > 25) {
                        _needAnError = true;
                        _errorText = "Имя должно быть меньше 25 символов!";
                        errorCounter++;
                      } else if (_description.length > 1000) {
                        _needAnError = true;
                        _errorText =
                            "Описание должно быть меньше 1000 символов!";
                        errorCounter++;
                      }
                      if (errorCounter == 0) {
                        _needAnError = false;
                        addRecipe(
                            name: _name,
                            description: _description,
                            authorID: "Кирилл Осипов",
                            difficulty: _difficulty,
                            timeToPrepare: _time);
                        _description = "";
                        _name = "";
                        _time = 0;
                      } else {
                        return;
                      }

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
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
                child: const Text("Добавить рецепт",
                    style: TextStyle(fontSize: 18)),
              ),
            ),
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
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        "Добавляя рецепт, вы соглашаетесь с Правилами публикации рецептов",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "Raleway",
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
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
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color.fromRGBO(252, 229, 205, 0.5),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.home,
                          color: Color.fromRGBO(255, 105, 13, 1),
                          size: 20,
                        ),
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          foregroundColor:
                              const Color.fromRGBO(255, 105, 13, 1),
                        ),
                      ),
                    ),
                    const SizedBox(width: 7),
                    Container(
                      height: 35,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color.fromRGBO(252, 229, 205, 0.5),
                      ),
                      child: TextButton.icon(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          foregroundColor:
                              const Color.fromRGBO(255, 105, 13, 1),
                        ),
                        label: const Text(
                          "Добавить",
                          style: TextStyle(
                            fontFamily: "Railway",
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: Color.fromRGBO(255, 105, 13, 1),
                          ),
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          color: Color.fromRGBO(255, 105, 13, 1),
                          size: 23,
                        ),
                      ),
                    ),
                    const SizedBox(width: 7),
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
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          foregroundColor:
                              const Color.fromRGBO(255, 105, 13, 1),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfilePage(),
                            ),
                          );
                        },
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
