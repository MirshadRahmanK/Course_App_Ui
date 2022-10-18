import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restapi/Model_Class/modedata.dart';
import 'package:restapi/helper_Service/helper_service.dart';
import 'package:restapi/Widgets/courseTile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Courses> cources = [];
  bool isLoaded = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  getData() async {
    cources = (await HelperService().getData())!;
    if (cources == null) {
      setState(() {
        isLoaded = false;
      });
    } else {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromRGBO(238, 196, 188, 1),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffF56A4D),
        title: Text("Courses"),
      ),
      body: Visibility(
        visible: isLoaded,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return postTile(courses: cources[index]);
          },
          itemCount: cources.length,
        ),
        replacement: Center(child: CircularProgressIndicator()),
      ),
    ));
  }
}
