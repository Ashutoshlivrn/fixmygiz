import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fixmygiz/widgets/ItemsContainer.dart';
import 'package:fixmygiz/widgets/separator.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../common/constants.dart';
import '../widgets/text_widgets.dart';


class BeautyScreen extends StatefulWidget {
  const BeautyScreen({super.key});

  @override
  State<BeautyScreen> createState() => _BeautyScreenState();
}

class _BeautyScreenState extends State<BeautyScreen> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
        body: SafeArea(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: SingleChildScrollView(
              child: Column( 
                children: [
                  const SizedBox(height: 20,),
                  // row for the text personal grooming
                   Container(
                     padding: EdgeInsets.all(10),
                     child: Row(
                       children: [
                         Icon(Icons.front_hand_rounded,color: Colors.red.shade400,),
                         SizedBox(width: 5,),
                         Text('Personal',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 22,),),
                         Text(' grooming',style: TextStyle(color: Colors.grey.shade500,fontWeight: FontWeight.w600,fontSize: 22),)
                       ],
                     ),
                   ),
                  const SizedBox(height: 20,),
                  // container for search
                  Container(
                    height: 50,
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      // border: Border.all(color: Colors.black),
                      boxShadow: const [
                        BoxShadow(color: Colors.grey,blurRadius: 5)
                      ],
                    ),
                    child: Row(
                      children: const [
                        Gap(10),
                        Icon(Icons.search),
                        Gap(5),
                        Text('Search for',style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ),
                  const SizedBox(height: 25,),

                  //container for items
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        itemsContainer(text: ' Salon for Women '),

                        itemsContainer(text: 'Spa for women'),

                        itemsContainer(text: 'Hair studio for women'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        itemsContainer(text: ' Salon for Women '),

                        itemsContainer(text: 'Spa for women'),

                        itemsContainer(text: 'Hair studio for women'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8,),
                  const itemsContainer1(),
                  const Separator(),
                  const SizedBox(height: 10,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                    child: Image.asset('images/slider1.jpg'),
                  ),
                  const SizedBox(height: 10,),
                  const Separator(),
                  const SizedBox(height: 25,),
                  const imageSlider(),
                  const SizedBox(height: 25,),
                  const Separator(),
                  const SizedBox(height: 25,),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: const SizedBox(child: Text('  New and noteworthy',style: TextStyle(fontSize: 23,color: Colors.black,fontWeight: FontWeight.w500),),)),
                  const SizedBox(height: 15,),
                  const itemsContainer2(),
                  const SizedBox(height: 15,),
                  const Separator(),
                  const SizedBox(height: 30,),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: const SizedBox(child: Text('  Most booked services',style: TextStyle(fontSize: 23,color: Colors.black,fontWeight: FontWeight.w500),),)),
                  const SizedBox(height: 25,),
                  const itemsContainer3(),
                  const SizedBox(height: 25,),
                  const Separator(),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                     const TitleTextWidget3(title: '  Salon for women'),
                      TextButton(onPressed: () {},child: const Text('See all ',style: TextStyle(color: Colors.purple,fontSize: 15),)),
                    ],
                  ),
                  SizedBox(
                    height: 390,

                    child: Center(
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: 150,
                          childAspectRatio: 1.5, // Adjust the aspect ratio as needed
                        ),
                        itemCount: 6, // 2 rows with 2 containers in each row
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10,bottom: 13,top: 10),
                            child: Container(
                              decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(10) , border: Border.all(color: Colors.grey, width: 1)   ),
                              child: Center(
                                child: Text('Item $index'),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),
        ),
    );
  }
}
