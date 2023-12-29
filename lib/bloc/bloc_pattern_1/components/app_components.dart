import 'package:flutter/material.dart';

Widget bottomNavi(Function() onTap) {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: ElevatedButton(onPressed: onTap, child: const Padding(padding: EdgeInsets.all(30),child: Text('로그인'),)),
  );
}

Widget loadingComponent() {
  return const Center(child: CircularProgressIndicator());
}

Widget lockWidget() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
      color: Colors.grey.withOpacity(0.4),
      borderRadius: BorderRadius.circular(15),
    ),
    height: 100,
    child: const Icon(
      Icons.lock,
      color: Colors.grey,
      size: 24,
      semanticLabel: '히히 안뇽',
    ),
  );
}
