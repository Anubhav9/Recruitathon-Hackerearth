import 'dart:html';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

String i_name='NULL';
String i_company='NULL';
String i_designation='NULL';
String i_experience='NULL';
String i_skillset='NULL';
String i_education='NULL';
String i_review='NULL';
String uid;
var review=List(6);
var problem_skill=List(6);
var data_skill=List(6);
var expert_skill=List(6);
var communication_skill=List(6);
var behaviour_skill=List(6);
final password=TextEditingController();
final ux=TextEditingController();
String stalkname;
String stalkdesignation;
String stalkorganisation;
String stalkskillset;
String stalkexperience;
String stalkeducation;
var stalkproblem=new List(6);
var stalkdsa=new List(6);
var stalkexpertise=new List(6);
var stalkcommunication=new List(6);
var stalkbehaviour=new List(6);
class MytextfieldApp extends StatefulWidget {
  @override
  _MytextfieldAppState createState() => _MytextfieldAppState();
}


class _MytextfieldAppState extends State<MytextfieldApp>{
 final name=TextEditingController();
 final company=TextEditingController();
 final designation=TextEditingController();
 final expereince=TextEditingController();
 final skill=TextEditingController();
 final email=TextEditingController();
 final password=TextEditingController();
 final education=TextEditingController();
 final secret=TextEditingController();
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        title: "My Text Field",
        home: Scaffold(
          body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Welcome to Xperience Door.',style: TextStyle(fontSize: 48,color: Colors.pink,fontWeight: FontWeight.bold),),
                  Text('We open a world full of oppurtunities for you.',style: TextStyle(fontSize: 34,color: Colors.yellow,fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 40,
                  ),
                  TextField(
                    controller: name,
                    textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,color: Colors.pink
                      ),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueAccent,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: "Please enter your full name",

                      )),
                  SizedBox(height: 10),
                  TextField(
                    controller: company,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,color: Colors.pink
                    ),
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Please enter your Current Organisation Name",
                    ),
                    //enabled: false,
                  ),
                  SizedBox(height: 10),

                  TextField(
                    controller: designation,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.pink
                    ),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Enter your Current Designation",
                    ),
                  ),
                  TextField(
                    controller: skill,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22,color: Colors.pink
                    ),
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Enter your Skill Set",
                    ),
                    //enabled: false,
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: expereince,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22,color: Colors.pink
                    ),
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Enter your Industry Experience in Years",
                    ),
                    //enabled: false,
                  ),
                  TextField(
                    controller: education,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22,color: Colors.pink
                    ),
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Enter your highest Education Details",
                    ),
                    //enabled: false,
                  ),
                  TextField(
                    controller: email,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.pink
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,//this has no effect
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Enter your email address",
                    ),
                  ),
                  TextField(
                    controller: password,

                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.pink
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,//this has no effect
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Enter your password",
                    ),
                  ),
                  TextField(
                    controller: secret,

                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.pink
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,//this has no effect
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Enter your secret key here. Do not share it with any recruiter unless explicitly asked",
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  FlatButton(
                    color: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),

                    ),
                    onPressed: ()async
                    {
                      UserCredential u=await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.text, password: password.text);
                      await FirebaseFirestore.instance.collection('users').add({
                        'Name': name.text,
                        'Company':company.text,
                        'Designation':designation.text,
                        'Skill Set':skill.text,
                        'Experience':expereince.text,
                        'email ':email.text,
                        'password': password.text,
                        'Education': education.text,
                        'Secret Key': secret.text

                      }
                      );



                    },
                    child: Text('Submit',
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  ),

                ],
              )),
        ));
  }
}
class mypage extends StatefulWidget {
  @override
  _mypageState createState() => _mypageState();
}

