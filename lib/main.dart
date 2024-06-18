import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Mapping Lists'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var arrData=[
    {
      'name' : 'Sakshi',
      'mobno': '8669511345',
      'unread': '2'
    },
    {
      'name' : 'Vishwajeet',
      'mobno': '2233445566',
      'unread': '1'
    },
    {
      'name' : 'Shree',
      'mobno': '8600481842',
      'unread': '5'
    },
    {
      'name' : 'Geets',
      'mobno': '7066886455',
      'unread': '3'
    },
    {
      'name' : 'Sudhakar',
      'mobno': '9130566846',
      'unread': '4'
    },
    {
      'name' : 'Pooja',
      'mobno': '9226384946',
      'unread': '7'
    },
    {
      'name' : 'Neha',
      'mobno': '8976546783',
      'unread': '1'
    },
    {
      'name' : 'Rutuja',
      'mobno': '8976543677',
      'unread': '3'
    },
    {
      'name' : 'Amruta',
      'mobno': '6574839377',
      'unread': '1'
    },
    {
      'name' : 'Saloni',
      'mobno': '8669578667',
      'unread': '3'
    },
    {
      'name' : 'Shravani',
      'mobno': '8669511345',
      'unread': '2'
    },
    {
      'name' : 'Kshitija',
      'mobno': '7798675467',
      'unread': '5'
    },
    {
      'name' : 'Tejaswini',
      'mobno': '8978675645',
      'unread': '1'
    },

  ];

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView(
        children: arrData.map((value) =>

            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(value['name'].toString()),
              subtitle: Text(value['mobno'].toString()),
              trailing: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.green,
                  child: Text(value['unread'].toString())),
            )
          /*  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                color: Colors.blue.shade100,
              ),

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text(value)),
              ),
            ),
         ) */

         ).toList()

      ),
    );
  }
}
