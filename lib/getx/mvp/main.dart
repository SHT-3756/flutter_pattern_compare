import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MVP Demo',
      home: Container(),
    );
  }
}

/*
Model
 사용자 인터페이스에 표시되거나 실행될 데이터를 정의하는 인터페이스이다.
View
  데이터(모델)를 표시하고 사용자 명령을 presenter 에게 전달해 해당 데이터에 대한 작업을 수행하는 수동 인터페이스이다.
Presenter
  모델과 뷰에 따라 작업을 수행한다.
  레포지토리(모델)에서 데이터를 검색하고 뷰에 표시하기 위해 형식(타입)을 지정한다.


=======
MVP 패턴에서 presenter 는 모델을 처리하고 뷰를 업데이트하는 중간 중재자이다.
MVP View 와 Presenter 는 인터페이스를 통해 완전히 분리되어 서로 통신한다.
단위 테스트를 하기 쉬운 이유이다.

 */