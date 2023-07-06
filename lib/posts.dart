import 'package:flutter/material.dart';
import 'package:threads/theme.dart';

class FeedPost extends StatefulWidget {
  const FeedPost({Key? key}) : super(key: key);

  @override
  State<FeedPost> createState() => _FeedPostState();
}

class _FeedPostState extends State<FeedPost> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            width: 1,
            color: onSurfaceLowVisibilityColor,
          ),
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  width: 34,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AspectRatio(
                        aspectRatio: 1.0,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: onSurfaceLowVisibilityColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Expanded(
                        child: Center(
                          child: Container(
                            width: 2,
                            color: onSurfaceLowVisibilityColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("nyxcosmetics"),
                          const SizedBox(width: 2),
                          Icon(Icons.ac_unit, size: 14, color: Colors.blue),
                          Spacer(),
                          Text(
                            "2h",
                            style: TextStyle(
                              color: onSurfaceLowVisibilityColor,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Icon(
                            Icons.more_horiz,
                            size: 18,
                            color: onSurfaceHighVisibilityColor,
                          ),
                        ],
                      ),
                      Text("Boss called me in for a 1 on 1 - if I lose my sense of humor, y'all know why"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
