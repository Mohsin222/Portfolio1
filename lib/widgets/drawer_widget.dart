import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
final GlobalKey<ScaffoldState> drawerGlobalKey = GlobalKey(); // Cr
class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(child: ListView(
             padding: EdgeInsets.zero,
      children: [
          const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1485290334039-a3c69043e517?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTYyOTU3NDE0MQ&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=300'),
              ),
              accountEmail: Text('mohsinirfan222@gmail.com'),
              accountName: Text(
                'Mohsin Irfan',
                style: TextStyle(fontSize: 20.0),
              ),
              decoration: BoxDecoration(
                color: Colors.black87,
              ),
            ), 

             ListTile(
              
              title:  const Text(
                'Home',
                style: TextStyle(fontSize: 20.0),
              ),
              onTap: (){
                   context.go('/');
              },
             ),
               ListTile(
              
              title:  const Text(
                'About Us',
                style: TextStyle(fontSize: 20.0),
              ),
              onTap: (){
                   context.go('/about');
              },
             ),
                 ListTile(
              
              title:  const Text(
                'Portfolio',
                style: TextStyle(fontSize: 20.0),
              ),
              onTap: (){
                   context.go('/portfolio');
              },
             ),
             ListTile(title: const Text('Contact',        style: TextStyle(fontSize: 20.0),),
             onTap: (){
                 context.go('/contact');
             },
             )
      ],
    ));
  }
}