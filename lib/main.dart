import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Feed'),
        ),
        body: ImageFeed(),
      ),
    );
  }
}

class ImageFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        final isPortrait = orientation == Orientation.portrait;
        final itemCount = 10;

        return isPortrait
            ? ListView.builder(
          itemCount: itemCount,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.network(
                    'https://via.placeholder.com/150',
                    width: 150,
                    height: 150,
                  ),
                  SizedBox(height: 8.0),

                ],
              ),
            );
          },
        )
            : GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),

          itemCount: itemCount,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.network(
                    'https://via.placeholder.com/150',
                    width: 150,
                    height: 150,
                  ),
                  SizedBox(height: 8.0),

                ],
              ),
            );
          },
        );
      },
    );
  }
}
