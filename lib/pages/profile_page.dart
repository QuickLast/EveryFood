import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cooking_app/custom_widgets.dart';
import 'package:cooking_app/pages/add_page.dart';
import 'package:cooking_app/pages/home_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, this.userData});
  final DocumentSnapshot? userData;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 25),
                  // Back Button + Title
                  Header(
                    title: "Профиль",
                    headerButton: HeaderButton(
                      icon: const Icon(Icons.arrow_back_ios, size: 20),
                      padding: const EdgeInsets.only(left: 10),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  StreamBuilder(
                    stream: db.collection('users').snapshots(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (!snapshot.hasData) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return Column(
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            "${snapshot.data?.docs[0]['username']}",
                            style: TextStyle(
                                fontFamily: "Raleway",
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            "${snapshot.data?.docs[0]['email']}",
                            style: TextStyle(
                                fontFamily: "Raleway",
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            )
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
                              builder: (context) => const AddPage(),
                            ),
                          );
                        },
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
                      child: TextButton.icon(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          foregroundColor:
                              const Color.fromRGBO(255, 105, 13, 1),
                        ),
                        onPressed: () {},
                        label: const Text(
                          "Профиль",
                          style: TextStyle(
                            fontFamily: "Railway",
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: Color.fromRGBO(255, 105, 13, 1),
                          ),
                        ),
                        icon: const Icon(
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
