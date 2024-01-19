import 'package:flutter/material.dart';
import 'package:cooking_app/pages.dart';

class Header extends StatelessWidget {
  const Header({required this.title, required this.iconButton, super.key});
  final String title;
  final IconButton iconButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
              color: Color.fromRGBO(252, 229, 205, 1),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          width: 40,
          height: 40,
          child: Center(child: iconButton),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontFamily: 'Dela',
              fontWeight: FontWeight.w100,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}

class FilteredSearchBar extends StatefulWidget {
  const FilteredSearchBar({super.key});

  @override
  State<FilteredSearchBar> createState() => _FilteredSearchBarState();
}

class _FilteredSearchBarState extends State<FilteredSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          child: SearchBar(
              leading: const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Icon(Icons.search),
              ),
              backgroundColor: MaterialStateProperty.all(
                const Color.fromRGBO(238, 240, 242, 1),
              ),
              shadowColor: MaterialStateProperty.all(Colors.transparent),
              overlayColor: MaterialStateProperty.all(
                Colors.white,
              ),
              constraints: const BoxConstraints(minHeight: 40),
              textStyle: MaterialStateProperty.all(
                const TextStyle(
                  color: Color.fromRGBO(136, 136, 136, 1),
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.normal,
                ),
              ),
              hintText: 'Введите рецепт или ингредиент',
              hintStyle: MaterialStateProperty.all(
                const TextStyle(
                  color: Color.fromRGBO(121, 121, 121, 1),
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.normal,
                ),
              )),
        ),
        const SizedBox(width: 15),
        Container(
          decoration: const BoxDecoration(
              color: Color.fromRGBO(252, 229, 205, 1),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          width: 40,
          height: 40,
          child: Center(
            child: IconButton(
              icon: const Padding(
                padding: EdgeInsets.only(left: 0),
                child: Icon(
                  Icons.filter_list,
                  size: 25,
                  color: Color.fromRGBO(255, 104, 13, 1),
                ),
              ),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}

class FoodTag extends StatelessWidget {
  const FoodTag(
      {required this.label,
      required this.color,
      required this.selectedColor,
      super.key});

  final String label;
  final Color color;
  final Color selectedColor;

  @override
  Widget build(BuildContext context) {
    return InputChip(
      backgroundColor: color,
      selectedColor: selectedColor,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      pressElevation: 0,
      onPressed: () {},
      label: Text(
        label,
        style: const TextStyle(
          fontFamily: "Raleway",
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class MixButton extends StatelessWidget {
  const MixButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepOrangeAccent,
      borderRadius: const BorderRadius.all(
        Radius.circular(25),
      ),
      child: InkWell(
        onTap: () {},
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
        child: Container(
          height: 60,
          padding: const EdgeInsets.only(left: 12, right: 12),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(255, 104, 13, 1),
                Color.fromRGBO(255, 190, 21, 1),
              ],
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.only(top: 15, left: 8, right: 8),
            child: Text(
              "MIX",
              style: TextStyle(
                  fontFamily: "Railway",
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
