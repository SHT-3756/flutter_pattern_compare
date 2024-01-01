import 'package:flutter/material.dart';

Widget productsWidget({required List<String> items}) {
  return SizedBox(
    height: 100,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: List.generate(
        items.length,
            (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          width: 100,
          height: 80,
          color: Colors.grey.withOpacity(0.5),
          child: Center(child: Text('item [${items[index]}]')),
        ),
      ),
    ),
  );
}
