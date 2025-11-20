import 'package:flutter/material.dart';
import 'package:olimpo/screens/about_us.dart';
import 'package:olimpo/screens/athletes_screen.dart';
import 'package:olimpo/screens/modalities_screen.dart';
import 'package:olimpo/widgets/nav_bar.dart';
import 'package:olimpo/config/preference_theme.dart';

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
        foregroundColor: Colors.white,
        backgroundColor: isDark? Colors.black : Colors.green[800],
        actions: [
          IconButton(
            icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
            onPressed: (){
              PreferenceTheme.setTema();
            }
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget> [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child:Text('Olimpo', style: TextStyle(color: Colors.white, fontSize: 24)),
                //Text('Membros:', style: TextStyle(color: Colors.white, fontSize: 16)),
                //Text('Antonio Ivo, Giovanna, Hyann Gabriel e Juliana', style: TextStyle(color: Colors.white, fontSize: 16)),
                //Text('Aplicação: Olimpo: informações sobre Olimpíadas', style: TextStyle(color: Colors.white, fontSize: 16)),
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
              title: const Text('Sobre'),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context, 
                  MaterialPageRoute(builder: (context) => const AboutUs()),
                  (route) => route.isFirst
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Image.asset(
          'lib/data/images/logo.png',
          width: 200,
          height: 200,
        ),
      ),
      bottomNavigationBar: NavBar(parentContext: context),
    );
  }
}
