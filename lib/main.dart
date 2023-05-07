import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
             'Flutter Layout Demo'
          ),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/lake.jpg',
              height: 240,
              fit: BoxFit.cover,
            ),
            _titleSection(context),
            _buttonsSection(context),
            _textSection(context)
          ],
        )
      ),
    );
  }

  Column _buildButtonColumn(Color color, String label, IconData icon) {
    return Column(
      children: [
        Icon(
          icon,
          color: color
        ),
        Text(
          label,
          style: TextStyle(
            color: color
          ),
        )
      ],
    );
  }
  Color _color(BuildContext context) {
    return Theme.of(context).primaryColor;
  }
  Widget _buttonsSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(_color(context), 'CALL', Icons.call),
        _buildButtonColumn(_color(context), 'ROUTE', Icons.near_me),
        _buildButtonColumn(_color(context), 'SHARE', Icons.share),
      ],
    );
  }
  Widget _titleSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: const Text(
                      'Oeschinen Lake Campground',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Text(
                    'Kandersteg, Switzerland',
                    style: TextStyle(
                      color: Colors.grey[500]
                    ),
                  )
                ],
              )
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const SizedBox(
            width: 10,
            height: 10,
          ),
          const Text('42')
        ],
      ),
    );
  }
  Widget _textSection(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
              'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
              'Alps. Situated 1,578 meters above sea level, it is one of the '
              'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
              'half-hour walk through pastures and pine forest, leads you to the '
              'lake, which warms to 20 degrees Celsius in the summer. Activities '
              'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true
      )
    );
  }
}
