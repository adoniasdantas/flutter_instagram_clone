import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveWrapper.of(context).isDesktop;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: isDesktop ? 16 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 14, 16),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage(
                    'https://yt3.ggpht.com/ytc/AAUvwnjuw5lwktWIwcUABoym8Cr2PWMpesiZLm31lT5lRA=s900-c-k-c0x00ffffff-no-rj',
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    'danielcioilfi',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  child: Icon(
                    Icons.more_horiz_sharp,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Image.network(
            'https://yt3.ggpht.com/ytc/AAUvwnjuw5lwktWIwcUABoym8Cr2PWMpesiZLm31lT5lRA=s900-c-k-c0x00ffffff-no-rj',
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  color: Colors.white,
                  onPressed: () {},
                ),
                const SizedBox(width: 4),
                IconButton(
                  icon: Icon(Icons.messenger_outline),
                  color: Colors.white,
                  onPressed: () {},
                ),
                const SizedBox(width: 4),
                IconButton(
                  icon: Icon(Icons.send),
                  color: Colors.white,
                  onPressed: () {},
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: Container(),
                ),
                IconButton(
                  icon: Icon(Icons.bookmark_border),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Curtido por danielciolfi e outras 300 pessoas',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(width: 4),
                Text(
                  'HÁ 1 HORA',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          if (isDesktop) ...[
            Divider(color: Colors.white, height: 0.1),
          ]
        ],
      ),
    );
  }
}
