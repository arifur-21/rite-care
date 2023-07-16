

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {

  final VoidCallback onTapEditBtn;


  CardWidget({ required this.onTapEditBtn});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {

  List<String> data =
 [
   'one', 'tow'
 ];

  @override
  Widget build(BuildContext context) {
    return   Card(
      elevation: 8,
      child: Column(
        children: [
          ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index){
                return Column(
                  children: [
                    Row(
                      children: [
                        Text("patient details"),
                        InkWell(
                            onTap: (){
                              setState(() {
                                data.removeAt(index);
                              });
                            },
                            child: Icon(Icons.delete))
                      ],
                    )
                  ],
                );
              })
        ],
      )




      /*Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("ID        :", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),),
                Text("*********",style: TextStyle( fontSize: 16,color: Colors.black)),
                Text("CELL NO  :",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black)),
                Text("*********",style: TextStyle( fontSize: 16,color: Colors.black)),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Divider(height: 2,color: Colors.grey,),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Name :", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black)),
                Text("*********",style: TextStyle( fontSize: 16,color: Colors.black)),
                Text("Official No :",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black)),
                Text("*********",style: TextStyle( fontSize: 16,color: Colors.black)),


              ],
            ),
          ),
          SizedBox(height: 10,),
          Divider(height: 2,color: Colors.grey,),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                    onTap: (){

                      //////////change latter
                      /// Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Lab12Screen()));
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/icons/resume.png')
                        ),
                      ),
                    )
                ),

                SizedBox(width: 15,),

                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(

                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/icons/cancel.png')
                    ),
                  ),
                )

              ],
            ),
          )

        ],
      ),*/
    );
  }
}
