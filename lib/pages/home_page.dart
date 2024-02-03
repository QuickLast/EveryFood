import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cooking_app/custom_widgets.dart';
import 'package:cooking_app/func.dart';
import 'package:cooking_app/pages/welcome_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final db = FirebaseFirestore.instance;

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
                    headerButton: HeaderButton(
                      icon: const Icon(Icons.logout, size: 20),
                      padding: const EdgeInsets.only(left: 2),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WelcomePage(),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Search Bar + Filter
                  const FilteredSearchBar(),
                  const SizedBox(height: 20),
                  // Tags Block
                  // const Text(
                  //   "Не знаете, что искать? Попробуйте эти ингредиенты:",
                  //   style: TextStyle(
                  //       fontFamily: "Raleway", fontWeight: FontWeight.bold),
                  // ),
                  // Wrap(
                  //   runSpacing: 0,
                  //   alignment: WrapAlignment.center,
                  //   children: <Widget>[
                  //     FoodTag(
                  //       label: "Огурец",
                  //       color: Color.fromARGB(255, 141, 241, 110),
                  //       selectedColor: Color.fromARGB(255, 109, 189, 85),
                  //     ),
                  //     const SizedBox(width: 5),
                  //     FoodTag(
                  //       label: "Томат",
                  //       color: Color.fromARGB(255, 255, 187, 160),
                  //       selectedColor: Color.fromARGB(255, 206, 150, 128),
                  //     ),
                  //     const SizedBox(width: 5),
                  //     FoodTag(
                  //       label: "Клубника",
                  //       color: Color.fromARGB(255, 255, 97, 69),
                  //       selectedColor: Color.fromARGB(255, 206, 78, 56),
                  //     ),
                  //     const SizedBox(width: 5),
                  //     FoodTag(
                  //       label: "Сельдерей",
                  //       color: Color.fromARGB(255, 198, 255, 160),
                  //       selectedColor: Color.fromARGB(255, 160, 207, 129),
                  //     ),
                  //     const SizedBox(width: 5),
                  //   ],
                  // ),
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
                        width: MediaQuery.sizeOf(context).width / 2 - 25,
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
                                      fontSize: 18,
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
                        width: MediaQuery.sizeOf(context).width / 2 - 25,
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
                                      fontSize: 18,
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
                      textAlign: TextAlign.center,
                      "Все рецепты:",
                      style: TextStyle(
                          fontFamily: "Dela",
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  const SizedBox(height: 15),
                  StreamBuilder(
                      stream: db.collection('recipes').snapshots(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (!snapshot.hasData) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        return ListView.separated(
                          shrinkWrap: true,
                          itemCount: snapshot.data?.docs.length,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            DocumentSnapshot recipesData =
                                snapshot.data.docs[index];
                            return InkWell(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              splashColor: Color.fromARGB(255, 255, 223, 142),
                              focusColor: const Color.fromRGBO(255, 187, 13, 1),
                              hoverColor: const Color.fromRGBO(255, 187, 13, 1),
                              highlightColor:
                                  const Color.fromRGBO(255, 187, 13, 1),
                              onTap: () {},
                              child: Container(
                                width: MediaQuery.sizeOf(context).width - 20,
                                height: 85,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(18))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: [
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
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              recipesData['name'].toString(),
                                              style: const TextStyle(
                                                  fontFamily: "Raleway",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17),
                                            ),
                                            const SizedBox(height: 2),
                                            Text(
                                              recipesData['authorID']
                                                  .toString(),
                                              style: const TextStyle(
                                                  fontFamily: "Raleway",
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            padding: const EdgeInsets.only(
                                                top: 4,
                                                bottom: 4,
                                                left: 5,
                                                right: 5),
                                            decoration: BoxDecoration(
                                              color:
                                                  recipesData['difficulty'] ==
                                                          "Средне"
                                                      ? const Color.fromRGBO(
                                                          255, 187, 13, 1)
                                                      : const Color.fromARGB(
                                                          255, 133, 236, 137),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                            ),
                                            child: Text(
                                              recipesData['difficulty']
                                                  .toString(),
                                              style: const TextStyle(
                                                  fontFamily: "Raleway",
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                          ),
                                          const SizedBox(height: 4),
                                          Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.alarm,
                                                size: 12,
                                              ),
                                              SizedBox(width: 2),
                                              Text(
                                                "${recipesData['timeToPrepare']} мин",
                                                style: TextStyle(
                                                    fontFamily: "Raleway",
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 12),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 10),
                        );
                      })
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
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.only(left: 10, right: 15),
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          foregroundColor:
                              const Color.fromRGBO(255, 105, 13, 1),
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
                        onPressed: () {},
                        child: const Icon(
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
