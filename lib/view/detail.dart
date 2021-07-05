import 'package:becek/model/modelDetailUser.dart';
import 'package:becek/view_model/view_model_detail_user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Detail extends StatefulWidget {
  final int id;
  Detail({this.id});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  DetailUser d;

  void getDataUser({int id}) {
    ViewModelDetailUser.getUser(id: id).then((value) {
      setState(() {
        d = value;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getDataUser(id: widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Text(d == null ? "memuat" : d.data.firstName),
          TextButton(
              onPressed: () {
                try {
                  Get.to(
                    () => Detail(
                      id: widget.id + 1,
                    ),
                    preventDuplicates: false,
                  );
                } catch (e) {
                  print('error + $e');
                }
              },
              child: Text('Pergi ke' + (widget.id + 1).toString()))
        ],
      ),
    );
  }
}
