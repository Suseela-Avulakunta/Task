import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      color: Colors.blue,
      child: Row(
        children: [
          Padding(
              padding: EdgeInsets.only(left: 40),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2)),
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.white,
                ),
              )),
          Container(
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 30),
            child: VerticalDivider(),
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx2jgtdkx955ff-LDibJZnBroXWo6CJPEPL9DXvdQHJPVBuv2ah_8aNi4qefXkqtgsLrI&usqp=CAU'),
          ),
          Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            child: Text('India',style: TextStyle(color:Colors.white,fontSize: 15,),
          ),),
          Icon(Icons.arrow_drop_down,color: Colors.white,),
          Expanded(child: Text('')),
          Container(
           padding: EdgeInsets.only(right:20),
            child: Icon(Icons.qr_code_scanner_outlined,color: Colors.white,size: 30,),
          ),
          Icon(Icons.notifications,size: 30,color: Colors.white,),
          Container(
            padding: EdgeInsets.only(left: 20,right: 60),
            child: Icon(Icons.help,color: Colors.white,size: 30,),
          ),
        ],
      ),
    );
  }
}
