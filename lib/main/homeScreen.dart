import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/drawer_widget.dart';
import 'package:flutter_demo/widgets/font_widget.dart';
import 'package:flutter_demo/widgets/loader_widget.dart';
import 'package:flutter_demo/widgets/row_columns_widget.dart';
import 'package:flutter_demo/widgets/stack_widget.dart';
import 'package:flutter_demo/widgets/stack_with_alignment_widget.dart';
import 'package:flutter_demo/widgets/tab_widget.dart';
import 'detailComponent.dart';
import 'package:flutter_demo/widgets/text_field_widget.dart';
import 'package:flutter_demo/widgets/dialog_widget.dart';
import 'package:flutter_demo/widgets/staggeredGrid_widget.dart';
import 'package:flutter_demo/widgets/inkwell_widget.dart';
import 'package:flutter_demo/widgets/scrollview_widget.dart';



class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Map<String, Widget> widgetDemo = {
    'TextField': Center(child: Container(
           width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                etextField,
                Container(height: 11,),
                ptextField,
                ElevatedButton(onPressed: (){
                  String uemail = emailText.text.toString();
                  String ppassword = passText.text.toString();

                  print("email: $uemail,pass: $ppassword");

                }, child: Text("Login"))

              ],
            ))),
    'Drawer': Scaffold(
      appBar: AppBar(title: Text('Drawer Example')),
      drawer: drawer,
      body: Center(child: Text('Swipe from left or tap top-left to open drawer')),
    ),
    'Stack': Stack(
      alignment: Alignment.center,
      children: [
        stack
      ],
    ),
    'Stack with Alignment' : Scaffold(
      body: stackAlignment,
    ),
    'Row&Columns': Scaffold(
      // appBar: AppBar(title: Text('Row and Columns and SizedBox Example')),
      body: rowcolumn,
    ),
    'Button': ElevatedButton(
      onPressed: () {},
      child: Text('Click Me'),
    ),

    'Dialog': Scaffold(
      body: Center(
        child: dialogWidget,
      ),

  ),
    'StaggeredGridView': Scaffold(
      body: staggeredGrid,
    ),

    'InkWell' : Scaffold(
      body: inkWell,
    ),
    'ScrollView' : Scaffold(
      body: singlechildscroll,
    ),
    'TabBar' : Scaffold(
      body: tabBarWidget,
    ),
    'Loader': loaderWidget,
    'Fonts': appContentWidget,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widget Explorer')),
      body: ListView(
        children: widgetDemo.entries.map((entry) {
          return ListTile(
            title: Text(entry.key),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailScreen(title: entry.key, widgetDemo: entry.value),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}