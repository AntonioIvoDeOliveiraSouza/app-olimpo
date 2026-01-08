import 'package:flutter/material.dart';
import 'package:olimpo/screens/about_us.dart';
import 'package:olimpo/screens/athletes_screen.dart';
import 'package:olimpo/screens/modalities_screen.dart';
import 'package:olimpo/widgets/nav_bar.dart';
import 'package:olimpo/config/preference_theme.dart';
import 'package:olimpo/screens/config_screen.dart';
import 'package:olimpo/screens/favorites_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Olimpo",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
            onPressed: (){
              PreferenceTheme.toggleTema();
            }
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget> [
            DrawerHeader(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor, ),
              child:CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('lib/assets/images/user.png')
              )
            ),
            ListTile(
              title: const Text('Modalidades'),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const ModalitiesScreen()),
                  (route) => route.isFirst
                );
              },
            ),
            ListTile(
              title: const Text('Atletas'),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context, 
                  MaterialPageRoute(builder: (context) => const AthletesScreen()),
                  (route) => route.isFirst
                );
              },
            ),
            ListTile(
              title: const Text('Favoritos'),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const FavoritesScreen()),
                  (route) => route.isFirst,
                );
              },
            ),
            ListTile(
              title: const Text('Configurações'),
              onTap: (){
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const ConfigScreen()),
                  (route) => route.isFirst
                );
              },
            ),
            ListTile(
              title: const Text('Sobre'),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context, 
                  MaterialPageRoute(builder: (context) => const AboutUs()),
                  (route) => route.isFirst
                );
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Sair'),
              leading: const Icon(Icons.logout),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/login',
                  (route) => false
                );
              },
            ),  
          ],
        ),
      ),
      body: Center(
        child: Image.asset(
          'lib/assets/images/logo.png',
          width: 200,
          height: 200,
        ),
      ),
      bottomNavigationBar: NavBar(parentContext: context),
    );
  }
}
