import 'package:flutter/material.dart';
import 'package:flutter_state_compare/provider/mvc/model/result_model.dart';

class DetailResultScreen extends StatefulWidget {
  Result? result;

  DetailResultScreen(this.result, {Key? key}) : super(key: key);

  @override
  State<DetailResultScreen> createState() => _DetailResultScreenState();
}

class _DetailResultScreenState extends State<DetailResultScreen> {
  @override
  void initState() {
    super.initState();
    if (widget.result == null) {
      print('비어있을때 예외처리 ');
    }
  }

  @override
  Widget build(BuildContext context) {
    if(widget.result == null)  return const Center(child: Text('error'));
    return Scaffold(
      appBar: AppBar(title: const Text('g'),),
      body: Center(
        child: Column(
          children: [
            Text(widget.result!.title),
            Text(widget.result!.dateString),
            Text(widget.result!.status),
            Text(widget.result!.productImage),
            Text(widget.result!.winCount.toString()),
            Text(widget.result!.applyCount.toString()),
          ],
        ),
      ),
    );
  }
}
