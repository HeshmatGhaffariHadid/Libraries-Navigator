import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_like_button/insta_like_button.dart';

class LikeButton extends StatefulWidget {
  const LikeButton({super.key});

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  int likeCounter = 0;
  int commentCounter = 0;
  int dislikeCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Like Button pack'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InstaLikeButton(
              image: const AssetImage('images/mersadJan.jpg'),
              onChanged: () {
                setState(() {
                  likeCounter++;
                });
              },
              icon: Icons.favorite,
              iconColor: Colors.red,
              iconSize: 72,
              height: 400,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      likeCounter++;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(FontAwesomeIcons.heart,
                            size: 22, color: Colors.white),
                        const SizedBox(width: 7),
                        Text(
                          likeCounter.toString(),
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (likeCounter > 0) {
                        likeCounter--;
                      } else if (likeCounter == 0) {
                        dislikeCounter++;
                      } else {
                        dislikeCounter++;
                      }
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.heart_broken_outlined,
                            size: 22, color: Colors.white),
                        const SizedBox(width: 7),
                        Text(
                          dislikeCounter.toString(),
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      commentCounter++;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.mode_comment_outlined,
                            size: 22, color: Colors.white),
                        const SizedBox(width: 7),
                        Text(
                          commentCounter.toString(),
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
