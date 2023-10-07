import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swg_web/corousel.dart';
import 'package:swg_web/custom_textbutton.dart';
import 'package:swg_web/question.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            toolbarHeight: 80,
            backgroundColor: Colors.white.withOpacity(0.9),
            foregroundColor: Colors.black,
            title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SvgPicture.asset(
                    "assets/swg_logo.svg",
                    height: 48,
                  ),
                ),
              ],
            ),
            actions: [
              KTextButton(text: "HOME"),
              KTextButton(text: "EVENTS"),
              KTextButton(text: "RESOURCES"),
              KTextButton(text: "CV REPO"),
              KTextButton(text: "BLOGS"),
              KTextButton(text: "ABOUT")
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 120,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      children: [
                        Image(image: AssetImage("assets/swgHero.png")),
                        Text(
                          "Right there with you in your",
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.w300),
                        ),
                        kText(),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                  child: Center(
                    child: Text(
                      "Student Welfare Group",
                      style: TextStyle(
                          color: Color.fromRGBO(2, 141, 147, 1),
                          fontSize: 64,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 6,
                      vertical: 20),
                  child: const Expanded(
                    child: Text(
                      "Student Welfare Group helps students in improving their skills, attitude and resources necessary to both succeed in the college environment as well as to pursue productive and satisfying lives by organizing different activities on the campus. Our Group strives to contribute to the overall educational mission of the Institute by facilitating the academic, emotional, social and vocational development of the entire campus community.",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.black54,
                          fontWeight: FontWeight.w100),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  "SWG Initiatives",
                  style: TextStyle(fontSize: 64, fontWeight: FontWeight.w600),
                ),
                const Carousel(),
                Padding(
                  padding: EdgeInsets.all(
                    MediaQuery.of(context).size.width > 1000 ? 64 : 16,
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(204, 230, 230, 1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(48),
                          child: Text(
                            "Featured Blogs",
                            style: TextStyle(
                              color: Color.fromRGBO(0, 41, 58, 1),
                              fontSize: MediaQuery.of(context).size.width > 1200
                                  ? 64
                                  : 32,
                            ),
                          ),
                        ),
                        CarouselBlogs()
                      ],
                    ),
                  ),
                ),
                const Text(
                  "Frequently Asked Questions",
                  style: TextStyle(
                    color: Color.fromRGBO(0, 41, 58, 1),
                    fontSize: 72,
                  ),
                ),
                Question(
                    question:
                        "Which subjects are considered in the process of Department Change?"),
                Question(
                    question:
                        "What should I do if my allotted mentor does not respond to my queries?"),
                Question(
                    question:
                        "What is an additional subject, and what are the rules regarding an additional subject?"),
                Question(
                    question: "Where can I get details about scholarships?"),
                Question(question: "What is a breadth subject?"),
                Question(
                    question:
                        "Where can I get details about the future prospects of each department?"),
                Question(
                    question:
                        "Can BTech students sit for CDC internships again next year after converting to dual degree?"),
                const SizedBox(
                  height: 80,
                ),
                Container(
                  height: 210,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 40, 56, 1),
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(120))),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(32),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Student Welfare Group",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Indian Institute of Technology, Kharagpur",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(32),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Quick Links",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "About Us",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w300),
                            ),
                            Text(
                              "Events",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w300),
                            ),
                            Text(
                              "SWG App",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w300),
                            ),
                            Text(
                              "Our Team",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(32),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Resources",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Study Material",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w300),
                            ),
                            Text(
                              "Fundae Docs",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w300),
                            ),
                            Text(
                              "nternship Blogs",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w300),
                            ),
                            Text(
                              "Internship Blogs",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w300),
                            ),
                            Text(
                              "Placement Blogs",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(32),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Contact Us",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w500),
                            ),
                            const Text(
                              "info.swgiitkgp@gmail.com",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w300),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Follow us",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w500),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.facebook,
                                        color: Colors.white,
                                      ))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class kText extends StatefulWidget {
  const kText({
    super.key,
  });

  @override
  State<kText> createState() => _kTextState();
}

class _kTextState extends State<kText> {
  @override
  Widget build(BuildContext context) {
    var items = <Widget>[
      const Text(
        "CDC internships",
        style: TextStyle(
            fontSize: 64, fontWeight: FontWeight.w800, color: Colors.orange),
      ),
      const Text(
        "Academics",
        style: TextStyle(
            fontSize: 64, fontWeight: FontWeight.w800, color: Colors.green),
      ),
      const Text(
        "College journey",
        style: TextStyle(
            fontSize: 64, fontWeight: FontWeight.w800, color: Colors.yellow),
      ),
    ];
    CarouselController controller = CarouselController();
    return CarouselSlider(
      carouselController: controller,
      items: items,
      options: CarouselOptions(
        viewportFraction: 1,
        enlargeCenterPage: true,
        enlargeFactor: 0,
        // aspectRatio: 500 / 360
        height: 120,
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
    );
  }
}
