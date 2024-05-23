import 'dart:html';
import 'dart:js_util';

import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  String section2button="1";
  String selecteditem="";
  int index=0;

  Widget build(BuildContext context) {
    double sw = MediaQuery.sizeOf(context).width;
    double sh = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Web Task'),
      ),
      body: Row(
        children: [
         sw <=500?Container(): Expanded(
            flex: 1,
            child: section1(),
          ),
          
          Expanded(
            flex: 1,
            child: section2(sw),
          ),
          sw>=400? Expanded(
            flex: 2,
            child:section3()):Container()
        ],
      ),
       drawer:sw <=500? drawer():null,
    );
  }

  void updateURLAndData(String selectedButton,String selectedItem) {
  final newUrl = generateURL(selectedButton,selectedItem);
  window.history.pushState({}, '', newUrl);
  
}

String generateURL(String section, String Item) {
  return '$section/$Item?Index=$index?selectedItem=$Item'; // Update URL format as needed
}

  Widget section1({bool isdrawer = false}){
      final List<String> section1Buttons = ['1', '2', '3', '4'];
    return Container(
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          button(section1Buttons[0], (){
            setState(() {
              
              section2button="1";
              selecteditem="a";
              updateURLAndData(section2button,selecteditem);

             if(isdrawer==true) Navigator.pop(context);
    
              
            });
          }),
           button(section1Buttons[1], (){
            setState(() {
              section2button="2";
              selecteditem="e";
                            updateURLAndData(section2button,selecteditem);

              if(isdrawer==true) Navigator.pop(context);
              
            });
          }),
           button(section1Buttons[2], (){
            setState(() {
              section2button="3";
              selecteditem="i";
              updateURLAndData(section2button,selecteditem);
              if(isdrawer==true) Navigator.pop(context);
              
            });
          }),
           button(section1Buttons[3], (){
            setState(() {
              section2button="4";
              selecteditem="m";
                            updateURLAndData(section2button,selecteditem);

              if(isdrawer==true) Navigator.pop(context);
    
              
            });
          }),
        ],
      ),
    );
  }

  Widget section2(double sw){
     final List<String> button1 = ['a', 'b', 'c', 'd'];

  final List<String> button2 = ['e', 'f', 'g', 'h'];

  final List<String> button3 = ['i', 'j', 'k', 'l'];

  final List<String> button4 = ['m', 'n', 'o', 'p'];
    return Container(
      color: Colors.grey.withOpacity(0.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          
       if(section2button=="1")...[
        for (int i = 0;i <4;i++)
            ElevatedButton(
              onPressed: () {
                  if(i==0){
                    setState(() {
                      index=i;
                      selecteditem=button1[0];
                      updateURLAndData("1", selecteditem);
                     sw <=400 ? pushNavi(context, selecteditem):null;

                    });
                    print(button1[0]);
                  }else if(i==1){
                    index=i;
                       setState(() {
                      selecteditem=button1[1];
                      updateURLAndData("1", selecteditem);
                       sw <=400 ? pushNavi(context, selecteditem):null;
                    });
                    print(button1[1]);
                  }else if(i==2){
                       setState(() {index=i;
                      selecteditem=button1[2];
                      updateURLAndData("1", selecteditem);
                       sw <=400 ? pushNavi(context, selecteditem):null;
                    });
                    print(button1[2]);
                  }else if(i==3){
                       setState(() {index=i;
                      selecteditem=button1[3];
                      updateURLAndData("1", selecteditem);
                       sw <=400 ? pushNavi(context, selecteditem):null;
                    });
                    print(button1[3]);
                  }
              },
              child: Text(button1[i]),
            ),
       ]else if(section2button=="2")...[
        for (int i = 0;i <4;i++)
            ElevatedButton(
              onPressed: () {
                  if(i==0){
                       setState(() {index=i;
                      selecteditem=button2[0]; 
                      updateURLAndData("2", selecteditem);
                      sw <=400 ? pushNavi(context, selecteditem):null;
                    });
                    print(button2[0]);
                  }else if(i==1){
                       setState(() {index=i;
                      selecteditem=button2[1]; 
                       updateURLAndData("2", selecteditem);
                      sw <=400 ? pushNavi(context, selecteditem):null;
                    });
                    print(button2[1]);
                  }else if(i==2){
                       setState(() {index=i;
                      selecteditem=button2[2];
                       updateURLAndData("2", selecteditem);
                       sw <=400 ? pushNavi(context, selecteditem):null;
                    });
                    print(button2[2]);
                  }else if(i==3){
                       setState(() {index=i;
                      selecteditem=button2[3];
                       updateURLAndData("2", selecteditem);
                       sw <=400 ? pushNavi(context, selecteditem):null;
                    });
                    print(button2[3]);
                  }
                
              },
              child: Text(button2[i]),
            ),
       ]else if(section2button=="3")...[
        for (int i = 0;i <4;i++)
            ElevatedButton(
              onPressed: () {
                  if(i==0){
                       setState(() {index=i;
                      selecteditem=button3[0]; 
                       updateURLAndData("3", selecteditem);
                      sw <=400 ? pushNavi(context, selecteditem):null;
                    });
                    print(button3[0]);
                  }else if(i==1){
                       setState(() {index=i;
                      selecteditem=button3[1]; 
                       updateURLAndData("3", selecteditem);
                      
                      sw <=400 ? pushNavi(context, selecteditem):null;
                    });
                    print(button3[1]);
                  }else if(i==2){
                       setState(() {index=i;
                      selecteditem=button3[2]; 
                       updateURLAndData("3", selecteditem);
                      
                      sw <=400 ? pushNavi(context, selecteditem):null;
                    });
                    print(button3[2]);
                  }else if(i==3){
                       setState(() {index=i;
                      selecteditem=button3[3]; 
                      
                       updateURLAndData("3", selecteditem);
                      sw <=400 ? pushNavi(context, selecteditem):null;
                    });
                    print(button3[3]);
                  }
               
              },
              child: Text(button3[i]),
            ),
       ]else if(section2button=="4")...[
         for (int i = 0;i <4;i++)
            ElevatedButton(
              onPressed: () {
                  if(i==0){
                       setState(() {index=i;
                      selecteditem=button4[0];
                       updateURLAndData("4", selecteditem);
                      
                       sw <=400 ? pushNavi(context, selecteditem):null;
                    });
                    print(button4[0]);
                  }else if(i==1){
                       setState(() {index=i;
                      selecteditem=button4[1]; 
                       updateURLAndData("4", selecteditem);
                      
                      sw <=400 ? pushNavi(context, selecteditem):null;
                    });
                    print(button4[1]);
                  }else if(i==2){
                       setState(() {index=i;
                      selecteditem=button4[2]; 
                       updateURLAndData("4", selecteditem);
                      
                      sw <=400 ? pushNavi(context, selecteditem):null;
                    });
                    print(button4[2]);
                  }else if(i==3){
                       setState(() {index=i;
                      selecteditem=button4[3];
                       updateURLAndData("4", selecteditem);
                      
                       sw <=400 ? pushNavi(context, selecteditem):null;
                    });
                    print(button4[3]);
                  }
            
              },
              child: Text(button4[i]),
            ),
       ]
          
        ],
      ),
    );


  }

  Widget button(text,Function ontap){
  
    return 
     MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.blue,
            onPressed: () {
              ontap();
            },
             
            child:  Text(text),
          );
  }

  Widget section3(){
    
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          
        ),
        body: Column(
          children: [
            TabBar(
            
            indicatorColor: Colors.blue,
          indicator: BoxDecoration(
            color: Colors.blue,
            
            border: Border.all(),
            borderRadius: BorderRadius.circular(20),
          ),
            splashBorderRadius: BorderRadius.circular(20),
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(text: '1'),
              Tab(text: '2'),
              Tab(text: '3'),
            ],
            ),
            Expanded(
              child: TabBarView(children: [
              tabbarcontent("1", selecteditem),
              tabbarcontent("2",selecteditem),
              tabbarcontent("3", selecteditem)
                
              ]),
            ),
          ],
        )
      ),
    );

    
  }



  Widget drawer(){
    return Drawer(
      backgroundColor: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          section1(isdrawer: true)
        ],
      ),
    );
  }



}
  Widget tabbarcontent(String tabnumber,String selecteditem){
    return   Center(
        child: Column(
          children: [
            Text(tabnumber),
            Text(selecteditem)
          ],
        ),
      );
  }


void pushNavi(BuildContext context,String item){
  Navigator.push(context, MaterialPageRoute(builder: (context)=>NewScreen(selecteditem: item)));
}


class NewScreen extends StatelessWidget {
  String selecteditem;
   NewScreen({required this.selecteditem,super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          
        ),
        body: Column(
          children: [
           
            Expanded(
              child: TabBarView(children: [
              tabbarcontent("1", selecteditem),
              tabbarcontent("2",selecteditem),
              tabbarcontent("3", selecteditem)
                
              ]),
            ),
             TabBar(
            
            indicatorColor: Colors.blue,
          indicator: BoxDecoration(
            color: Colors.blue,
            
            border: Border.all(),
            borderRadius: BorderRadius.circular(20),
          ),
            splashBorderRadius: BorderRadius.circular(20),
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(text: '1'),
              Tab(text: '2'),
              Tab(text: '3'),
            ],
            ),
          ],
        )));





  }
}