class _mypageState extends State<mypage> {
  @override


  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Container(
          child:ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  FlatButton(
                    color: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),

                    ),
                    onPressed: ()async
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => updated()),
                      );



                    },
                    child: Text('Update your information',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(
                    height: 40,
                  ),


                  Center(child: Text('Name: $i_name',style: TextStyle(fontSize: 22,color: Colors.pink,fontWeight: FontWeight.bold),)),
                  Center(child: Text('$i_designation @ $i_company',style: TextStyle(fontSize: 22,color: Colors.pink,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Top Skills: $i_skillset',style: TextStyle(fontSize: 22,color: Colors.pink,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Experience: $i_experience years in Industry',style: TextStyle(fontSize: 22,color: Colors.pink,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Education: $i_education ',style: TextStyle(fontSize: 22,color: Colors.pink,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Interview Experinece 1 ',style: TextStyle(fontSize: 32,color: Colors.blue,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Problem Solving Skills ',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                  Center(child: Text(problem_skill[0],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Data Structures and Algorithms Skills',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                  Center(child: Text(data_skill[0],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Special Skills ',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                  Center(child: Text(expert_skill[0],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Communication Skills',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                  Center(child: Text(communication_skill[0],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Behaviour Skills',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                  Center(child: Text(behaviour_skill[0],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Interview Experinece 2 ',style: TextStyle(fontSize: 32,color: Colors.blue,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Problem Solving Skills ',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                  Center(child: Text(problem_skill[1],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Data Structures and Algorithms Skills',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                  Center(child: Text(data_skill[1],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Special Skills ',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                  Center(child: Text(expert_skill[1],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Communication Skills',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                  Center(child: Text(communication_skill[1],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Behaviour Skills',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                  Center(child: Text(behaviour_skill[1],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Interview Experinece 3 ',style: TextStyle(fontSize: 32,color: Colors.blue,fontWeight: FontWeight.bold),)),
                  Center(child: Text(problem_skill[2],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Data Structures and Algorithms Skills',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                  Center(child: Text(data_skill[2],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Special Skills ',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                  Center(child: Text(expert_skill[2],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Communication Skills',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                  Center(child: Text(communication_skill[2],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Behaviour Skills',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                  Center(child: Text(behaviour_skill[2],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Interview Experinece 4 ',style: TextStyle(fontSize: 32,color: Colors.blue,fontWeight: FontWeight.bold),)),
                  Center(child: Text(problem_skill[3],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Data Structures and Algorithms Skills',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                  Center(child: Text(data_skill[3],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Special Skills ',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                  Center(child: Text(expert_skill[3],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Communication Skills',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                  Center(child: Text(communication_skill[3],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Behaviour Skills',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                  Center(child: Text(behaviour_skill[3],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Interview Experinece 5 ',style: TextStyle(fontSize: 32,color: Colors.blue,fontWeight: FontWeight.bold),)),
                  Center(child: Text(problem_skill[4],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Data Structures and Algorithms Skills',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                  Center(child: Text(data_skill[4],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Special Skills ',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                  Center(child: Text(expert_skill[4],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Communication Skills',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                  Center(child: Text(communication_skill[4],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                  Center(child: Text('Behaviour Skills',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                  Center(child: Text(behaviour_skill[4],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                  SizedBox(
                    height: 40,
                  ),
                  FlatButton(
                    color: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),

                    ),
                    onPressed: ()async
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => firstpage()),
                      );




                    },
                    child: Text('Navigate to home page',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                  ),





                  //Text('Name $i_name',style: TextStyle(fontSize: 22,color: Colors.pink),),

                ],
              ),
            ],
          )
        )
      ),
    );
  }
}

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final Email=TextEditingController();

  final id=TextEditingController();
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        title: "My Text Field",
        home: Scaffold(
          body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Welcome back to XperienceDoor.',style: TextStyle(fontSize: 50,color: Colors.pink,fontWeight: FontWeight.bold),),
                  Text('We open a world full of Oppurtunities for you!',style: TextStyle(fontSize: 34,color: Colors.yellow,fontWeight: FontWeight.bold),),
                  //Text('Login to get started',style: TextStyle(fontSize: 30,color: Colors.green,fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 300,
                  ),
                  Text('Login to get started',style: TextStyle(fontSize: 30,color: Colors.green,fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 40,
                  ),

                  TextField(
                      controller: ux,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 22,color: Colors.pink
                      ),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueAccent,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: "Please your Email address",

                      )),
                  SizedBox(height: 10),
                  TextField(
                    controller: password,
                    obscureText: true,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22,color: Colors.pink
                    ),
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Please enter your password",
                    ),
                    //enabled: false,
                  ),
                  SizedBox(
                    height: 30,
                  ),


                  FlatButton(
                    color: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),

                    ),
                    onPressed: ()async
                    {
                      uid=ux.text;
                      final result=await FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                        email: ux.text.trim(),
                        password: password.text);
                      var resulti=await FirebaseFirestore.instance.collection('users').where("password", isEqualTo: password.text).get();
                      print(ux.text);
                      resulti.docs.forEach((res) {
                        i_name=res.data()['Name'];
                        i_company=res.data()['Company'];
                        i_designation=res.data()['Designation'];
                        i_experience=res.data()['Experience'];
                        i_skillset=res.data()['Skill Set'];
                        i_education=res.data()['Education'];
                        i_review=res.data()['Review'];
                        print(i_company);
                        print(res.data()['Name'].toString());

                      }
                      
                      
                      );
                      var xxx=await Firestore.instance.collection('reviews').where('email',isEqualTo: ux.text.toString()).get();
                      var count=0;
                      xxx.docs.forEach((res)
                      {
                        problem_skill[count]=res.data()['Problem Skills'];
                        data_skill[count]=res.data()['DSA Skills'];
                        expert_skill[count]=res.data()['Special Skills'];
                        communication_skill[count]=res.data()['Communication Skills'];
                        behaviour_skill[count]=res.data()['Behaviourial Skills'];
                        count=count+1;

                      }

                      );
                      for(int i=count;i<6;i++)
                        {
                          problem_skill[count]='Not Enough Reviews';
                          data_skill[count]='Not Enough Reviews';
                          expert_skill[count]='Not enough reviews';
                          communication_skill[count]='Not Enough Reviews';
                          behaviour_skill[count]='Not Enough Reviews';
                          count=count+1;
                        }

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => mypage()),
                      );




                    },
                    child: Text('Submit',
                      style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                  ),

                ],
              )),
        ));

  }
}

class firstpage extends StatefulWidget {
  @override
  _firstpageState createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        title: "My Text Field",
        home: Scaffold(
          body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Welcome to XperienceDoor.',style: TextStyle(fontSize: 60,color: Colors.pink,fontWeight: FontWeight.bold),),
                  Text('We open a world full of oppurtunities for you!',style: TextStyle(fontSize: 34,color: Colors.yellow,fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 70,
                  ),
                  Text('What we do: XperienceDoor is the Glassdoor of the recruitment world. Recruiters can annomyously post a review about the candidates. Potential Recruiters can check these reviews to find if the candidate is a perfect match for their organisation or not.',style: TextStyle(fontSize: 26,color: Colors.orange,fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 70,
                  ),
                  Text('A person can only improve if someone shares a feedback for them. Our past experiences tell that the concept of feedback is not utilized in the recruitment world because there is no mechanism to present it. Thus, we the concept of Xpereince Door was born.',style: TextStyle(fontSize: 24,color: Colors.yellow,fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 70,
                  ),
                  Text('We believe in Freedom of Speech and thus we are the firm believers that everyone should have the right to present their opinions. However, if the candidates feel they have been wrongly judged, they can alsways justify themselves by replying to the review.',style: TextStyle(fontSize: 24,color: Colors.green,fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 70,
                  ),
                  SizedBox(
                    height: 50,
                  ),



                  Center(
                    child: FlatButton(
                      color: Colors.pink,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),

                      ),

                      onPressed: ()async
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => login()),
                        );


                      },



                      child: Text('Login as Candidate',
                        style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),

                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: FlatButton(
                      color: Colors.pink,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),

                      ),
                      onPressed: ()async
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MytextfieldApp()),
                        );



                      },
                      child: Text('Register as Candidate',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: FlatButton(
                      color: Colors.pink,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),

                      ),
                      onPressed: ()async
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => reviewx()),
                        );



                      },
                      child: Text('Review for Candidates by HR/Recruiting Manager',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                    ),

                  ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: FlatButton(
                  color: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),

                  ),
                  onPressed: ()async
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => stalk()),
                    );



                  },
                  child: Text("Let's stalk the candidate",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                ),
              )],
              )),
        ));;
  }
}
class clientpage extends StatefulWidget {
  @override
  _clientpageState createState() => _clientpageState();
}


