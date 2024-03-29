import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../UI_components/Color_contants.dart';
import '../Bar_Search_UI/HomePageBarSearch.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppBarColor,
          centerTitle: true,
          title: Text("Search medicine",style: AppBarFonts(textStyle: TextStyle(
              fontSize: 18.sp
          ))),
          actions: [
            IconButton(
                onPressed: (){
                  showSearch(
                      context: context,
                      delegate: MySearchDelaget());
                },
                icon: Icon(Icons.search))
          ],
        ),
      ),
    );
  }
}

