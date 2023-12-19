import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_compare/riverpod/example/common/utils/logger.dart';
import 'package:flutter_state_compare/riverpod/example/providers/auto_dispose/results_provider.dart';

void main() {
  runApp(
    ProviderScope(
      observers: [CustomLogger()],
      child: MaterialApp(home: const HomeScreen()),
    ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AutoDisPoseTestScreen()));
              },
              child: const Text('auto-dispose'),
            ),
          ],
        ),
      ),
    );
  }
}

class AutoDisPoseTestScreen extends ConsumerWidget {
  const AutoDisPoseTestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(ResultsAutoDisposeProvider);

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
            child: state.when(
          data: (data) => Text(data.toString()),
          error: (err, stack) => Text(err.toString()),
          loading: () => const CircularProgressIndicator(),
        )),
      ),
    );
  }
}
