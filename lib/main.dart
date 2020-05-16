import 'package:flutter/material.dart';
void main()
{
  runApp(
     MaterialApp(
       debugShowCheckedModeBanner: false,
       home:Login(),
     ),
  );
}
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      body: ListView(
        children: <Widget>[
          SizedBox(height: 10.0,),
          Container(
            height:100.0,
            width:400.0,
            padding: EdgeInsets.only(top: 30.0),
            child:Text('Stress Blaster',
            textAlign: TextAlign.center,
            style:TextStyle(
              fontSize: 35.0,
              color: Colors.white,
            ),
            ),
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(25.5),
              color: Colors.teal,
            ),
          ),
          Center(child:Container(
            height:200,
            width:400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/sb2.gif'),
                ),
            ),
            ),
          ),
          TextField(
            decoration:InputDecoration(
              labelText:'User name',
              border: OutlineInputBorder(
                borderSide:BorderSide(color: Colors.tealAccent,width: 5.0,),
              ),
              prefixIcon: Icon(Icons.person,color:Colors.teal,),
              ) ,
              ),
              SizedBox(height:20),
              TextFormField(
                obscureText: true,
            decoration:InputDecoration(
              labelText:'password',
              border: OutlineInputBorder(
                borderSide:BorderSide(color: Colors.tealAccent,width: 5.0,),
              ),
              prefixIcon: Icon(Icons.remove_red_eye,color:Colors.teal,),
              ) ,
              ),
              SizedBox(height:30),
              Align(
      alignment: Alignment.bottomCenter,
      child: RaisedButton(
        onPressed: () {},
        child: const Text('Login', style: TextStyle(fontSize: 20)),
        color: Colors.teal,
        textColor: Colors.white,
        elevation: 5,
      ),
              ),

        ],),

    );
  }
}