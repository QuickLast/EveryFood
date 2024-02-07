import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cooking_app/custom_widgets.dart';
import 'package:cooking_app/func.dart';
import 'package:cooking_app/pages/home_page.dart';
import 'package:cooking_app/pages/welcome_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class RecipePage extends StatefulWidget {
  const RecipePage({super.key, required this.recipeData});
  final DocumentSnapshot recipeData;

  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 25),
                  // Back Button + Title
                  Header(
                    title: widget.recipeData['name'],
                    headerButton: HeaderButton(
                      icon: const Icon(Icons.arrow_back_ios, size: 20),
                      padding: const EdgeInsets.only(left: 10),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: MediaQuery.sizeOf(context).width - 20,
                    height: MediaQuery.sizeOf(context).width - 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/blini.jpeg",
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        "Автор: ${widget.recipeData['authorID']}",
                        style: TextStyle(
                            fontFamily: "Raleway",
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        "${widget.recipeData['timeToPrepare']} минут",
                        style: TextStyle(
                            fontFamily: "Raleway",
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                  Text(
                    textAlign: TextAlign.center,
                    "Опубликовано: ${DateFormat.yMMMMd('en_US').format(widget.recipeData['creationTime'].toDate())}",
                    style: TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 7),
                  Text(
                    textAlign: TextAlign.start,
                    "${widget.recipeData['description']}",
                    style: TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 17,
                        fontWeight: FontWeight.normal),
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
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[],
          ),
        ),
      ),
    );
  }
}
