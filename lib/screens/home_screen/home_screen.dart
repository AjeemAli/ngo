import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ngo/widgets/custom_heading.dart';

import '../../widgets/common_container.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> imgList = [
    'assets/images/5472887.jpg',
    'assets/images/5585703.jpg',
    'assets/images/7405732.jpg',
    'assets/images/5472887.jpg',
    'assets/images/5585703.jpg',
    'assets/images/7405732.jpg',
  ];
  final List<String> childList = [
    'assets/images/1693810633592.jpg',
    'assets/images/_101815694_010346561.jpg',
    'assets/images/begging-hands-of-a-kid-photo.jpg',
    'assets/images/1693810633592.jpg',
    'assets/images/_101815694_010346561.jpg',
    'assets/images/begging-hands-of-a-kid-photo.jpg',
    'assets/images/1693810633592.jpg',
    'assets/images/_101815694_010346561.jpg',
    'assets/images/begging-hands-of-a-kid-photo.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Rahbar E Hind"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Heading(
                text: 'Welcoming Message',
              ),
              const Gap(10),
              carouselSlider(),
              const Gap(10),
              const Heading(text: 'Upcoming Events'),
              const Gap(10),
              upcomingEvent(),
              const Gap(10),
              const Heading(text: 'Latest News and Updates'),
              const Gap(10),
              upcomingEvent(),
              upcomingEvent(),
              upcomingEvent(),
              const Gap(10),
              const Heading(text: 'Donation Call-to-Action'),
              const Gap(10),
              upcomingEvent(),
              const Gap(10),
              const Heading(text: 'Volunteer Opportunities'),
              const Gap(10),
              upcomingEvent(),
              const Gap(10),
              const Heading(text: 'Our Team'),
              const Gap(10),
              upcomingEvent(),
              const Gap(10),
              const Heading(text: 'Impact Stories'),
              const Gap(10),
              upcomingEvent(),
              const Gap(10),
              const Heading(text: 'Contact information'),
              const Gap(10),
              upcomingEvent(),
              const Gap(10),
            ],
          ),
        ),
      ),
    );
  }

  Widget carouselSlider() {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 140.0,
        autoPlay: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
      ),
      itemCount: imgList.length,
      itemBuilder: (BuildContext context, int index, int realIndex) {
        final banner = imgList[index];
        return Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              banner,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
          ),
        );
      },
    );
  }

  Widget upcomingEvent() {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: childList.length,
        itemBuilder: (context, index) {
          return ContainerCard(
            title: 'Save Child',
            description:
                'Save Children by NGO is dedicated to protecting and nurturing vulnerable children, ensuring their safety, health, and education for a brighter future',
            imageUrl: childList[index],
          );
        },
      ),
    );
  }
}
