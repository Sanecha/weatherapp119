import 'package:flutter/material.dart';

import '../utilis/app_const_data.dart';
import '../utilis/text_style_.dart';

class DailyDetailsPage extends StatefulWidget{
  @override
  State<DailyDetailsPage> createState() => _DailyDetailsPageState();
}

class _DailyDetailsPageState extends State<DailyDetailsPage>with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 20),
        child:SingleChildScrollView(
          child: Column(
            children: [
              ///Day..

              Card(
                elevation: 11,
                child: Container(
                  height: 600,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Column(
                    children: [
                      ///Day Temperature..
                      SizedBox(height: 12,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,

                        child: Column(
                          children: [
                            ElevatedButton(onPressed: (){},child: Text("Day",style: myTextStyle18(),),),
                            ///Temperature..
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network("https://cdn-icons-png.flaticon.com/128/1146/1146869.png",width: 50,fit: BoxFit.cover,),
                                SizedBox(width: 8,),
                                Text("20 C",style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),),
                                SizedBox(width: 8,),
                                Icon(Icons.arrow_upward,color: Colors.red,),
                              ],
                            ),
                            Text("Party Sunny",style: myTextStyle18(),),
                          ],
                        ),
                      ),
                      SizedBox(height: 12,),
                      ///List View
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (_,index){
                            return Column(
                              children: [
                                ListTile(
                                  leading: Image.network(AppConstData.tempDetails[index]['icon'],width: 25,fit: BoxFit.cover,),
                                  title: Text(AppConstData.tempDetails[index]['name']),
                                  trailing: Text(AppConstData.tempDetails[index]['temp'],style: myTextStyle15(myFontWeight: FontWeight.bold),),
                                  minTileHeight: 40,
                                  //isThreeLine: true,
                                ),
                                Divider(thickness: 1,)
                              ],
                            );
                          },
                          itemCount: AppConstData.tempDetails.length,),
                      ),

                    ],
                  ),
                ),
              ),
              ///Night
              SizedBox(height: 25,),
              Card(
                elevation: 11,
                child: Container(
                  height: 600,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Column(
                    children: [
                      ///Night Temperature..
                      SizedBox(height: 12,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            ElevatedButton(onPressed: (){},child: Text("Night",style: myTextStyle18(),),),
                            ///Temperature..
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network("https://cdn-icons-png.flaticon.com/128/1146/1146869.png",width: 50,fit: BoxFit.cover,),
                                SizedBox(width: 8,),
                                Text("20 C",style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),),
                                SizedBox(width: 8,),
                                Icon(Icons.arrow_upward,color: Colors.red,),
                              ],
                            ),
                            Text("Party Sunny",style: myTextStyle18(),),
                          ],
                        ),
                      ),
                      SizedBox(height: 12,),
                      ///List View
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (_,index){
                            return Column(
                              children: [
                                ListTile(
                                  leading: Image.network(AppConstData.tempDetails[index]['icon'],width: 25,fit: BoxFit.cover,),
                                  title: Text(AppConstData.tempDetails[index]['name']),
                                  trailing: Text(AppConstData.tempDetails[index]['temp'],style: myTextStyle15(myFontWeight: FontWeight.bold),),
                                  minTileHeight: 40,
                                  //isThreeLine: true,
                                ),
                                Divider(thickness: 1,)
                              ],
                            );
                          },
                          itemCount: AppConstData.tempDetails.length,),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}