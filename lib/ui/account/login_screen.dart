import 'package:flutter/material.dart';
import 'package:jobcard/ui/utils/app_constants.dart';
import 'package:jobcard/ui/utils/common_utils.dart';
import 'package:jobcard/ui/home/home_sceen.dart';
import 'package:jobcard/ui/utils/validation_utils.dart';

class LoginScreen extends StatefulWidget{


  @override
  State createState() {
    return LoginState();
  }
}

class LoginState extends State<LoginScreen>{

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool autoValidate = false;
  TextEditingController emailFieldController = new TextEditingController();
  TextEditingController passwordFieldController = new TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  FocusNode passwordTextfiledFocusNode = new FocusNode();

  Widget build(BuildContext context){

    return Scaffold(
    resizeToAvoidBottomPadding: false,
      appBar: AppBar(

        title: Text('Job Cards'),
      ),
      body: Padding(padding:EdgeInsets.only(top: 100) ,child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[

          Form(child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(20.0),child: emailField(),)

              ,

              Padding(padding: EdgeInsets.fromLTRB(20.0,0.0,20.0,0.0),child: passwordField(),)

            ],
          ),key: _formKey,autovalidate:autoValidate ,),
          Padding(padding: EdgeInsets.only(top: 30)
          ,child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

               loginButton(),
               SizedBox(width: 20,),
               registerButton()
              ]
              ,),
          ),
        ],
      ),
    ));
  }


  Widget emailField(){
    return TextFormField(maxLines: 1,style:
    TextStyle(color:Colors.black,fontSize: 18.0,),
      keyboardType: TextInputType.emailAddress,textInputAction: TextInputAction.next,
      controller: emailFieldController,
      onEditingComplete:(){

        FocusScope.of(context).requestFocus(passwordTextfiledFocusNode);
      },

      decoration: InputDecoration(labelText: "Email Address",
          hintStyle: TextStyle(fontSize: 18.0,color: Colors.black),
          contentPadding:
          EdgeInsets.only(left:AppConstants.PADDING_30,right:
          AppConstants.PADDING_30,top:AppConstants.PADDING_15,bottom:AppConstants.PADDING_15),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(AppConstants.CIRCULAR_RADIUS_10),)),
      validator:ValidationUtils.validateEmail,

    );
  }

  Widget passwordField(){

    return TextFormField(maxLines: 1,style:
      TextStyle(color:Colors.black,fontSize: 18.0),
        keyboardType: TextInputType.text,obscureText: true,textInputAction: TextInputAction.done,
        focusNode: passwordTextfiledFocusNode,
        controller: passwordFieldController,
        onEditingComplete:(){

          CommonUtils.hideKeyboard();
          CommonUtils.changeFocus(context);

        },
        decoration: InputDecoration(hintText: "",labelText: "Password",
            hintStyle: TextStyle(fontSize: 18.0,color: Colors.black),
            contentPadding:
            EdgeInsets.only(left:AppConstants.PADDING_30,right:
            AppConstants.PADDING_30,top:AppConstants.PADDING_15,bottom:AppConstants.PADDING_15),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(AppConstants.CIRCULAR_RADIUS_10),)),
        validator: ValidationUtils.validatePassword,
      );




  }

  Widget loginButton(){

    return SizedBox(

        child:RaisedButton(onPressed: () {
          CommonUtils.hideKeyboard();
          CommonUtils.changeFocus(context);
          if(_validateInputs()){

            moveToHomeScreen();
          }



        },color: Colors.purple,
          child:Text("Login",style: TextStyle(color: Colors.white),)

          ,shape: RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(25.0),

          ),padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
        )
    );
  }
  Widget registerButton(){

    return SizedBox(

        child:RaisedButton(onPressed: () {
          CommonUtils.hideKeyboard();
          CommonUtils.changeFocus(context);

          Navigator.of(context).pushReplacementNamed('/RegisterScreen');
        },color: Colors.purple,
          child:Text("Register",style: TextStyle(color: Colors.white),)

          ,shape: RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(25.0),

          ),padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
        )
    );
  }

  bool _validateInputs() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      return true;
    } else {
      setState(() {
        autoValidate = true;

      });

      return false;
    }
  }

  void moveToHomeScreen(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
  }
}