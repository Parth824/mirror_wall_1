import 'package:flutter/material.dart';
import 'package:mirror_wall/view/globes.dart';
import 'package:mirror_wall/view/wedsite.dart';

class WedView extends StatefulWidget {
  const WedView({super.key});

  @override
  State<WedView> createState() => _WedViewState();
}

class _WedViewState extends State<WedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Educational Wed In App",
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          ...sitd.k.map(
            (e) => InkWell(
              onTap: () {
                setState(() {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Wedsite(),
                      settings: RouteSettings(arguments: e),
                    ),
                  );
                });
              },
              child: Container(
                height: 125,
                width: 100,
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          "${e['i']}",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("${e['n']}")
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// ...sitd.k.map(
//                 (e) => Column(
//                   children: [
//                     Container(
//                       height: 25,
//                       width: 25,
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(15),
//                         child: Image.network(
//                           "${e['i']}",
//                           fit: BoxFit.fill,
//                         ),
//                       ),
//                     ),
//                     Text("${e['n']}")
//                   ],
//                 ),
//               ),