import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget with PreferredSizeWidget {

  final String title;

  const CustomAppBar({
    Key? key, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(title,
          style:
          Theme.of(context).textTheme.headline2!.copyWith(
            color: Colors.white,
          ),
          // TextStyle(
          //   color: Colors.white,
          //   fontWeight: FontWeight.bold,
          //   fontSize: 24,
          // ),
        ),
      ),
      centerTitle: true,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      actions: [IconButton(onPressed: (){
        Navigator.pushNamed(context, '/wishlist');
      }, icon: Icon(Icons.favorite, size: 30,))],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50.0);
}
