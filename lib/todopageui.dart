import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simpletodoapp/style.dart';

class Todopage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
   return Todopageui();
  }

}

class Todopageui extends State<Todopage>{
  List Todolist=[];
  String item=" ";

  inputchange(content){
    setState(() {
      item=content;
    });
  }
  addbutton(){
    setState(() {
      Todolist.add({'item':item});
    });
  }
  Removeitem(index){
    setState(() {
      Todolist.removeAt(index);
    });
  }
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text('ToDOApp'),),
       body: Container(
         padding: EdgeInsets.all(20),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Expanded(
                 flex: 20,
                 child:Row(
                   children: [
                     Expanded(
                         flex:80,
                         child:TextFormField(onChanged: (content){inputchange(content);},decoration: inputstyle('Add list'),),

                     ),
                     Expanded(
                         flex: 20,

                         child: Padding(padding: EdgeInsets.only(left: 5),child: ElevatedButton(onPressed: (){addbutton();},child: Text('Add'),style: btnstyle(),)),
                     ),
                   ],


                 )
             ),

             Expanded(
                 flex: 80,
                 child:ListView.builder(
                     itemCount:Todolist.length,
                     itemBuilder: (context,index){
                       return Card(
                         child: sizedBox(
                          Row(
                            children: [
                              Expanded(
                                flex: 80,
                                child: Text(Todolist[index]['item'].toString()),),
                              Expanded(
                                flex: 20,
                                child: TextButton(onPressed: (){Removeitem(index);},child: Icon(Icons.delete),),)
                            ],
                          )
                         )

                       );
                     }
                 ),
             ),
           ],
         ),
       ),
     );
  }
}