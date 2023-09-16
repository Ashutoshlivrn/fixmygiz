import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../common/constants.dart';

//items container in 2nd bottom navigation bar
class itemsContainer extends StatelessWidget {
  itemsContainer({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: Container(
            width: size.width *0.28,
            padding: const EdgeInsets.all(10),
            color: primarycolor,
            child: Image.asset('images/icons/womensalon.jpg',height: 50,),
          ),
        ),
        Container(
          width: size.width *0.28,
          height: 40,
          child:  Center(
            child: Text(text,textAlign: TextAlign.center),
          ),
        )
      ],
    );
  }
}

class itemsContainer1 extends StatelessWidget {
  const itemsContainer1({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: size.width * 0.44,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              color: primarycolor,
              child: Row(
                children: [
                  const SizedBox(
                    height: 40,
                    width: 90,
                    child: Text('Saloon for Kids & Men'),
                  ),
                  const Spacer(),
                  Image.asset('images/icons/womensalon.jpg',height: 50,),
                ],
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: size.width * 0.44,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              color: primarycolor,
              child: Row(
                children: [
                  const SizedBox(
                    height: 40,
                    width: 90,
                    child: Text('Massage for Men'),
                  ),
                  const Spacer(),
                  Image.asset('images/icons/womensalon.jpg',height: 50,),
                ],
              ),
            ),
          ),
        ],
      ),
    );

  }
}

class itemsContainer2 extends StatelessWidget {
  const itemsContainer2({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 12,),
      Column(
      children: [
      ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      child: Container(
      width: size.width *0.29,
      height: size.height *0.16,
      padding: const EdgeInsets.all(10),
      color: primarycolor,
      child: Image.asset('images/icons/womensalon.jpg',height: 50,),
      ),
      ),
      SizedBox(
      width: size.width *0.28,
      height: 40,
      child:  const Center(
      child: Text('Laser hair reduction',),
      ),
      )
      ],
      ),
      const SizedBox(width: 12,),
      Column(
      children: [
      ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      child: Container(
      width: size.width *0.29,
      height: size.height *0.16,
      padding: const EdgeInsets.all(10),
      color: primarycolor,
      child: Image.asset('images/icons/womensalon.jpg',height: 50,),
      ),
      ),
       SizedBox(
      width: size.width *0.28,
      height: 40,
      child:  const Center(
      child: Text('Ayurvedic spa',),
      ),
      )
      ],
      ),
          const SizedBox(width: 12,),
          Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child: Container(
                  width: size.width *0.29,
                  height: size.height *0.16,
                  padding: const EdgeInsets.all(10),
                  color: primarycolor,
                  child: Image.asset('images/icons/womensalon.jpg',height: 50,),
                ),
              ),
              SizedBox(
                width: size.width *0.28,
                height: 40,
                child:  const Center(
                  child: Text('Nail studio for women',),
                ),
              )
            ],
          ),
          const SizedBox(width: 12,),
          Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child: Container(
                  width: size.width *0.29,
                  height: size.height *0.16,
                  padding: const EdgeInsets.all(10),
                  color: primarycolor,
                  child: Image.asset('images/icons/womensalon.jpg',height: 50,),
                ),
              ),
              SizedBox(
                width: size.width *0.28,
                height: 40,
                child:  const Center(
                  child: Text('Hair studio for women',),
                ),
              )
            ],
          ),
          const SizedBox(width: 12,),

        ],
      ),
    );

  }
}

class itemsContainer3 extends StatelessWidget {
  const itemsContainer3({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, int index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                width: size.width * 0.33,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      child: Container(
                        width: size.width *0.33,
                        height: size.height *0.18,
                        decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage('images/saloonforwomen.jpg'),fit: BoxFit.cover)
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Text('Haircut for Women'),
                    const Text('☆ 4.82(1.1m)'),
                    const Text('₹599')
                  ],
                ),
              ),
            );


          }),
    );
  }
}



class imageSlider extends StatelessWidget {
  const imageSlider({super.key});
  @override
  Widget build(BuildContext context) {
    return  CarouselSlider(
      items: [
        //1st Image of Slider
        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage('images/slider1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),

        //2nd Image of Slider
        Container(
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage('images/slider2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
      //Slider Container properties
      options: CarouselOptions(

        height: 150.0,
        enlargeCenterPage: false,
        autoPlay: true,
        aspectRatio: 0.95,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 0.9,
      ),
    );
  }
}


