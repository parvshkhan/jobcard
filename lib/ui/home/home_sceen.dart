import 'package:flutter/material.dart';
import 'package:jobcard/ui/home/job_card_screen.dart';
import 'package:jobcard/ui/utils/app_constants.dart';
class HomeScreen extends StatefulWidget{

  State createState(){

    return HomeState();
  }
}


class HomeState extends State<HomeScreen>{

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Widget build(BuildContext context){

    return Scaffold(

      backgroundColor: Colors.brown,
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Stack(

        children: <Widget>[

          Padding(padding: EdgeInsets.fromLTRB(0, 0, 0,0),
            child: GridView.count(crossAxisCount: 2,
              children: <Widget>[


                gridItem_1(context),
                gridItem_2(context),
                gridItem_3(context),
                gridItem_4(context),
              ],),

          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: getBottomView(),
          )
        ],

      ),
    );
  }
  Widget gridItem_1(BuildContext context){


    return Container(

      child:
      GestureDetector(

        onTap: () {

        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Container(

              width: 80.0,
              height: 80.0,
              child: Icon(Icons.add,color: Colors.white,),
/*              decoration: BoxDecoration(

                  color: Color.fromARGB(255, 230, 78, 78),
                  shape: BoxShape.circle
              ),*/
            ),
            SizedBox(height: 10.0,),
            Text('Add Client',style: TextStyle(color: Colors.white,fontSize: 18),),
          ],

        ),

      )




      ,decoration: new BoxDecoration(
        border: new Border.all(color: Colors.white,width: 0.2)),


    );
  }
  Widget gridItem_2(BuildContext context){


    return Container(

      child:
      GestureDetector(

        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>JobCardScreen()));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Container(

              width: 80.0,
              height: 80.0,
              child: Icon(Icons.print,color: Colors.white,),
/*              decoration: BoxDecoration(

                  color: Color.fromARGB(255, 230, 78, 78),
                  shape: BoxShape.circle
              ),*/
            ),
            SizedBox(height: 10.0,),
            Text('Add Job Card',style: TextStyle(color: Colors.white,fontSize: 18),),
          ],

        ),

      )




      ,decoration: new BoxDecoration(
        border: new Border.all(color: Colors.white,width: 0.2)),


    );
  }
  Widget gridItem_3(BuildContext context){


    return Container(

      child:
      GestureDetector(

        onTap: () {
          showInSnackBar("Under development");
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Container(

              width: 80.0,
              height: 80.0,
              child: Icon(Icons.remove,color: Colors.white,),
/*              decoration: BoxDecoration(

                  color: Color.fromARGB(255, 230, 78, 78),
                  shape: BoxShape.circle
              ),*/
            ),
            SizedBox(height: 10.0,),
            Text('Pending/Ongoing\nJob cards',style: TextStyle(color: Colors.white,fontSize: 18),textAlign: TextAlign.center,),
          ],

        ),

      )




      ,decoration: new BoxDecoration(
        border: new Border.all(color: Colors.white,width: 0.2)),


    );
  }
  Widget gridItem_4(BuildContext context){


    return Container(

      child:
      GestureDetector(

        onTap: () {

          showInSnackBar("Under development");
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Container(

              width: 80.0,
              height: 80.0,
              child: Icon(Icons.done,color: Colors.white,),
/*              decoration: BoxDecoration(

                  color: Color.fromARGB(255, 230, 78, 78),
                  shape: BoxShape.circle
              ),*/
            ),
            SizedBox(height: 10.0,),
            Text('Completed',style: TextStyle(color: Colors.white,fontSize: 18),),
          ],

        ),

      )




      ,decoration: new BoxDecoration(
        border: new Border.all(color: Colors.white,width: 0.2)),


    );
  }
  Widget onGoingButton(){

    return SizedBox(

        child:RaisedButton(onPressed: () {




        },color: Colors.white,
          child:Text("Ongoing #",style: TextStyle(color: Colors.black),)

          ,shape: RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(10),

          ),padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
        )
    );
  }
  Widget completedButton(){

    return SizedBox(

        child:RaisedButton(onPressed: () {

        },color: Colors.white,
          child:Text("Completed #",style: TextStyle(color: Colors.black),)

          ,shape: RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(10.0),

          ),padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
        )
    );
  }
  Widget getBottomView(){

    return Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 50),child:Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        onGoingButton(),
        SizedBox(width: 10,),
        completedButton()
      ],
    ) ,);
  }

  /*Widget getBottomView1(){

    return Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 50),child:


    Row(
      children: <Widget>[


        Expanded(child:

        GestureDetector(

          child: Align(

            alignment: Alignment.bottomCenter,
            child: Text('Ongoing #',
                style: TextStyle(color:Colors.white,
                  fontSize:AppConstants.FONT_SIZE_18,)
            ),
          ),
        )
        ),
        Container(

          color:Colors.black,height: 55,width: 2.5,
          alignment: Alignment.bottomCenter,
        ),
        Expanded(child:

        GestureDetector(
          child: Align(

            alignment: Alignment.bottomCenter,
            child: Text('Completed #',
                style: TextStyle(color:Colors.white,
                  fontSize:AppConstants.FONT_SIZE_18,)
            ),
          ),
        )
        )
      ],

    )
      ,);
  }*/
  void showInSnackBar(String value) {
    _scaffoldKey.currentState.showSnackBar(new SnackBar(content: new Text(value)));
  }
}