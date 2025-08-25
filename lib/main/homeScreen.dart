import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/date_picker.dart';
import 'package:flutter_demo/widgets/drawer_widget.dart';
import 'package:flutter_demo/widgets/font_widget.dart';
import 'package:flutter_demo/widgets/loader_widget.dart';
import 'package:flutter_demo/widgets/page_transition_widget.dart';
import 'package:flutter_demo/widgets/row_columns_widget.dart';
import 'package:flutter_demo/widgets/stack_widget.dart';
import 'package:flutter_demo/widgets/stack_with_alignment_widget.dart';
import 'package:flutter_demo/widgets/tab_widget.dart';
import 'package:flutter_demo/widgets/uiOrientation_widget.dart';
import 'detailComponent.dart';
import 'package:flutter_demo/widgets/text_field_widget.dart';
import 'package:flutter_demo/widgets/dialog_widget.dart';
import 'package:flutter_demo/widgets/staggeredGrid_widget.dart';
import 'package:flutter_demo/widgets/inkwell_widget.dart';
import 'package:flutter_demo/widgets/scrollview_widget.dart';
import 'package:flutter_demo/widgets/skeletonText_widget.dart';
import 'package:flutter_demo/widgets/lazyLoader_widget.dart';
import 'package:flutter_demo/main/formValidation.dart';
import 'package:flutter_demo/main/counterPage.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final ValueNotifier<bool> isGridView = ValueNotifier(false);

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
    'Stack': stack,
    'Stack with Alignment' : stackAlignment,
    'Row&Columns': rowcolumn,
    'Dialog': dialogWidget,
    'StaggeredGridView': staggeredGrid,
    'InkWell' :inkWell,
    'ScrollView' : singlechildscroll,
    'TabBar' : Scaffold(
      body: tabBarWidget,
    ),
    'Loader': loaderWidget,
    'Fonts': appContentWidget,
    'SkeletonText': skeletonList,
    'LazyLoader': LazyLoadWidget() ,
    'UIOrientation': uiOrientation,
    'pageTransition': pageTransitionWidget,
    'datePicker':datePicker,
    'formValidation':  FormValidationDemoWidget(),
    'counterPage': CounterPage(),
  };
  @override
  Widget build(BuildContext context) {
    final entries = widgetDemo.entries.toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Explorer'),
        actions: [
          TextButton(
            onPressed: () => isGridView.value = false,
            child: const Text("List", style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold)),
          ),
          TextButton(
            onPressed: () => isGridView.value = true,
            child: const Text("Grid", style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold)),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: isGridView,
        builder: (context, bool grid, _) {
          return grid
              ? GridView.builder(
            padding: const EdgeInsets.all(8),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 3,
            ),
            itemCount: entries.length,
            itemBuilder: (context, index) {
              final entry = entries[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DetailScreen(title: entry.key, widgetDemo: entry.value),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(entry.key),
                ),
              );
            },
          )
              : ListView(
            children: entries.map((entry) {
              return ListTile(
                title: Text(entry.key),
                trailing: const Icon(Icons.arrow_forward_ios),
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
          );
        },
      ),
    );
  }
}
