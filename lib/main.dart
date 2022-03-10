import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.pink.shade200,
              snap: true,
              floating: true,
              pinned: true,
              // bottom: PreferredSize(
              //     child: Container(
              //       padding: EdgeInsets.only(top: 5, bottom: 10),
              //       width: double.maxFinite,
              //       decoration: BoxDecoration(
              //           color: Colors.pink.shade200,
              //           borderRadius: const BorderRadius.only(
              //               topLeft: Radius.circular(20),
              //               topRight: Radius.circular(20))),
              //       child: Center(
              //         child: Text(
              //           'Sliver App Bar',
              //           style: TextStyle(
              //               fontSize: 16, fontWeight: FontWeight.bold),
              //         ),
              //       ),
              //     ),
              //     preferredSize: Size.fromHeight(20)),
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: const Text(
                  'SliverAppBar',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                background: Image.asset(
                  'assets/wali.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              expandedHeight: 300,
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.yellow,
                ),
                tooltip: 'Menu',
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.comment,
                    color: Colors.green,
                  ),
                  tooltip: 'Comment',
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.settings, color: Colors.pink),
                  tooltip: 'Setting',
                )
              ],
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20, left: 20),
                    child: const Center(
                      child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                    ),
                  )
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => ListView(
                  shrinkWrap: true,
                  children: [
                    //Staring Point 1st ListTile
                    Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            offset: const Offset(0, 1),
                          ),
                        ], color: Colors.white),
                        child: ListTile(
                          leading: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.blue),
                            child: const Icon(
                              Icons.location_on,
                              color: Colors.white,
                            ),
                          ),
                          title: const Text('Location'),
                          subtitle: const Text('city colony near chicago city'),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.chevron_right)),
                        )),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            offset: Offset(0, 1),
                          ),
                        ], color: Colors.white),
                        child: ListTile(
                          leading: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                            child:
                                const Icon(Icons.settings, color: Colors.white),
                          ),
                          title: const Text('Settings'),
                          subtitle: const Text('Add your setting'),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.chevron_right)),
                        )), //Ending point
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            offset: Offset(0, 1),
                          ),
                        ], color: Colors.white),
                        child: ListTile(
                          leading: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.yellow),
                            child: const Icon(
                              Icons.sunny,
                              color: Colors.white,
                            ),
                          ),
                          title: const Text('Daytime'),
                          subtitle: const Text('Add your day'),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.chevron_right)),
                        )),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            offset: Offset(0, 1),
                          ),
                        ], color: Colors.white),
                        child: ListTile(
                          leading: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                            child: const Icon(
                              Icons.music_note_outlined,
                              color: Colors.white,
                            ),
                          ),
                          title: const Text('Music'),
                          subtitle: const Text('Add music'),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.chevron_right)),
                        )),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            offset: Offset(0, 1),
                          ),
                        ], color: Colors.white),
                        child: ListTile(
                          leading: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.pink),
                            child: const Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                          ),
                          title: const Text('Daytime'),
                          subtitle: const Text('Add your day'),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.chevron_right)),
                        )),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            offset: Offset(0, 1),
                          ),
                        ], color: Colors.white),
                        child: ListTile(
                          leading: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.deepOrange),
                            child: const Icon(
                              Icons.home,
                              color: Colors.white,
                            ),
                          ),
                          title: const Text('Home'),
                          subtitle: const Text('Add address'),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.chevron_right)),
                        )),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            offset: Offset(0, 1),
                          ),
                        ], color: Colors.white),
                        child: ListTile(
                          leading: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.yellow),
                            child: const Icon(
                              Icons.sunny,
                              color: Colors.white,
                            ),
                          ),
                          title: const Text('Daytime'),
                          subtitle: const Text('Add your day'),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.chevron_right)),
                        )),
                    // Container(
                    //     margin: EdgeInsets.symmetric(vertical: 5),
                    //     padding: EdgeInsets.all(5),
                    //     decoration: BoxDecoration(boxShadow: [
                    //       BoxShadow(
                    //         color: Colors.grey.shade200,
                    //         offset: Offset(0, 1),
                    //       ),
                    //     ], color: Colors.white),
                    //     child: ListTile(
                    //       leading: Container(
                    //         padding: const EdgeInsets.all(5),
                    //         decoration: const BoxDecoration(
                    //           shape: BoxShape.circle,
                    //           color: Colors.green,
                    //         ),
                    //         child: const Icon(
                    //           Icons.message,
                    //           color: Colors.white,
                    //         ),
                    //       ),
                    //       title: const Text('Messages'),
                    //       subtitle: const Text('Add messsages'),
                    //       trailing: IconButton(
                    //           onPressed: () {},
                    //           icon: const Icon(Icons.chevron_right)),
                    //     )),
                    // Container(
                    //     margin: EdgeInsets.symmetric(vertical: 5),
                    //     padding: EdgeInsets.all(5),
                    //     decoration: BoxDecoration(boxShadow: [
                    //       BoxShadow(
                    //         color: Colors.grey.shade200,
                    //         offset: Offset(0, 1),
                    //       ),
                    //     ], color: Colors.white),
                    //     child: ListTile(
                    //       leading: Container(
                    //         padding: const EdgeInsets.all(5),
                    //         decoration: const BoxDecoration(
                    //             shape: BoxShape.circle, color: Colors.yellow),
                    //         child: const Icon(
                    //           Icons.sunny,
                    //           color: Colors.white,
                    //         ),
                    //       ),
                    //       title: const Text('Daytime'),
                    //       subtitle: const Text('Add your day'),
                    //       trailing: IconButton(
                    //           onPressed: () {},
                    //           icon: const Icon(Icons.chevron_right)),
                    //     )),
                    // Container(
                    //     margin: EdgeInsets.symmetric(vertical: 5),
                    //     padding: EdgeInsets.all(5),
                    //     decoration: BoxDecoration(boxShadow: [
                    //       BoxShadow(
                    //         color: Colors.grey.shade200,
                    //         offset: Offset(0, 1),
                    //       ),
                    //     ], color: Colors.white),
                    //     child: ListTile(
                    //       leading: Container(
                    //         padding: const EdgeInsets.all(5),
                    //         decoration: const BoxDecoration(
                    //           shape: BoxShape.circle,
                    //           color: Colors.black,
                    //         ),
                    //         child: const Icon(
                    //           Icons.phone,
                    //           color: Colors.white,
                    //         ),
                    //       ),
                    //       title: const Text('CellNo'),
                    //       subtitle: const Text('Add contact info.'),
                    //       trailing: IconButton(
                    //           onPressed: () {},
                    //           icon: const Icon(Icons.chevron_right)),
                    //     )),
                  ],
                ),
                childCount: 7,
              ),
            )
          ],
        ),
      ),
    );
  }
}
