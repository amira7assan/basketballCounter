import 'package:basketballpointcounterapp/cubit/CounterCubit.dart';
import 'package:basketballpointcounterapp/cubit/counterState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() {
  runApp(basketballCounter());
}
class basketballCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>CounterCubit(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage()
      ),
    );
  }
}
class HomePage extends StatelessWidget {
  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit,CounterState>(builder: (context,state){
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(

          title: Text("Points Counter"),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("Team A",style: TextStyle(fontSize: 32),),
                    Text(
                      '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                      style: TextStyle(fontSize: 160),),
                    Container(
                      margin: EdgeInsets.all(8),
                      child: ElevatedButton(
                          onPressed: (){
                            BlocProvider.of<CounterCubit>(context).TeamIncreament(team: 'A', buttonNumber: 1);
                          },
                          child: Text("Add 1 Point",style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(20,20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          )
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      child: ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).TeamIncreament(team: 'A', buttonNumber: 2);
                        },
                        child: Text(
                          "Add 2 Point",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(20, 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero, // This makes the button rectangular
                          ),
                        ),
                      ),
                    ),
                    Container(

                      /*decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(0
                        ),
                      ),*/
                      margin: EdgeInsets.all(8),
                      child: ElevatedButton(onPressed: ()
                      {
                        BlocProvider.of<CounterCubit>(context).TeamIncreament(team: 'A', buttonNumber: 3);

                      },
                          child: Text("Add 3 Point",style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(20,20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero, // This makes the button rectangular
                            ),
                          )
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 450,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    //endIndent: 200,
                    indent: 50,
                  ),
                ),
                Column(
                  children: [
                    Text("Team B",style: TextStyle(fontSize: 32),),
                    Text("${BlocProvider.of<CounterCubit>(context).teamBPoints}",style: TextStyle(fontSize: 160),),
                    Container(
                      margin: EdgeInsets.all(8),
                      child: ElevatedButton(onPressed: () {
                        BlocProvider.of<CounterCubit>(context).TeamIncreament(team: 'B', buttonNumber: 1);
                      },
                          child: Text("Add 1 Point",style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(20,20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          )
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      child: ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).TeamIncreament(team: 'B', buttonNumber: 2);
                        },
                        child: Text(
                          "Add 2 Point",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(20, 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero, // This makes the button rectangular
                          ),
                        ),
                      ),
                    ),
                    Container(
                      /*decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(0
                        ),
                      ),*/
                      margin: EdgeInsets.all(8),
                      child: ElevatedButton(onPressed: () {
                        BlocProvider.of<CounterCubit>(context).TeamIncreament(team: 'B', buttonNumber: 3);
                      },
                          child: Text("Add 3 Point",style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(20,20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero, // This makes the button rectangular
                            ),
                          )
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: ElevatedButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).TeamIncreament(team: 'x', buttonNumber: 0);
                },
                child: Text(
                  "Reset",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: Size(20, 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // This makes the button rectangular
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    },
        listener:  (context,state){
        });
  }
}


