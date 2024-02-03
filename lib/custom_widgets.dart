import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({required this.title, required this.headerButton, super.key});
  final String title;
  final HeaderButton headerButton;

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
          child: Center(child: headerButton),
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
              Color.fromARGB(255, 251, 251, 251),
            ),
            shadowColor: MaterialStateProperty.all(Colors.transparent),
            overlayColor: MaterialStateProperty.all(
              Colors.white,
            ),
            constraints: const BoxConstraints(minHeight: 40),
            textStyle: MaterialStateProperty.all(
              const TextStyle(
                color: Colors.black,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.normal,
              ),
            ),
            hintText: 'Введите рецепт или ингредиент',
            hintStyle: MaterialStateProperty.all(
              const TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(121, 121, 121, 1),
                fontFamily: 'Raleway',
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
        const SizedBox(width: 15),
        SizedBox(
          width: 40,
          height: 40,
          child: TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.all(0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              foregroundColor: Color.fromRGBO(255, 105, 13, 1),
              backgroundColor: Color.fromRGBO(252, 229, 205, 1),
            ),
            onPressed: () {},
            child: Icon(
              Icons.filter_list,
              size: 25,
              color: Color.fromRGBO(255, 104, 13, 0.8),
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
    return Container(
      height: 60,
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
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.only(left: 10, right: 10),
          minimumSize: Size.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          foregroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
        onPressed: () {},
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
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
    );
  }
}

class HeaderButton extends StatelessWidget {
  const HeaderButton(
      {super.key,
      this.padding = const EdgeInsets.all(0),
      required this.icon,
      required this.onPressed});
  final EdgeInsets padding;
  final Icon icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(0),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        foregroundColor: Color.fromRGBO(255, 105, 13, 1),
        backgroundColor: Color.fromRGBO(252, 229, 205, 1),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: padding,
        child: icon,
      ),
    );
  }
}