class _clientpageState extends State<MytextfieldApp>{
  final name=TextEditingController();
  final company=TextEditingController();
  final designation=TextEditingController();
  final expereince=TextEditingController();
  final skill=TextEditingController();
  final email=TextEditingController();
  final password=TextEditingController();
  final education=TextEditingController();
  final secret=TextEditingController();
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        title: "My Text Field",
        home: Scaffold(
          body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Welcome to XperienceDoor.',style: TextStyle(fontSize: 48,color: Colors.pink,fontWeight: FontWeight.bold),),
                  Text('We open a world full of oppurtunities for you',style: TextStyle(fontSize: 34,color: Colors.yellow,fontWeight: FontWeight.bold),),
                  TextField(
                      controller: name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 22,color: Colors.pink
                      ),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueAccent,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: "Please enter your full name",

                      )),
                  SizedBox(height: 10),
                  TextField(
                    controller: company,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22,color: Colors.pink
                    ),
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Please enter your Current Organisation Name",
                    ),
                    //enabled: false,
                  ),
                  SizedBox(height: 10),

                  TextField(
                    controller: designation,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.pink
                    ),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Enter your Current Designation",
                    ),
                  ),
                  TextField(
                    controller: skill,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22,color: Colors.pink
                    ),
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Enter your Skill Set",
                    ),
                    //enabled: false,
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: expereince,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22,color: Colors.pink
                    ),
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Enter your Industry Experience in Years",
                    ),
                    //enabled: false,
                  ),
                  TextField(
                    controller: education,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22,color: Colors.pink
                    ),
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Enter your highest Education Details",
                    ),
                    //enabled: false,
                  ),
                  TextField(
                    controller: email,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.pink
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,//this has no effect
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Enter your email address",
                    ),
                  ),
                  TextField(
                    controller: password,
                    obscureText: true,

                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.pink
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,//this has no effect
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Enter your password",
                    ),
                  ),
                  TextField(
                    controller: secret,
                    obscureText: true,

                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.pink
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,//this has no effect
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Enter your secret key here. Do not share it with any recruiter unless explicitly asked",
                    ),
                  ),
                  FlatButton(
                    color: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),

                    ),
                    onPressed: ()async
                    {
                      UserCredential u=await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.text, password: password.text);
                      final docref=await FirebaseFirestore.instance.collection('client').add({
                        'Name': name.text,
                        'Company':company.text,
                        'Designation':designation.text,
                        'Skill Set':skill.text,
                        'Experience':expereince.text,
                        'email ':email.text,
                        'password': password.text,
                        'Education': education.text,
                        'Secret Key': secret.text


                      }
                      );

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => successfull()),
                      );



                    },
                    child: Text('Submit',
                      style: TextStyle(color: Colors.white),),
                  ),

                ],
              )),
        ));
  }
}
class reviewx extends StatefulWidget {
  @override
  _reviewxState createState() => _reviewxState();
}

