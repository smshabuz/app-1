import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:worldkey/All%20Screen/ContactsScreen.dart';
import 'package:worldkey/All%20Screen/Dialer%20Screen.dart';
import 'package:worldkey/All%20Screen/Fireservis%20Screen.dart';
import 'package:worldkey/All%20Screen/Hospital%20Screen.dart';
import 'package:worldkey/All%20Screen/Police%20Screen.dart';

main() {

  runApp(app());
}
class app extends StatelessWidget{
  const app({super.key});

  @override
  Widget build(BuildContext context) {
   return const MaterialApp(

   home: HomeActivity(),
     debugShowCheckedModeBanner: false,
   );
  }
}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
   return DefaultTabController(length: 5, child: Scaffold(
    appBar: AppBar(
      title: Text("emergensy contact"),
      backgroundColor:Colors.blueGrey,
      actions: [
        IconButton(onPressed: (){Padding(padding: EdgeInsets.all(10),);}, icon: Icon(Icons.search)),
        IconButton(onPressed: (){}, icon: Icon(Icons.email)),
        IconButton(onPressed: (){}, icon: Icon(Icons.settings))
      ],
      bottom: TabBar(
        isScrollable: true,
        tabs: [
          Tab(icon:Icon(Icons.dialer_sip)),
          Tab(icon:Icon(Icons.contacts),),
          Tab(icon:Icon(Icons.local_police),text: "Police",),
          Tab(icon:Icon(Icons.local_hospital),text: "Hospital",),
          Tab(icon:Icon(Icons.fire_truck),text: "FireServis",),

        ],
      ),
    ),
body: TabBarView(
  children: [
    Dialer(),
    Contacts(),
    Police(),
    Hospital(),
    Fireservis()
  ],
),
     endDrawer: Drawer(
       child: ListView(
         children:[DrawerHeader (
           padding: EdgeInsets.all(0),
          child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
             accountName: Text("Hello World"),
             accountEmail: Text("hello@gmail.com"),
             currentAccountPicture: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAEoF6guya-BaQamIWP3Z8fFYPTMvk8r2yAn5_JILpm9YeoIKQAozE26tK3K9zolD1xgE&usqp=CAU"),
             onDetailsPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>miting()));},
     ))
       ],
       ),
     ),
   )
   );

  }

}
class miting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("World Key"),
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("  2 ami S.M Shabuz airport thaki, ami hsc comlit kori mamotaj uddin bm colez thake,GPA 3.83,& ssc comlit kori janialom shorkar hischool thake ,GPA 4.24"),
          Text("ami S.M Shabuz airport thaki, ami hsc comlit kori mamotaj uddin bm colez thake,GPA 3.83,& ssc comlit kori janialom shorkar hischool thake ,GPA 4.24")
        ],
      ),
    );

  }

}