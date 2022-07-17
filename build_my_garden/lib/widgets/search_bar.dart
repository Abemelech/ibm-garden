import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchBar extends StatelessWidget {
  TextEditingController searchController;
  late Function(String) onSubmit;
  Function() onXMarkPress;

  SearchBar(
      {Key? key,
      required this.searchController,
      required this.onSubmit,
      required this.onXMarkPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(
      controller: searchController,
      onSubmitted: onSubmit,
      // _searchResult = search;
      // _searched = true;
      // setState(() {});

      onSuffixTap: onXMarkPress,
      // _searchResult = "";
      // _searched = false;
      // _searchController.clear();
      // setState(() {});

      placeholderStyle: const TextStyle(
        color: Color.fromARGB(255, 157, 151, 112),
      ),
      style: const TextStyle(
        color: Color.fromARGB(255, 75, 72, 52),
      ),
      itemColor: const Color.fromARGB(255, 173, 164, 116),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(90)),
        color: const Color.fromARGB(255, 255, 228, 182),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 4),
          )
        ],
      ),
    );
  }
}
