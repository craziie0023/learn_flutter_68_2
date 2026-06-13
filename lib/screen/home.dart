import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("assets/images/juno.png", width: 200, height: 200),
        SizedBox(height: 20),
        Image.network(
          "https://d1grca2t3zpuug.cloudfront.net/2025/05/chiikawa1-1080x608-1747966765.webp",
          width: 200,
          height: 200,
        ),
      ],
    );
  }
}
