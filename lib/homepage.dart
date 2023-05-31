import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/get_servise/dart/get_servise.dart';
import 'package:instagram/info_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App Bar"),),
      body: RefreshIndicator(
        onRefresh: GetCurrensyServise.getCurrensy,
        child: FutureBuilder(
          future: GetCurrensyServise.getCurrensy(),
          builder: (context,AsyncSnapshot snapshot) {
    if(!snapshot.hasData){
    return const Center(
    child: CircularProgressIndicator.adaptive(),
    );
    }else if(snapshot.hasError) {
    return const Center(
    child: Text("Error"),
    );
    }else{
      return ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>InfoPage(data: snapshot.data[index])));
          },
          title:Text("${snapshot.data["game_indices"][index]["game_index"]}") ,
           //subtitle: Text(snapshot.data[index]["id"].toString()),
        );
      },
      itemCount: (snapshot.data["game_indices"] as List).length
      );
    }
    },


        ),
      ),
    );
  }
}
