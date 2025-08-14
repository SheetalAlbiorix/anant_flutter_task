import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

Widget get skeletonList => ListView.builder(
  scrollDirection: Axis.vertical,
  physics: const BouncingScrollPhysics(),
  itemCount: 5,
  itemBuilder: (BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white70,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SkeletonAnimation(
              shimmerColor: Colors.grey.shade400,
              child: Container(
                width: 70.0,
                height: 70.0,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SkeletonAnimation(
                  shimmerColor: Colors.grey.shade400,
                  child: Container(
                    height: 15,
                    width: MediaQuery.of(context).size.width * 0.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[300],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                SkeletonAnimation(
                  shimmerColor: Colors.grey.shade400,
                  child: Container(
                    width: 60,
                    height: 13,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[300],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  },
);
