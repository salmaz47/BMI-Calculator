
import 'dart:math';

import 'package:bmi_application/bmi_result.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget
{
  @override
  _BmiScreenState createState() => _BmiScreenState();

}
class _BmiScreenState extends State<BmiScreen>
{
  bool isMale = false;
  int Weight = 30;
  int Age = 8;
  String outPut ="";
  double result =0.0;
 // Color color = Color.fromRGBO(247, 37, 133,1);
  Color SignColor = Colors.white ;
  Color pinkk = Color.fromRGBO(247, 37, 133,1);
  Color basicBackGroun = Color.fromRGBO(83, 92, 145,0.9);
  double Value = 120.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      elevation: 5,
      backgroundColor:Color.fromRGBO(27, 26, 85,1),
      centerTitle: true,
      title: Text(
        "BMI Calculater",
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
     body: Container(
      child: Column(
          children: [
           Expanded(
               child: Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Row(
                   children: [
                     Expanded(
                       child: GestureDetector(
                         onTap: ()
                         {
                           setState(() {
                             isMale= true;
                             isMale ? Colors.cyan :Color.fromRGBO(83, 92, 145,0.9);
                             SignColor = Colors.black;
                           });
                         },
                         child: Container(
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                      image: AssetImage('images/kisspng-male-computer-icons-symbol-sign-clip-art-male-sign-svg-png-icon-free-download-26113-on-5b74a713058cd6.4161025215343716030227.png'),
                                      width: 75.0,
                                    height: 75.0,
                                    color: SignColor,

                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    'MALE',
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white
                                    ),
                                  ),
                                ],
                               ),
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(8.0),
                                   color: isMale ? Colors.cyan :Color.fromRGBO(83, 92, 145,0.9),
                               ),
                             ),
                         //),
                       ),
                       ),
                     SizedBox(
                       width: 20.0,
                     ),
                     Expanded(

                         child: GestureDetector(
                           onTap: ()
                           {

                             setState(() {
                               isMale = false;
                               isMale ? basicBackGroun : Color.fromRGBO(247, 37, 133,1);
                               SignColor = Colors.white;
                             });
                           },
                           child: Container(
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                Image(
                                    image:AssetImage('images/—Pngtree—vector female sign icon_4184765.png'),
                                  width: 90.0,
                                  height: 90.0,
                                  color: SignColor,
                                ),
                                 SizedBox(
                                   height: 10.0,
                                 ),
                                 Text(
                                   'FEMALE',
                              style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w900,
                                color: Colors.white
                                 ),
                                 ),
                               ],
                             ),
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(8.0),
                               color:  isMale ? basicBackGroun : Color.fromRGBO(247, 37, 133,1),
                             ),
                           ),
                         ),
                       ),


                   ],
                 ),
               ),
             ),
            ////  SECOND FRAME
            Expanded(
              child:Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HEIGHT',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              '${Value.round()}',
                              style: TextStyle(
                                fontSize: 45.0,
                                color: isMale ? Colors.cyan : pinkk,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              'cm',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            ),

                          ],
                        ),
                        Slider(
                            value: Value ,
                            max: 220.0,
                            min: 80.0,
                            activeColor: isMale ? Colors.cyan : pinkk,
                            onChanged: (value){
                              setState(() {
                                Value = value ;
                                isMale ? Colors.cyan :Color.fromRGBO(83, 92, 145,0.9);
                              });
                            })

                      ],
                    ),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Color.fromRGBO(83, 92, 145,0.9),
                  ),
                ),
              ) ,
            ),
             ///// THIRD FRAME
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                        top: 20.0,
                        right: 20.0,
                        left: 20.0,
                  bottom: 20.0,
                       ),
                child: Row(
                    children: [
                         Expanded(
                           child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'WEIGHT',
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,

                                  ),
                                ),
                                Text(
                                  '${Weight} KG',
                                  style: TextStyle(
                                    fontSize: 32.0,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,

                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10.0,
                                    left: 20.0,
                                    right: 20.0,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      FloatingActionButton(onPressed: (){
                                        setState(() {
                                          Weight--;
                                        });
                                      },
                                          mini: true,
                                        heroTag: 'weight--',
                                              child: Icon(
                                                Icons.remove,
                                                color: Colors.white,
                                                size: 28.0,
                                              ),
                                          backgroundColor:isMale ? Colors.cyan: pinkk,
                                        ),
                                      FloatingActionButton(onPressed: (){
                                        setState(() {
                                          Weight++;
                                        });
                                      },
                                        mini: true,
                                        heroTag: 'weight+++',
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 28.0,
                                        ),
                                        backgroundColor: isMale ? Colors.cyan :pinkk,
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Color.fromRGBO(83, 92, 145,0.9),
                            ),
                                           ),
                         ),
                         SizedBox(
                           width: 20.0,
                         ),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'AGE',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,

                                ),
                              ),
                              Text(
                                '${Age} Y.O',
                                style: TextStyle(
                                  fontSize: 29.0,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,

                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 10.0,
                                  left: 20.0,
                                  right: 20.0,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    FloatingActionButton(onPressed: (){
                                      setState(() {
                                        Age--;
                                      });
                                    },
                                      mini: true,
                                      heroTag: 'age--',
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                        size: 28.0,
                                      ),
                                      backgroundColor: isMale ? Colors.cyan:pinkk,
                                    ),
                                    FloatingActionButton(onPressed: (){
                                      setState(() {
                                        Age++;
                                      });
                                    },
                                      mini: true,
                                      heroTag: 'age++',
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 28.0,
                                      ),
                                      backgroundColor:  isMale ? Colors.cyan:pinkk,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Color.fromRGBO(83, 92, 145,0.9),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
            ),
            Container(
              color: isMale ? Colors.cyan : pinkk,
              width: double.infinity,
              child: MaterialButton(onPressed: (){
                 result = Weight / pow(Value/100, 2);
                 if(result>=18 && result <=25)
                   {
                     outPut = 'Normal';
                   }
                 else if ( result <=18)
                   {
                     outPut ="Under Weight :(";
                   }
                 else if (result >=25)
                   {
                     outPut ='Over Weight :(';
                   }
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context)=> BMIResult(
                          Age: Age,
                          result: result,
                          isMale: isMale,
                          outPut : outPut,
                        ),
                    ),
                );

              }
              ,
                height: 50.0,
               child: Text(
                "CALCULATE",
                 style: TextStyle(
                   color: Colors.white,
                   fontWeight: FontWeight.bold,
                   fontSize: 25.0,
                 ),
              )
                ,),
            ),
          ],
        ),
     color:Color.fromRGBO(27, 26, 85,1),
    ),

  );
  }

}
