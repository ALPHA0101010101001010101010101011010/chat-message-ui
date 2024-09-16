import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          Row(
            children: [
              const TitleWithCustomUnderLine(
                text: "Recomended",
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.green,
                ),
                onPressed: () {},
                child: const Text("more"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderLine extends StatelessWidget {
  const TitleWithCustomUnderLine({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(
                right: kDefaultPadding / 4,
              ),
              height: 7,
              color: kPrimaryColor.withOpacity(0.3),
            ),
          ),
        ],
      ),
    );
  }
}
