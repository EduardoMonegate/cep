import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AndressCard extends StatelessWidget {
  final String locality;
  final String publicPlace;
  final String district;
  final void Function()? onPressed;
  const AndressCard({
    Key? key,
    required this.locality,
    required this.publicPlace,
    required this.district,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.local_convenience_store_rounded),
            title: Text(locality),
            subtitle: Text(publicPlace,
                style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                )),
            trailing: Text(district,),
          ),
    
        ],
      ),
    );
  }
}
