import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Strawberry, vanilla, chocolate',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Variedad para compartir amor',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),
    );
    primaryColor:
    Color(0xffbd0265);
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.favorite, 'Favoritos'),
          _buildButtonColumn(color, Icons.shopping_bag, 'Comprar'),
          _buildButtonColumn(color, Icons.share, 'Compartir'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'En pasteleria "Suspiros" tenemos una extensa variedad de sabores, '
        'diseños y decoraciones adecuadas para cualquier tipo de evento.  '
        'Tenemos mas de 70 años siendo los favoritos de los mexicanos que '
        'que buscan regalar un pedazo de amor y delicia en una rebanada. '
        'Atrevete a probar nuestras especialidades y llegar con el regalo '
        'indicado para esa persona que te saca suspiros de amor.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pasteleria Suspiros"),
          actions: [
            Icon(
              Icons.search,
              color: Colors.deepPurpleAccent,
            ),
            Icon(Icons.more_vert)
          ],
          shape: StadiumBorder(),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/images/pastel1.jpeg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
