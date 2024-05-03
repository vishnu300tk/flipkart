
import 'package:flutter/material.dart';
class HeadContainer extends StatelessWidget {
  final String userName;
  final String emailId;

  const HeadContainer({super.key, required this.emailId, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        leading:  const CircleAvatar(
          radius: 30,
          child:Image(image: NetworkImage('https://png.pngtree.com/png-clipart/20200224/original/pngtree-cartoon-color-simple-male-avatar-png-image_5230557.jpg'))
        ),
        title: Text(
          userName,
          style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,letterSpacing: 0.5),
        ),
        subtitle: Text(emailId),
        trailing: IconButton(onPressed: (){
          // Navigator.push(context, MaterialPageRoute(builder: (context) => const Edit_page(),));
        }, icon: const Icon(Icons.mode_edit_outline,color: Colors.green,)),
      ),
    );
  }
}
