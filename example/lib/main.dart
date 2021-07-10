import 'package:flutter/material.dart';
import 'package:subsocial_sdk/subsocial_sdk.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Space> _spaces = [];
  @override
  void initState() {
    super.initState();
    // this loads subsocial sdk for the first time.
    final _ = Subsocial.instance;
    loadPublicSpaces();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Subsocial Flutter'),
        ),
        body: ListView.builder(
          itemCount: _spaces.length,
          shrinkWrap: true,
          itemBuilder: (context, i) => SpaceWidget(_spaces[i]),
        ),
      ),
    );
  }

  Future<void> loadPublicSpaces({int from = 1, int to = 50}) async {
    final sdk = await Subsocial.instance;
    final List<Space> spaces = [];
    for (int i = from; i <= to; i++) {
      try {
        final space = await sdk.spaceById(i);
        spaces.add(space);
      } catch (e) {
        print(e);
        continue;
      }
    }
    setState(() {
      _spaces.addAll(spaces);
    });
  }
}

class SpaceWidget extends StatelessWidget {
  final Space space;
  const SpaceWidget(this.space);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(space.handle),
      ),
    );
  }
}
