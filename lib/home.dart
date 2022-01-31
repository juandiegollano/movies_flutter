import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Movie"),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            color: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
            padding: EdgeInsets.zero,
            children: [
                DrawerHeader(child: Text("Menú")),
                ListTile(
                  title: const Text("Peliculas"),
                  onTap: (){},
                  trailing: Icon(Icons.local_movies),
                ),
                Divider(height: 5.0,),
                ListTile(
                  title: const Text("Series"),
                  onTap: (){},
                  trailing: Icon(Icons.live_tv),
                ),
                Divider(height: 5.0,),
                ListTile(
                  title: const Text("Cerrar"),
                  onTap: () => Navigator.of(context).pop(),
                  trailing: Icon(Icons.close),
                ),

            ],

        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: _getFooterItems()),
    );
  }

  List<BottomNavigationBarItem> _getFooterItems() {
    return [
      BottomNavigationBarItem(
          icon:  Icon(Icons.thumb_up), label: "Populares"),
      BottomNavigationBarItem(
          icon:  Icon(Icons.update), label: "Estrenos"),
      BottomNavigationBarItem(
          icon:  Icon(Icons.star), label: "Favoritas"),
    ];
  }
}
