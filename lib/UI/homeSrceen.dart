import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {

  Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final List<String> offers=[
    "image/1.png","image/3.png","image/4.png","image/5.png"
  ];

  final List<String> item=["imaga/1.png","image/3.png","image/4.png","image/5.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Prevent overflow
          children: [
            Row(
              children: [
                Image.asset(
                  "image/5.png",
                  height: 50, // Adjusted for better fitting
                  width: 50,
                ),
                const SizedBox(width: 8), // Added spacing
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Delivery To',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      children: const [
                        Text(
                          'Tangail, Kalihati',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ],
                ),
              ],
            ),
             IconButton(onPressed: (){
              //set the page

             }, icon:Icon(Icons.shopping_bag,size: 30,))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              // Fixed the Expanded issue
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search foods and kitchen',
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                  //   child: Text('Offers',style: Allstyle.title.copyWith(color: Colors.black),),
                  
                  )
                ],
              ),
              SizedBox(height: 140,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: offers.length,
                itemBuilder:(context,index){
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: Image.asset(offers[index],
                      width: 200,
                      fit: BoxFit.cover,)
                    
                    ),
                  );
                } ),
              
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  // Text('New food are avalable',style: Allstyle.title.copyWith(
                  //   color: Colors.black,fontSize: 17,fontWeight: FontWeight.w500
                  // ))
                ],
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: item.length,
                itemBuilder: (context,index){
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(item[index],
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,),
                    
                  );

                })
              
             
            ],
          ),
        ),
      ),
    );
  }
}