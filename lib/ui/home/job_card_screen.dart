import 'package:flutter/material.dart';
import 'package:jobcard/ui/utils/app_constants.dart';

class JobCardScreen extends StatefulWidget{
  
  State createState(){
    return JobCardState();
  }
}
class JobCardState extends State<JobCardScreen>{
  var _value ="1";

  
  
  Widget build(BuildContext mContext){
    
    return Scaffold(
      
      appBar: AppBar(
        
        title: Text(AppConstants.JObCardTitle),
      ),
      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 20),child:
            DropdownButton(items: getDropdownItems(), onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
                value: _value,
                isExpanded: true ,
              hint: Text('Client Name/Mobile Number',style: TextStyle(color: Colors.black),),),


            ),
            Padding(padding: EdgeInsets.fromLTRB(10, 30, 10, 20),
            child: Table(

                children:[
                TableRow(
                  decoration: BoxDecoration(
                    color: Colors.grey
                  ),
                  children:[

                    Row(children: <Widget>[
                      Icon(Icons.arrow_drop_down,color: Colors.black,)
                    ,Text('Job',style: TextStyle(color: Colors.black),),
                    ],),
                    Row(children: <Widget>[
                      Icon(Icons.arrow_drop_down,color: Colors.black,)
                      ,Text('Description',style: TextStyle(color: Colors.black),),
                    ],),
                    Row(children: <Widget>[
                      Icon(Icons.arrow_drop_down,color: Colors.black,)
                      ,Text('Amount',style: TextStyle(color: Colors.black),),
                    ],),
                  ]
                ),


                TableRow(
                    decoration: BoxDecoration(
                        color: Colors.white
                    ),
                    children:[

                Padding(padding: EdgeInsets.all(10),
                  child:Text('Row 1 Cell 1',style: TextStyle(color: Colors.black),),),
              Padding(padding: EdgeInsets.all(10),
                  child:Text('Row 1 Cell 2',style: TextStyle(color: Colors.black),),),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(children: <Widget>[
                          Text('Row 1 Cell 3',style: TextStyle(color: Colors.black),)
                        ],),
                      ),
                    ]
                ),


                TableRow(
                    decoration: BoxDecoration(
                        color: Colors.white
                    ),
                    children:[

                      Row(children: <Widget>[
                        Padding(padding: EdgeInsets.all(10),
                          child:Text('Row 2 Cell 1',style: TextStyle(color: Colors.black),),),
                      ],),
                      Row(children: <Widget>[
                        Padding(padding: EdgeInsets.all(10),
                          child:Text('Row 2 Cell 2',style: TextStyle(color: Colors.black),),),
                       ],),
                      Row(children: <Widget>[

                        Padding(padding: EdgeInsets.all(10),
                          child:Text('Row 2 Cell 3',style: TextStyle(color: Colors.black),),),
                      ],),
                    ]
                ),

                TableRow(
                    decoration: BoxDecoration(
                        color: Colors.white
                    ),
                    children:[

                      Row(children: <Widget>[
                        Padding(padding: EdgeInsets.all(10),
                          child:Text('Row 3 Cell 1',style: TextStyle(color: Colors.black),),),
                      ],),
                      Row(children: <Widget>[
                        Padding(padding: EdgeInsets.all(10),
                          child:Text('Row 3 Cell 2',style: TextStyle(color: Colors.black),),),
                      ],),
                      Row(children: <Widget>[
                        Padding(padding: EdgeInsets.all(10),
                          child:Text('Row 3 Cell 3',style: TextStyle(color: Colors.black),),),
                      ],),
                    ]
                )


              ],
              border: TableBorder.all(color: Colors.black,width: 2),
            ),
            )


          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){

      }
      ,backgroundColor: Colors.deepOrangeAccent,
        child: Icon(Icons.add,color: Colors.white,),
      ),
    );
  }

  List<DropdownMenuItem<String>> getDropdownItems(){

   List<DropdownMenuItem<String>> list = new List();
  
   DropdownMenuItem<String> item1 = new DropdownMenuItem(child: Text(AppConstants.drop_item_1),value: "1",);
   DropdownMenuItem<String> item2 = new DropdownMenuItem(child: Text(AppConstants.drop_item_2),value: "2",);
   list.add(item1);
   list.add(item2);
   return list;
  }
}