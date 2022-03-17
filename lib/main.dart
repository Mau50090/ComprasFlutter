import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color mainColor = Color(0xFF232343);
  Color seColor = Color(0xFF353666);
  Color tileColor = Color(0xFF5355a2);
  Color boxColor = Color(0xFFBCBEDC);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://img.ecartelera.com/noticias/38600/38629-m.jpg"),
                  ),
                  Text("Mercado Pokemon",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600))
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              child: Column(
                children: [
                  Text(
                    "Balance",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    "\$30,000",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 50),
            Expanded(
                child: Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 36.0, left: 26.0, right: 26.0),
              decoration: BoxDecoration(
                  color: seColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60.0),
                      topRight: Radius.circular(60.0))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Transacciones Recientes",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Expanded(
                      child: ListView(
                    children: [
                      listTile(Icons.shopping_cart, Colors.red, "Compra",
                          "Charizard", 13.66),
                      listTile(Icons.shopping_cart, Colors.blue, "Compra",
                          "Squirel", 30.21),
                      listTile(Icons.shopping_cart, Colors.yellow, "Compra",
                          "Magnamite", 18.4),
                      listTile(Icons.shopping_cart, Colors.yellow, "Compra",
                          "Zapdoz", 33.0),
                      listTile(Icons.shopping_cart, Colors.red, "Compra",
                          "Volcarona", 25.66),
                      listTile(Icons.shopping_cart, Colors.white, "Compra",
                          "Articuno", 50.66),
                      listTile(Icons.shopping_cart, Colors.purple, "Compra",
                          "Venusar", 50.66),
                      listTile(Icons.shopping_cart, Colors.pink, "Compra",
                          "Tapu Lele", 50.66)
                    ],
                  ))
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

Widget listTile(
    IconData icon, Color color, String type, String title, double value) {
  return InkWell(
    onTap: () {},
    child: Container(
      margin: EdgeInsets.only(bottom: 16.0),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Color(0xFF5355a2), borderRadius: BorderRadius.circular(8.0)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
                color: Color(0xFFBCBEDC),
                borderRadius: BorderRadius.circular(8.0)),
            child: Icon(icon, size: 32.0, color: color),
          ),
          SizedBox(width: 12.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(type,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Text(
            "\$ $value",
            style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    ),
  );
}
