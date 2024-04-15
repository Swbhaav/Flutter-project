import 'package:flutter/material.dart';

enum ProfileMenu{
  edit,
  logout,
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value){
              switch (value){
                case ProfileMenu.edit:
                  Navigator.of(context).pushReplacementNamed('/EditProfilePage');
                  break;
                case ProfileMenu.logout:
                  print('Logout');
                  break;
                default:

              }
            },
            icon: const Icon(Icons.more_vert_rounded),
            itemBuilder: (context){
              return [
                PopupMenuItem(
                  child: Text('Edit'),
                  value: ProfileMenu.edit,
                ),
                PopupMenuItem(
                  child: Text('Log Out'),
                  value: ProfileMenu.logout,
                )
              ];
            },
          )
        ],
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.asset(
              'Assets/Temp/pp.jpg',
              width: 90,
              height: 90,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text('Deadly Dingles',style: TextStyle(
            fontSize: 30,
          )
          ),
          SizedBox(
            height: 12,
          ),
          Text('London, Lokanthali',style: TextStyle(
              fontSize: 15
          ),),
          SizedBox(
            height: 12,
          ),
          Text('Deadlydingles@gmail.com',style: TextStyle(
              fontSize: 15
          ),),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text('69.69',style: TextStyle(
                    fontSize: 20,
                  ),
                  ),
                  Text('Reward Points'),
                ],
              ),
              Column(
                children: [
                  Text('1K',style: TextStyle(
                    fontSize: 20,),
                  ),
                  Text('Purchased')
                ],
              ),
              Column(
                children: [
                  Text('1K',style: TextStyle(
                    fontSize: 20,),
                  ),
                  Text('Wished')
                ],
              ),
              Column(
                children: [
                  Text('1K',style: TextStyle(
                    fontSize: 20,),
                  ),
                  Text('Liked')
                ],
              )

            ],
          )

        ],
      ),
    );
  }
}
