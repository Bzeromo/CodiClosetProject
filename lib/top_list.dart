import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'cloth_class.dart';

class TopList extends StatefulWidget {
  @override
  _TopListState createState() => _TopListState();
}

class _TopListState extends State<TopList>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          'TOP',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),

        backgroundColor: Colors.white,
      ),
        body: new Padding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            child: getHomePageBody(context)),

    );
  }
}

getHomePageBody(BuildContext context) {
  return new Container(
    child: GridView.builder(
      itemCount: TopCloths.length,
      itemBuilder: _getItemUI,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 3/5,
    ),
  )
  );
}
// First Attempt
Widget _getItemUI(BuildContext context, int index) {
  return Card(
    elevation: 2,
    color: Colors.white60,
    child: Column(
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Image.asset(TopCloths[index].image),
        ),
        Expanded(
          flex: 2,
          child: ListTile(
            title: Text(TopCloths[index].name),
            subtitle: Text(
                "${TopCloths[index].season_attribute}, "
                    "${TopCloths[index].part_attribute}, "
                    "${TopCloths[index].color_attribute}, "
                    "${TopCloths[index].size_attribute}, "
                    "${TopCloths[index].style_attribute}, "
                    "${TopCloths[index].material_attribute}, "
                    "${TopCloths[index].occasion_attribute}"
            ),
          ),
        )
      ],
    ),
  );
}