class _reviewxState extends State<reviewx> {
  var ps=TextEditingController();
  var dsa=TextEditingController();
  var fs=TextEditingController();
  var cs=TextEditingController();
  var bs=TextEditingController();
  final es=TextEditingController();
  final ss=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              Text('Welcome to XperienceDoor.',style: TextStyle(fontSize: 48,color: Colors.pink,fontWeight: FontWeight.bold),),
              Text('We open a world full of oppurtunities for you',style: TextStyle(fontSize: 34,color:Colors.yellow,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 40,
              ),
              TextField(
                controller: es,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.pink
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,//this has no effect
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: "Enter the interviewee's email address",
                ),
              ),
              TextField(
                controller: ss,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.pink
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,//this has no effect
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: "Enter the interviewee's secret key",
                ),
              ),
              TextField(
                controller: ps,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.pink
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,//this has no effect
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: "Comments about Problem Solving Skill",
                ),
              ),
              TextField(
                controller: dsa,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.pink
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,//this has no effect
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: "Comments about Data Structure and Algorithm Skills",
                ),
              ),
              TextField(
                controller: fs,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.pink
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,//this has no effect
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: "Comments about expertise of his/her field",
                ),
              ),
              TextField(
                controller: cs,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.pink
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,//this has no effect
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: "Comments about communication skills",
                ),
              ),
              TextField(
                controller: bs,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.pink
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,//this has no effect
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: "Comments about behaviourial skills",
                ),
              ),
              FlatButton(
                color: Colors.pink,
                onPressed: ()async
                {
                  print(es.text);
                  var ftr=await Firestore.instance.collection("users").where("Secret Key",isEqualTo: ss.text).get();
                  ftr.docs.forEach((res) {

                    print(res.data());
                    String temp=res.data()['email '].toString();
                    print(temp);
                    if(temp==es.text)
                      {
                        Firestore.instance.collection('reviews').add(
                          {
                            'email':es.text,
                            'Problem Skills': ps.text,
                            'DSA Skills': dsa.text,
                            'Special Skills':fs.text ,
                            'Communication Skills': cs.text,
                            'Behaviourial Skills': bs.text


                          }
                        );

                      }
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => successfull()),
                  );


                },
                child: Text('Submit Review',style: TextStyle(color: Colors.white),),
              )

            ],
          ),

        ),


      ),
    );
  }
}
class stalk extends StatefulWidget {
  @override
  _stalkState createState() => _stalkState();
}

