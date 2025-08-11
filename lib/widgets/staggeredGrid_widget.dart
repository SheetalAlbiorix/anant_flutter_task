// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
//
//
// class StaggeredGridViewDemo extends StatelessWidget{
//   final List<String> imageUrls = [
//     'https://picsum.photos/300/300?1',
//     'https://picsum.photos/300/200?2',
//     'https://picsum.photos/200/300?3',
//     'https://picsum.photos/400/300?4',
//     'https://picsum.photos/250/400?5',
//     'https://picsum.photos/350/250?6',
//     'https://picsum.photos/300/350?7',
//     'https://picsum.photos/450/300?8',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Staggered Grid Image Demo',
//       home: Scaffold(
//         // appBar: AppBar(
//         //   title: Text('Staggered Grid List with Images'),
//         //   backgroundColor: Colors.orangeAccent,
//         // ),
//         body: Padding(
//           padding: const EdgeInsets.all(8.0),
//            child: MasonryGridView.count(
//                crossAxisCount: 3,
//               mainAxisSpacing: 10,
//              crossAxisSpacing: 8,
//              scrollDirection: Axis.horizontal,
//              itemCount: imageUrls.length,
//              itemBuilder: (context,index){
//                  return ClipRRect(
//                    borderRadius: BorderRadius.circular(15),
//                    child: Image.network(
//                      imageUrls[index],
//                      fit: BoxFit.cover,
//                    ),
//                  );
//                }
//            ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


final List<String> imageUrls = [
    'https://picsum.photos/300/300?1',
    'https://picsum.photos/300/200?2',
    'https://picsum.photos/200/300?3',
    'https://picsum.photos/400/300?4',
    'https://picsum.photos/250/400?5',
    'https://picsum.photos/350/250?6',
    'https://picsum.photos/300/350?7',
    'https://picsum.photos/450/300?8',
  ];

Widget get staggeredGrid => MasonryGridView.count(
  crossAxisCount: 3,
  mainAxisSpacing: 10,
  crossAxisSpacing: 8,
  scrollDirection: Axis.horizontal,
  itemCount: imageUrls.length,
  itemBuilder: (context, index) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.network(
        imageUrls[index],
        fit: BoxFit.cover,
      ),
    );
  },
);
