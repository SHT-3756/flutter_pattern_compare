// import 'package:flutter/material.dart';
// import 'package:flutter_state_compare/provider/mvc/view/detail_result/detail_result_screen.dart';
// import 'package:provider/provider.dart';
//
// import '../../controller/result_controller.dart';
//
// class ResultScreen extends StatelessWidget {
//   const ResultScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('MVC DEMO'),),
//       body: Consumer<ResultProvider>(
//         builder: (context, provider, child) {
//           return ListView(
//             children: [],
//           );
//         },
//       ),
//     );
//   }
// }
//
// // class ResultScreen extends StatelessWidget {
// //   const ResultScreen({Key? key}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     final controller = context.watch<ResultController>();
// //     return Scaffold(
// //       appBar: AppBar(title: const Text('MVVM Demo')),
// //       body:
// //       // Provider<ResultController>(
// //       //   create: (_) => ResultController(),
// //       //   builder: (context, child) {
// //
// //            ListView(
// //             children: [
// //               ...controller.results.map(
// //                 (result) => GestureDetector(
// //                   onTap: () async {
// //                     // 페이지 이동
// //                     print('클릭');
// //                     Navigator.push(
// //                       context,
// //                       MaterialPageRoute(builder: (context) => DetailResultScreen(result)),
// //                     );
// //                   },
// //                   child: ListTile(
// //                     title: Text(result.title),
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           )
// //         // },
// //       );
// //     // );
// //   }
// // }