class _stalkState extends State<stalk> {
  final eet=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              Text('Welcome to XperienceDoor.',style: TextStyle(fontSize: 48,color: Colors.pink,fontWeight: FontWeight.bold),),
              Text('We open a world full of oppurtunities for you',style: TextStyle(fontSize: 34,color:Colors.yellow,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 40,
              ),
              TextField(
                controller: eet,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.pink
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,//this has no effect
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: "Enter the candidates email id",
                ),
              ),

              FlatButton(
                color: Colors.pink,
                onPressed: ()async
                {

                  var resulti=await FirebaseFirestore.instance.collection('users').where("email ", isEqualTo: eet.text).get();
                  resulti.docs.forEach((res) {
                    stalkname = res.data()['Name'];
                    stalkorganisation = res.data()['Company'];
                    stalkdesignation = res.data()['Designation'];
                    stalkexperience = res.data()['Experience'];
                    stalkskillset = res.data()['Skill Set'];
                    stalkeducation = res.data()['Education'];
                  }
                  );
                  int count=0;
                  var rex=await FirebaseFirestore.instance.collection('reviews').where("email", isEqualTo: eet.text).get();
                  rex.docs.forEach((rexi) {
                    print(rexi.data()['Problem Skills']);
                    stalkproblem[count]=rexi.data()['Problem Skills'];
                    print(stalkproblem);
                    stalkdsa[count]=rexi.data()['DSA Skills'];
                    print(stalkdsa);
                    stalkexpertise[count]=rexi.data()['Special Skills'];
                    print(stalkexpertise);
                    stalkcommunication[count]=rexi.data()['Communication Skills'];
                    print(stalkcommunication);
                    stalkbehaviour[count]=rexi.data()['Behaviourial Skills'];
                    print(stalkbehaviour);
                    count=count+1;

                  }

                  );
                  for(int i=count;i<6;i++)
                    {
                      stalkproblem[count]='Not Enough Reviews';
                      stalkdsa[count]='Not Enough Reviews';
                      stalkexpertise[count]='Not enough reviews';
                      stalkcommunication[count]='Not Enough Reviews';
                      stalkbehaviour[count]='Not Enough Reviews';
                      count=count+1;

                    }








                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => stalkpage()),
                  );





                },
                child: Text('Stalk Candidate',style: TextStyle(color: Colors.white),),
              )

            ],
          ),

        ),


      ),
    );;
  }
}
class stalkpage extends StatefulWidget {
  @override
  _stalkpageState createState() => _stalkpageState();
}

