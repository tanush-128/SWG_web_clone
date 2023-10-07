import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:swg_web/blog.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  CarouselController controller = CarouselController();
  var items = [
    Padding(
        padding: const EdgeInsets.all(0),
        child: Container(
          height: 360,
          width: 500,
          color: Colors.amber,
        )),
    Container(
      height: 360,
      width: 500,
      color: Colors.black,
    ),
    Container(
      height: 360,
      width: 500,
      color: Colors.red,
    ),
    Container(
      height: 360,
      width: 500,
      color: Colors.pink,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
            backgroundColor: Colors.grey.shade400,
            child: IconButton(
              onPressed: () {
                setState(() {
                  controller.previousPage();
                });
              },
              icon: const Center(
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  // size: 30,
                ),
              ),
            )),
        const SizedBox(
          width: 100,
        ),
        Container(
          height: 360,
          width: 500,
          child: CarouselSlider(
            carouselController: controller,
            items: items,
            options: CarouselOptions(
              viewportFraction: 1,
              enlargeCenterPage: true,
              enlargeFactor: 0,
              aspectRatio: 500 / 360,
              height: 360,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              onPageChanged: (index, reason) {
                setState(() {
                  // Animate the position of the images.
                  for (int i = 0; i < items.length; i++) {
                    // items[i].translateX = (i - index) * 100;
                  }
                });
              },
            ),
          ),
        ),
        const SizedBox(
          width: 100,
        ),
        CircleAvatar(
            backgroundColor: Colors.grey.shade400,
            child: IconButton(
              onPressed: () {
                setState(() {
                  controller.nextPage();
                });
              },
              icon: const Center(
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  // size: 30,
                ),
              ),
            )),
      ],
    );
  }
}

class CarouselBlogs extends StatefulWidget {
  const CarouselBlogs({super.key});

  @override
  State<CarouselBlogs> createState() => _CarouselBlogsState();
}

class _CarouselBlogsState extends State<CarouselBlogs> {
  CarouselController controller = CarouselController();
  var items = [
    Blog(
        name: "MANN GOEL",
        position: "Adieu KGP",
        body:
            "In the CDC internship drive, the number of companies coming for products is generally less. An all-rounded CV is preferred, and past interns in Product might help. Don’t lose hope/confidence, even if you are not able to make it. Your career is a 30+ years journey ahead. 1/2 years up and down hardly contributes to 3% of it. So don’t give up hopes, keep hustling, and you can find a career that satisfies you!")
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
            backgroundColor: Colors.grey.shade400,
            child: IconButton(
              onPressed: () {
                setState(() {
                  controller.previousPage();
                });
              },
              icon: const Center(
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  // size: 30,
                ),
              ),
            )),
        SizedBox(
          width: MediaQuery.of(context).size.width > 1200 ? 100 : 20,
        ),
        Container(
          // height: 480,
          width: MediaQuery.of(context).size.width > 1200
              ? MediaQuery.of(context).size.width * 0.5
              : MediaQuery.of(context).size.width * 0.6,
          child: CarouselSlider(
            carouselController: controller,
            items: items,
            options: CarouselOptions(
              viewportFraction: 1,
              enlargeCenterPage: true,
              enlargeFactor: 0,
              height: MediaQuery.of(context).size.width > 800 ? 480 : 600,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width > 1200 ? 100 : 20,
        ),
        CircleAvatar(
            backgroundColor: Colors.grey.shade400,
            child: IconButton(
              onPressed: () {
                setState(() {
                  controller.nextPage();
                });
              },
              icon: const Center(
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  // size: 30,
                ),
              ),
            )),
      ],
    );
    ;
  }
}
