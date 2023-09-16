import 'package:fixmygiz/widgets/subtilte.dart';
import 'package:fixmygiz/widgets/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Profile'),
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Color.fromRGBO(243, 243, 243, 1),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            child: ListTile(
              title: const TitleTextWidget2(title: 'Verified Customer'),
              subtitle: const Text('+91 123456789'),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
            ),
          ),
          const Gap(10),
          Container(
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.help_center),
              title: Text('Help Center'),
            ),
          ),
          Gap(10),
          Container(
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.event_note),
              title: Text('My Bookings'),
            ),
          ),
          Gap(2),
          Container(
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Manage Addresses'),
            ),
          ),
          Gap(2),
          Container(
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.handshake),
              title: Text('Register as Partners'),
            ),
          ),
          Gap(2),
          Container(
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.share),
              title: Text('Share fix Your Giz'),
            ),
          ),
          Gap(2),
          Container(
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.star),
              title: Text('My Rating'),
            ),
          ),
          Gap(2),
          Container(
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.card_giftcard),
              title: Text('My Gift Cards'),
            ),
          ),
          Gap(2),
          Container(
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.share),
              title: Text('My Wallet'),
            ),
          ),
          Gap(2),
          Container(
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.access_time_rounded),
              title: Text('Sheduled Bookings'),
            ),
          ),
          Gap(2),
          Container(
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.thumb_up),
              title: Text('Rate Fix My Giz'),
            ),
          ),
          Gap(2),
          Container(
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.payment),
              title: Text('Payment Options'),
            ),
          ),
          Gap(2),
          Container(
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings '),
            ),
          ),
          TextButton(onPressed: (){}, child: Text('Logout',style: TextStyle(color: Colors.red),))
          
          
        ],
      ),
    );
  }
}
