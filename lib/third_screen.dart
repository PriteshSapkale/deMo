import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back),
                Text(
                  'Shopping Bag',
                  style: TextStyle(fontSize: 22),
                ),
                Icon(Icons.shopping_basket),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(22)),
                  child: Image.network(
                      'https://images.unsplash.com/photo-1581338834647-b0fb40704e21?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
                      fit: BoxFit.cover),
                ),
                Text(
                  'Fitting dress',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(Icons.add_rounded),
                Text('1'),
                Icon(Icons.remove_circle_outline),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(22)),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1611558709798-e009c8fd7706?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=637&q=80',
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  'Fitting dress',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(Icons.add_rounded),
                Text('1'),
                Icon(Icons.remove_circle_outline),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(22)),
                  child: Image.network(
                      'https://images.unsplash.com/photo-1562572159-4efc207f5aff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=675&q=80',
                      fit: BoxFit.cover),
                ),
                Text(
                  'Fitting dress',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(Icons.add_rounded),
                Text('1'),
                Icon(Icons.remove_circle_outline),
              ],
            ),
            Row(
              children: [
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Promo Code', fillColor: Colors.black54),
                ),
                SizedBox(width: 120),
                ElevatedButton(onPressed: null, child: Text('Apply'))
              ],
            ),
            Text(
              'Sub total...................................  ',
              style: TextStyle(color: Colors.black45),
            )
          ],
        ),
      ),
    );
  }
}
