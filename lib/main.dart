import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:splashscreen/second_screen.dart';

void main() => runApp(StaggeredGridExample());

class DisplayModel {
  DisplayModel({required this.image, required this.label});
  final String image, label;
}

class StaggeredGridExample extends StatefulWidget {
  @override
  _StaggeredGridExampleState createState() => _StaggeredGridExampleState();
}

class _StaggeredGridExampleState extends State<StaggeredGridExample> {
  List<DisplayModel> images = [
    DisplayModel(
      image:
          'https://images.unsplash.com/photo-1611601322175-ef8ec8c85f01?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=700&q=80',
      label: 'Cotton Dress',
    ),
    DisplayModel(
      image:
          'https://images.unsplash.com/photo-1611601322175-ef8ec8c85f01?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=700&q=80',
      label: 'Cotton Dress',
    ),
    DisplayModel(
      image:
          'https://images.unsplash.com/photo-1611601322175-ef8ec8c85f01?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=700&q=80',
      label: 'Cotton Dress',
    ),
    DisplayModel(
      image:
          'https://images.unsplash.com/photo-1611601322175-ef8ec8c85f01?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=700&q=80',
      label: 'Cotton Dress',
    ),
    DisplayModel(
      image:
          'https://images.unsplash.com/photo-1611601322175-ef8ec8c85f01?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=700&q=80',
      label: 'Cotton Dress',
    ),
    DisplayModel(
      image:
          'https://images.unsplash.com/photo-1611601322175-ef8ec8c85f01?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=700&q=80',
      label: 'Cotton Dress',
    ),
    DisplayModel(
      image:
          'https://images.unsplash.com/photo-1611601322175-ef8ec8c85f01?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=700&q=80',
      label: 'Cotton Dress',
    ),
    DisplayModel(
      image:
          'https://images.unsplash.com/photo-1611601322175-ef8ec8c85f01?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=700&q=80',
      label: 'Cotton Dress',
    ),
  ];

  var x = [
    {
      'image':
          'https://images.unsplash.com/photo-1611601322175-ef8ec8c85f01?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=700&q=80',
      'label': 'Cotton Dress',
    },
    {
      'image':
          'https://images.unsplash.com/photo-1612838856042-18756ccc202c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=625&q=80',
      'label': 'Cotton T-Shirt',
    },
    {
      'image':
          'https://images.unsplash.com/photo-1581338834647-b0fb40704e21?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      'label': 'shirts',
    },
    {
      'image':
          'https://images.unsplash.com/photo-1611601322175-ef8ec8c85f01?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=700&q=80',
      'label': 'Trousers',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1611601322175-ef8ec8c85f01?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=700&q=80'),
          ),
        ),
        body: StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) => Card(
            child: Column(
              children: <Widget>[
                Image.network(images[index].image),
                Text(
                  images[index].label,
                ),
              ],
            ),
          ),
          staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
      ),
    );
  }
}
