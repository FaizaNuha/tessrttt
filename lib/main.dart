import 'package:flutter/material.dart';

void main() {
  runApp(
      MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true, //also its by default true
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 30,
          ),
        ),

        backgroundColor: Colors.blueAccent,
      ),
      body: ImageFeed(),
    );

  }
}

class ImageFeed extends StatelessWidget {
  const ImageFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        final isPortrait = orientation == Orientation.portrait;


        return isPortrait
            ? Center(
          child: SingleChildScrollView(
            child: Column(

              children: [

                Container(
                  padding: EdgeInsets.all(8.0),
                  width: 300,
                  height: 300,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(
                      'https://www.zdnet.com/a/img/resize/ba1b1ab92085d777ab5e313b34c66a94b7aa1236/2023/06/05/79a43eb8-ce38-488c-8cc0-e04699aaca7f/bing.jpg?auto=webp&width=1280',
                    ),
                  ),

                ),
                SizedBox(
                  width: 200,
                    height: 30,
                ),
                Text("John Doe", style: TextStyle(color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),),
                SizedBox(
                  width: 500,
                  height: 120,
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: [
                      Text(
                          '\n\n….so whenever guidance comes to you from Me, then whoever follows my guidance, then there will neither be any fear on them nor will they grieve. -Ayat 38'),
                    ],
                  ),
                ),
                Scrollbar(
                    child: SizedBox(
                      height: 700,
                      width: 400,

                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 1,
                        ),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.all(5),
                            child: Column(
                              children: [
                                Image.network(
                                  'https://media.gcflearnfree.org/ctassets/topics/246/share_size_medium.jpg',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.fill,
                                ),
                                SizedBox(height: 2),
                              ],
                            ),
                          );
                        },
                      ),
                    )),

                //leading: ImageIcon
              ],
            ),
          ),
        )
            : Center(
          child: SingleChildScrollView(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 300,
                  height: 300,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1564648351416-3eec9f3e85de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
                    ),
                  ),

                ),
                Column(
                  children: [

                    Text("John Doe", style: TextStyle(color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),),
                    SizedBox(
                      width: 400,
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: [
                          Text(
                              'I want to express my sincere gratitude for this Flutter course. It has been an incredible journey so far, and I am excited to apply what I have learned to make a positive impact on my life. JazakAllah for this wonderful opportunity.'),
                        ],
                      ),
                    ),
                    Scrollbar(
                        child: SizedBox(
                          height: 700,
                          width: 400,

                          child: GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 1,
                            ),
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return Container(
                                padding: EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    Image.network(
                                      'https://images.unsplash.com/photo-1443632826930-7e5bc4aa7fa0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXw4MDY4NTMxNXx8ZW58MHx8fHx8&auto=format&fit=crop&w=900&q=60',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.fill,
                                    ),
                                    SizedBox(height: 2),
                                  ],
                                ),
                              );
                            },
                          ),
                        )),

                    //leading: ImageIcon
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}