import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 int _counter = 0; // başlangıc degeri

 void _incrementCounter() {
   setState(() {
     _counter++; // arttır
   });
 }

 void _decrementCounter() {
   setState(() {
     _counter--; // azalt
   });
 }
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Arttır/Azalt Sayaç',
     home: Scaffold(
       appBar: AppBar(
         title: Text('Arttır/Azalt Sayaç'),
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text(
               'Sayaç Değeri:',
             ),
             Text(
               '$_counter',
               style: Theme.of(context).textTheme.headline4,
             ),
             SizedBox(height: 16.0),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 FloatingActionButton(
                   onPressed: _incrementCounter, // butona tıklanınca azaltmasını sağlayan metod
                   tooltip: 'Arttır',
                   child: Icon(Icons.add), // eklemek için + ikonu
                 ),
                 SizedBox(width: 16.0),
                 FloatingActionButton(
                   onPressed: _decrementCounter, // butona tıklanınca azaltmasını sağlayan metod
                   tooltip: 'Azalt',
                   child: Icon(Icons.remove), // azaltmak için - ikonu
                 ),
               ],
             ),
           ],
         ),
       ),
     ),
   );
 }
}
