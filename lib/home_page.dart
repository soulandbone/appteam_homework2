import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: verticalContent()));
  }
}

Widget verticalContent() {
  return Column(
    children: [
      customCard(
        'First Card',
        'This is secondary text',
        'eque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit',
      ),
      customCard(
        'Second Card',
        'This is secondary text',
        'eque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit',
      ),
      customCard(
        'Third Card',
        'This is secondary text',
        'eque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit',
      ),
      customCard(
        'Fourth Card',
        'This is secondary text',
        'eque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit',
      ),
      customCard(
        'Fifth Card',
        'This is secondary text',
        'eque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit',
      ),
    ],
  );
}

//***************** NO Need to touch anything under this comment ***************************//////

//*************** THE way that I am creating the Widget like Widget customCard, is equivalent to creating a class CustomCard that extends Stateless Widget, the main difference comes to reusability. In this case on the example Widget is a good approach for a Widget I dont plan on reusing anywhere else. If There is a Widget I might end up ussing in different Widgets then the class approach if prefered
//  */

Widget customCard(String title, String secondaryText, String thirdText) {
  return Card(
    clipBehavior: Clip.antiAlias,
    child: Column(
      children: [
        ListTile(
          leading: Icon(Icons.arrow_drop_down_circle),
          title: Text(title),
          subtitle: Text(
            secondaryText,
            style: TextStyle(color: Colors.black54),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(thirdText, style: TextStyle(color: Colors.black54)),
        ),

        OverflowBar(
          alignment: MainAxisAlignment.start,
          children: [
            TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.amber),
              onPressed: () {
                // Perform some action
              },
              child: const Text('ACTION 1'),
            ),
            TextButton(
              style: ButtonStyle(),
              onPressed: () {
                // Perform some action
              },
              child: const Text('ACTION 2'),
            ),
          ],
        ),
      ],
    ),
  );
}
