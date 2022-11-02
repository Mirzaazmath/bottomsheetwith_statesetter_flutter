import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {

  String? status;

  @override
  Widget build(BuildContext context) {
    print("hello");
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            showsheet(context);
          },
          child: Text("BottomSheet"),
        ),
      ),

    );
  }

  void showsheet(context){
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return StatefulBuilder(builder: (BuildContext context,
              StateSetter setmodelState /*You can rename this!*/) {
            return Container(
              height: 440,
              padding: const EdgeInsets.all(20),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Case Status",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                  const  SizedBox(height: 30,),
                  const  Text("Case Status"),

                  RadioListTile(
                    title:const  Text("1"),
                    value: "1",
                    groupValue: status,
                    onChanged: (value){
                      setmodelState(() {
                        status = value.toString();
                      });
                    },
                  ),

                  RadioListTile(
                    title: const Text("2"),
                    value: "2",
                    groupValue: status,
                    onChanged: (value){
                      setmodelState(() {
                        status = value.toString();
                      });
                    },
                  ),

                  RadioListTile(
                    title: const Text("3"),
                    value: "3",
                    groupValue: status,
                    onChanged: (value){
                      setmodelState(() {
                        status = value.toString();
                      });
                    },),
                  RadioListTile(
                    title: const Text("4"),
                    value: "4",
                    groupValue: status,
                    onChanged: (value){
                      setmodelState(() {
                        status = value.toString();
                      });
                    },),

                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(10)),
                      alignment: Alignment.center,
                      child:const  Text("Save",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                    ),
                  ),
                  Align(alignment: Alignment.center,child: TextButton(onPressed: () {  }, child: const Text("Cancel",style: TextStyle(color: Colors.black),),),)

                ],
              ),
            );
          });
        });
  }
}




