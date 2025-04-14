import 'package:flutter/material.dart';
import 'package:smooth_refresh/smoothrefresh_component.dart';

/// Example application demonstrating the dropdown_component package.
class MyApp extends StatelessWidget {
  /// Creates a [MyApp] instance.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'smooth refresh Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Smooth Refresh Example')),
      body: SmoothRefresh(
        onRefresh: () async {
          await Future.delayed(Duration(seconds: 4));
        },
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(
              30,
              (index) => ListTile(
                title: Text('Item $index'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
