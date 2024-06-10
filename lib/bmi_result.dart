import 'package:bmi_application/counter_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*class BMIResult extends StatefulWidget{

  @override
  _BMIResultState createState() => _BMIResultState();

}
*/
class BMIResult extends StatelessWidget
{
  final double result;
  final int Age;
  final bool isMale;
  final String outPut;
  BMIResult({
    required this.isMale,
    required this.Age,
    required this.result,
    required this.outPut,
});
 final Color mainColor = Color.fromRGBO(27, 26, 85,1);
  final Color pinkk = Color.fromRGBO(247, 37, 133,1);
 final Color basicBackGroun = Color.fromRGBO(83, 92, 145,0.9);
  final String BMIClassification = 'Normal';
 //double result = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor:mainColor,
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
        width: double.infinity,
        height: double.infinity,
        alignment: AlignmentDirectional.topStart,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30.0,
                left: 15.0,
                bottom: 30.0,
              ),
              child: Row(
                children: [
                  Text(
                    'Your Result',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    width: 300.0,
                    height: 500.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${outPut}',
                          style: TextStyle(
                              fontSize: 35.0,
                              fontWeight: FontWeight.w500,
                              color: isMale ? Colors.cyan : pinkk,
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20.0,
                            bottom: 10.0,
                          ),
                          child: Text(
                            '${result.round()}',
                            style: TextStyle(
                                fontSize: 70.0,
                                fontWeight: FontWeight.w900,
                                color:Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          'Normal BMI Range:',
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w500,
                            color: isMale ? Colors.cyan : pinkk,
                          ),
                        ),
                        Text(
                          '18 - 25 kg/m2',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                      ],

                    ),
                   // color: basicBackGroun,
                    decoration: BoxDecoration(
                      color: basicBackGroun,
                      borderRadius: BorderRadius.circular(10.0),
                    ),

                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
             // height: double.infinity,
              color: isMale ? Colors.cyan : pinkk,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(onPressed:
                      ()

                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder:
                            (context)=> BmiScreen(),
                        )
                    );
                  },
                    height: 50.0,
                    child: Text(
                      'RE-CALCULATE Your BMI',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),

            ),
          ],
        ),
        color: mainColor,
      ),
/* Container(
        width: double.infinity,
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Result',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              width: 250.0,
              height: 500.0,
              child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Normal',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.green
                    ),
                  ),
                ],
              ),
               color: basicBackGroun,

            ),
          ],
        ),
        color: mainColor,
      ),*/
    );
  }

}