class _stalkpageState extends State<stalkpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
          body: Container(
              child:ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),

                      Center(child: Text('Name: $stalkname',style: TextStyle(fontSize: 22,color: Colors.pink,fontWeight: FontWeight.bold),)),
                      Center(child: Text('$stalkdesignation @ $stalkorganisation',style: TextStyle(fontSize: 22,color: Colors.pink,fontWeight: FontWeight.bold),)),
                      Center(child: Text('Top Skills: $stalkskillset',style: TextStyle(fontSize: 22,color: Colors.pink,fontWeight: FontWeight.bold),)),
                      Center(child: Text('Experience: $stalkexperience years in Industry',style: TextStyle(fontSize: 22,color: Colors.pink,fontWeight: FontWeight.bold),)),
                      Center(child: Text('Education: $stalkeducation ',style: TextStyle(fontSize: 22,color: Colors.pink,fontWeight: FontWeight.bold),)),
                      Center(child: Text('Interview Experinece 1 ',style: TextStyle(fontSize: 22,color: Colors.blue,fontWeight: FontWeight.bold),)),
                      Center(child: Text('Problem Solving Skills ',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                      Center(child: Text(stalkproblem[0],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                      Center(child: Text('Data Structures and Algorithms Skills',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                      Center(child: Text(stalkdsa[0],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                      Center(child: Text('Special Skills ',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                      Center(child: Text(stalkexpertise[0],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                      Center(child: Text('Communication Skills',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                      Center(child: Text(stalkcommunication[0],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                      Center(child: Text('Behaviour Skills',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                      Center(child: Text(stalkbehaviour[0],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                      Center(child: Text('Interview Experinece 2 ',style: TextStyle(fontSize: 22,color: Colors.blue,fontWeight: FontWeight.bold),)),
                      Center(child: Text('Problem Solving Skills ',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                      Center(child: Text(stalkproblem[1],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                      Center(child: Text('Data Structures and Algorithms Skills',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                      Center(child: Text(stalkdsa[1],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                      Center(child: Text('Special Skills ',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                      Center(child: Text(stalkexpertise[1],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                      Center(child: Text('Communication Skills',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                      Center(child: Text(stalkcommunication[1],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),
                      Center(child: Text('Behaviour Skills',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),)),
                      Center(child: Text(stalkproblem[1],style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),)),




                      //Text('Name $i_name',style: TextStyle(fontSize: 22,color: Colors.pink),),

                    ],
                  ),
                ],
              )
          )
      ),
    );;
  }
}
class successfull extends StatefulWidget {
  @override
  _successfullState createState() => _successfullState();
}

class _successfullState extends State<successfull> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              Center(child: Text('Welcome to XperienceDoor.',style: TextStyle(fontSize: 48,color: Colors.pink,fontWeight: FontWeight.bold),)),
              Center(child: Text('We open a world full of oppurtunities for you',style: TextStyle(fontSize: 34,color:Colors.yellow,fontWeight: FontWeight.bold),)),
              SizedBox(
                height: 40,
              ),
              Center(child: Text('Operation Successfull.',style: TextStyle(fontSize: 28,color: Colors.blue,fontWeight: FontWeight.bold),)),
              SizedBox(
                height: 40,
              ),


              FlatButton(
                color: Colors.pink,
                onPressed: ()
                {



                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => firstpage()),
                  );





                },
                child: Text('Stalk Candidate',style: TextStyle(color: Colors.white),),
              )

            ],
          ),

        ),


      ),
    );;;
  }
}
class updated extends StatefulWidget {
  @override
  _updatedState createState() => _updatedState();
}

class _updatedState extends State<updated> {
  final upt=TextEditingController();
  final newc=TextEditingController();
  final newd=TextEditingController();
  final newy=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              Center(child: Text('Welcome to XperienceDoor.',style: TextStyle(fontSize: 48,color: Colors.pink,fontWeight: FontWeight.bold),)),
              Center(child: Text('We open a world full of oppurtunities for you',style: TextStyle(fontSize: 34,color:Colors.yellow,fontWeight: FontWeight.bold),)),
              SizedBox(
                height: 40,
              ),
              TextField(
                controller: upt,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.pink
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,//this has no effect
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: "Enter your unique id",
                ),
              ),
              TextField(
                controller: newc,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.pink
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,//this has no effect
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: "Enter New Company Name",
                ),
              ),
              TextField(
                controller: newd,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.pink
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,//this has no effect
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: "Enter new designation",
                ),
              ),
              TextField(
                controller: newy,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.pink
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,//this has no effect
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: "Enter your years in IT industry",
                ),
              ),
              SizedBox(
                height: 40,
              ),


              FlatButton(
                color: Colors.pink,
                onPressed: ()async
                {
                  FirebaseFirestore.instance.collection('users').doc(upt.text).update({'Company':newc.text});


                },
                child: Text('Update Company Name',style: TextStyle(color: Colors.white),),
              ),
              FlatButton(
                color: Colors.pink,
                onPressed: ()async
                {
                  FirebaseFirestore.instance.collection('users').doc(upt.text).update({'Designation':newd.text});


                },
                child: Text('Update Desgination',style: TextStyle(color: Colors.white),),
              ),
              FlatButton(
                color: Colors.pink,
                onPressed: ()async
                {
                  FirebaseFirestore.instance.collection('users').doc(upt.text).update({'Experience':newy.text});


                },
                child: Text('Update Industry Experience',style: TextStyle(color: Colors.white),),
              ),

            ],
          ),

        ),


      ),
    );;;
  }
}




void main()
{
  runApp(MaterialApp(
    home: firstpage(),
  ));
}


