import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobcard/ui/utils/app_constants.dart';
import 'package:jobcard/ui/utils/common_utils.dart';
import 'package:jobcard/ui/home/home_sceen.dart';
import 'package:jobcard/ui/utils/validation_utils.dart';

class RegisterScreen extends StatefulWidget{


  State createState(){

    return RegisterState();
  }

}

class RegisterState extends State<RegisterScreen>{

  FocusNode FocusNode_1 = new FocusNode();
  FocusNode FocusNode_2 = new FocusNode();
  FocusNode FocusNode_3 = new FocusNode();
  FocusNode FocusNode_4 = new FocusNode();
  FocusNode FocusNode_5 = new FocusNode();
  TextEditingController mobileFieldController = new TextEditingController();
  TextEditingController nameFieldController = new TextEditingController();
  TextEditingController emailFieldController = new TextEditingController();
  TextEditingController passwordFieldController = new TextEditingController();
  TextEditingController managerNameFieldController = new TextEditingController();
  TextEditingController organizationFieldController = new TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool autoValidate = false;



  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Register User'),
      ),
      body: Stack(

        children: <Widget>[
          Align(
              alignment: Alignment.topLeft,

              child: Padding(padding: EdgeInsets.fromLTRB(0,30, 0, 0),
                child:
                Scrollbar(child:ListView(

                  children: <Widget>[

                    Form(child: Column(children: <Widget>[

                      Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 10),child: mobileField(),),
                      Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 10),child: nameField(),),
                      Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 10),child:emailField(),),
                      Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 10),child:passwordField(),),
                      Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 10),child:managerField(),),
                      Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 10),child: organizationField(),),

                    ],),


                      key: _formKey,autovalidate: autoValidate,),
                    Padding(padding: EdgeInsets.only(top: 25,bottom: 20,left: 50,right: 50),child:

                    registerButton(),)

                  ],
                )),)

          )
        ],

      ),
    );
  }

  Widget mobileField(){

    return TextFormField(maxLines: 1,style:
    TextStyle(color:Colors.black,fontSize: 18.0,),maxLength: 10,
        keyboardType: TextInputType.numberWithOptions(decimal: false,signed: true),
        textInputAction: TextInputAction.next,
        controller: mobileFieldController,
        onEditingComplete: (){
          FocusScope.of(context).requestFocus(FocusNode_1);

        },
        decoration: InputDecoration(labelText: "Mobile",
            hintStyle: TextStyle(fontSize: 18.0,color: Colors.black),counterText: '',
            contentPadding:
            EdgeInsets.only(left:AppConstants.PADDING_30,right:
            AppConstants.PADDING_30,top:AppConstants.PADDING_15,bottom:AppConstants.PADDING_15),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(AppConstants.CIRCULAR_RADIUS_10),)),

        validator:(String str){

          return ValidationUtils.validate(str, 'Mobile');
        });
  }
  Widget nameField(){

    return TextFormField(maxLines: 1,style:
    TextStyle(color:Colors.black,fontSize: 18.0,),
        keyboardType: TextInputType.text,textInputAction: TextInputAction.next,
        controller: nameFieldController,
        focusNode: FocusNode_1,
        onEditingComplete: (){
          FocusScope.of(context).requestFocus(FocusNode_2);

        },
        decoration: InputDecoration(labelText: "Name",
            hintStyle: TextStyle(fontSize: 18.0,color: Colors.black),
            contentPadding:
            EdgeInsets.only(left:AppConstants.PADDING_30,right:
            AppConstants.PADDING_30,top:AppConstants.PADDING_15,bottom:AppConstants.PADDING_15),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(AppConstants.CIRCULAR_RADIUS_10),)),

        validator:(String str){

          return ValidationUtils.validate(str, 'Name');
        });
  }

  Widget emailField(){

    return TextFormField(maxLines: 1,style:
    TextStyle(color:Colors.black,fontSize: 18.0,),
        keyboardType: TextInputType.emailAddress,textInputAction: TextInputAction.next,
        controller: emailFieldController,
        focusNode: FocusNode_2,
        onEditingComplete: (){
          FocusScope.of(context).requestFocus(FocusNode_3);

        },
        decoration: InputDecoration(labelText: "Email Address",
            hintStyle: TextStyle(fontSize: 18.0,color: Colors.black),
            contentPadding:
            EdgeInsets.only(left:AppConstants.PADDING_30,right:
            AppConstants.PADDING_30,top:AppConstants.PADDING_15,bottom:AppConstants.PADDING_15),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(AppConstants.CIRCULAR_RADIUS_10),)),
        validator:ValidationUtils.validateEmail);
  }

  Widget passwordField(){

    return TextFormField(maxLines: 1,style:
    TextStyle(color:Colors.black,fontSize: 18.0,),
        keyboardType: TextInputType.text,textInputAction: TextInputAction.next,obscureText: true,
        controller: passwordFieldController,
        focusNode: FocusNode_3,
        onEditingComplete: (){
          FocusScope.of(context).requestFocus(FocusNode_4);

        },
        decoration: InputDecoration(labelText: "Password",
            hintStyle: TextStyle(fontSize: 18.0,color: Colors.black),
            contentPadding:
            EdgeInsets.only(left:AppConstants.PADDING_30,right:
            AppConstants.PADDING_30,top:AppConstants.PADDING_15,bottom:AppConstants.PADDING_15),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(AppConstants.CIRCULAR_RADIUS_10),)),

        validator:(String str){

          return ValidationUtils.validate(str, 'Password');
        });
  }
  Widget managerField(){

    return TextFormField(maxLines: 1,style:
    TextStyle(color:Colors.black,fontSize: 18.0,),
        keyboardType: TextInputType.text,textInputAction: TextInputAction.next,
        controller: managerNameFieldController,
        focusNode: FocusNode_4,
        onEditingComplete: (){
          FocusScope.of(context).requestFocus(FocusNode_5);

        },
        decoration: InputDecoration(labelText: "Manager Name",
            hintStyle: TextStyle(fontSize: 18.0,color: Colors.black),
            contentPadding:
            EdgeInsets.only(left:AppConstants.PADDING_30,right:
            AppConstants.PADDING_30,top:AppConstants.PADDING_15,bottom:AppConstants.PADDING_15),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(AppConstants.CIRCULAR_RADIUS_10),)),

        validator:(String str){

          return ValidationUtils.validate(str, 'Manager Name');
        });
  }

  Widget organizationField(){

    return TextFormField(maxLines: 1,style:
    TextStyle(color:Colors.black,fontSize: 18.0,),
        keyboardType: TextInputType.text,textInputAction: TextInputAction.next,
        controller: organizationFieldController,
        focusNode: FocusNode_5,
        onEditingComplete: (){

          SystemChannels.textInput.invokeMethod('TextInput.hide');
          CommonUtils.changeFocus(context);
        },
        decoration: InputDecoration(labelText: "Organization Name",
            hintStyle: TextStyle(fontSize: 18.0,color: Colors.black),
            contentPadding:
            EdgeInsets.only(left:AppConstants.PADDING_30,right:
            AppConstants.PADDING_30,top:AppConstants.PADDING_15,bottom:AppConstants.PADDING_15),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(AppConstants.CIRCULAR_RADIUS_10),)),

        validator:(String str){

          return ValidationUtils.validate(str, 'Organization Name');
        });
  }
  Widget registerButton(){

    return SizedBox(


        child:RaisedButton(onPressed: () {
          CommonUtils.hideKeyboard();
          CommonUtils.changeFocus(context);

          if(_validateInputs()){
              moveToHomeScreen();
          }
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