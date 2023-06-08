import 'package:findme/main.dart';
import 'package:findme/register.dart';
import 'package:flutter/material.dart';
import 'package:findme/searchPage.dart';

class showProfile2 extends StatelessWidget {
  const showProfile2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          centerTitle: true,
          elevation: 0.0,
          title: Text('Profile'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              height: 174,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Flexible(
                          flex: 4,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                            child: Center(
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage('assets/profile3.png'),
                                radius: 40.0,
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 9,
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(registerId,
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.grey[800],
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.0
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 22, 0),
                                  child: Container(
                                      height: 70,
                                      alignment: Alignment.topLeft,
                                      padding: EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                            color: Colors.grey,
                                            width: 1,
                                          )
                                      ),
                                      child: Text(
                                        savedText,
                                        style: TextStyle(
                                            color: Colors.grey[800],
                                            fontSize: 15
                                        ),
                                      )
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 80,
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.grey[400],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)
                              )
                          ),
                          child: Text('채팅하기', style: TextStyle(color: Colors.black, fontSize: 15)),
                          onPressed: () {
                            // 채팅하기 화면으로 전환
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => ()),
                            // );
                          },
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.grey[400],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))
                          ),
                          child: Text('취소', style: TextStyle(color: Colors.black, fontSize: 15)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SearchPage()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
