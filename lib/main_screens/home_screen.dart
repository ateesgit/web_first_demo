
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String timeText = "";
  String dateText = "";
  Timer? timer;

  String formatCurrentLiveTime(DateTime time) {
    return DateFormat("hh:mm:ss a").format(time);
  }

  String formatCurrentDate(DateTime date) {
    return DateFormat("dd MMMM, yyyy").format(date);
  }

  void getCurrentLiveTime() {
    final DateTime timeNow = DateTime.now();
    final String liveTime = formatCurrentLiveTime(timeNow);
    final String liveDate = formatCurrentDate(timeNow);

    setState(() {
      timeText = liveTime;
      dateText = liveDate;
    });
  }

  @override
  void initState() {
    super.initState();

    // Get the initial time and date
    timeText = formatCurrentLiveTime(DateTime.now());
    dateText = formatCurrentDate(DateTime.now());

    // Start the periodic timer to update the time every second
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      getCurrentLiveTime();
    });
  }

  @override
  void dispose() {
    // Dispose the timer when the widget is removed from the tree
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        // centerTitle: false,
        flexibleSpace: Container(
          decoration:const BoxDecoration(
            gradient: LinearGradient(
              colors:
              [
              Colors.amber,
              Colors.cyan
            ],
           begin: FractionalOffset(0, 0),
           end: FractionalOffset(1, 0),
              stops: [0,1],
              tileMode: TileMode.clamp
            )
          ),
        ),
        backgroundColor: Colors.blueAccent,
        title: const Text("Admin web portal",
        style: TextStyle(
          fontSize: 20,
          letterSpacing: 3,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                timeText + "\n" + dateText,
                style: const TextStyle(
                  fontSize: 20,
                  // color: Colors.black,
                  color: Colors.white,
                  letterSpacing: 3,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

          // user activate and block accounts button ui
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              //  activate
                ElevatedButton.icon(
                  icon:const Icon(Icons.person_add,color: Colors.white,),
                  label: Text(
                    "Activate Users" +"\n"+ "Accounts".toUpperCase(),
                    style:const TextStyle(
                      fontSize: 16,
                      letterSpacing: 3,
                      color: Colors.white
                    ),

                  ),
                  style: ElevatedButton.styleFrom(
                    padding:const EdgeInsets.all(40.0),
                    primary: Colors.cyan
                  ),
                  onPressed: ()
                  {

                  },
                ),
             const SizedBox(width: 20,),
              //  block
                ElevatedButton.icon(
                  icon:const Icon(Icons.block_flipped,color: Colors.white,),
                  label: Text(
                    "Block Users" +"\n"+"Accounts".toUpperCase(),
                    style:const TextStyle(
                        fontSize: 16,
                        letterSpacing: 3,
                        color: Colors.white
                    ),

                  ),
                  style: ElevatedButton.styleFrom(
                      padding:const EdgeInsets.all(40.0),
                      primary: Colors.amber
                  ),
                  onPressed: ()
                  {

                  },
                )
              ],
            ),

          //  Sellers activate account and block accounts ui

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //  activate
                ElevatedButton.icon(
                  icon:const Icon(Icons.person_add,color: Colors.white,),
                  label: Text(
                    "Activate Sellers" +"\n"+ "Accounts".toUpperCase(),
                    style:const TextStyle(
                        fontSize: 16,
                        letterSpacing: 3,
                        color: Colors.white
                    ),

                  ),
                  style: ElevatedButton.styleFrom(
                      padding:const EdgeInsets.all(40.0),
                      primary: Colors.amber
                  ),
                  onPressed: ()
                  {

                  },
                ),
                const SizedBox(width: 20,),
                //  block
                ElevatedButton.icon(
                  icon:const Icon(Icons.block_flipped,color: Colors.white,),
                  label: Text(
                    "Block Sellers" +"\n"+"Accounts".toUpperCase(),
                    style:const TextStyle(
                        fontSize: 16,
                        letterSpacing: 3,
                        color: Colors.white
                    ),

                  ),
                  style: ElevatedButton.styleFrom(
                      padding:const EdgeInsets.all(40.0),
                      primary: Colors.cyan
                  ),
                  onPressed: ()
                  {

                  },
                )
              ],
            ),

      // riders activate and block accounts button ui
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //  activate
                ElevatedButton.icon(
                  icon:const Icon(Icons.person_add,color: Colors.white,),
                  label: Text(
                    "Activate Riders" +"\n"+ "Accounts".toUpperCase(),
                    style:const TextStyle(
                        fontSize: 16,
                        letterSpacing: 3,
                        color: Colors.white
                    ),

                  ),
                  style: ElevatedButton.styleFrom(
                      padding:const EdgeInsets.all(40.0),
                      primary: Colors.cyan
                  ),
                  onPressed: ()
                  {

                  },
                ),
                const SizedBox(width: 20,),
                //  block
                ElevatedButton.icon(
                  icon:const Icon(Icons.block_flipped,color: Colors.white,),
                  label: Text(
                    "Block Riders" +"\n"+"Accounts".toUpperCase(),
                    style:const TextStyle(
                        fontSize: 16,
                        letterSpacing: 3,
                        color: Colors.white
                    ),

                  ),
                  style: ElevatedButton.styleFrom(
                      padding:const EdgeInsets.all(40.0),
                      primary: Colors.amber
                  ),
                  onPressed: ()
                  {

                  },
                )
              ],
            ),
            // Logout
            ElevatedButton.icon(
              icon:const Icon(Icons.logout,color: Colors.white,),
              label: Text(
                "Logout".toUpperCase(),
                style:const TextStyle(
                    fontSize: 16,
                    letterSpacing: 3,
                    color: Colors.white
                ),

              ),
              style: ElevatedButton.styleFrom(
                  padding:const EdgeInsets.all(40.0),
                  primary: Colors.amber
              ),
              onPressed: ()
              {

              },
            )

          ],
        ),
      ),
    );
  }
 //  String timeText="";
 //  String dateText="";
 //
 //  String formatCurrentLiveTime(DateTime time){
 // return DateFormat("hh:mm:ss a").format(time);
 //  }
 //  String formatCurrentDate(DateTime date){
 //    return DateFormat("dd MMMM, yyyy").format(date);
 //  }
 //
 //  getCurrentLiveTime(){
 //     final DateTime timeNow= DateTime.now();
 //     final String liveTime=formatCurrentLiveTime(timeNow);
 //     final String liveDate = formatCurrentDate(timeNow);
 //
 //     if(this.mounted){
 //       setState(() {
 //
 //         timeText=liveTime;
 //         dateText=liveDate;
 //
 //        Timer.periodic(const Duration(seconds: 1), (timer) {
 //          getCurrentLiveTime();
 //        });
 //       });
 //     }
 //
 //
 //  }
 //
 //  @override
 //  void initState() {
 //    // super.initState();
 //
 //  //time
 //   timeText= formatCurrentLiveTime(DateTime.now());
 //  // date
 //    dateText= formatCurrentDate(DateTime.now());
 //  }
 //
 //
 //  @override
 //  Widget build(BuildContext context) {
 //    return  Scaffold(
 //      appBar: AppBar(
 //        backgroundColor: Colors.blueAccent,
 //        title:const Text(
 //          "Welcome to  Admin web portal"
 //        ),
 //      ),
 //      body: Center(
 //        child: Column(
 //          children: [
 //            Padding(
 //              padding: const EdgeInsets.all(12.0),
 //              child: Text(
 //                timeText +"\n"+dateText,
 //                style:const TextStyle(
 //                  fontSize: 20,
 //                  color: Colors.black,
 //                  letterSpacing:3,
 //                  fontWeight: FontWeight.bold
 //                ),
 //              ),
 //            )
 //          ],
 //        ),
 //      ),
 //    );
 //  }
}
