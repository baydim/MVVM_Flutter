import 'package:becek/view/detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: LIst());
  }
}

class LIst extends StatefulWidget {
  @override
  _LIstState createState() => _LIstState();
}

class _LIstState extends State<LIst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          for (var i = 1; i < 8; i++)
            TextButton(
                onPressed: () {
                  Get.to(
                    () => Detail(
                      id: i,
                    ),
                  );
                },
                child: Text('Ke user $i'))
        ],
      ),
    );
  }
}
