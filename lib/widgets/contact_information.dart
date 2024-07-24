import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ngo/common/colors.dart';

class ContactInformationWidget extends StatelessWidget {
  final String ngoName;
  final String address;
  final String phoneNumber;
  final String email;
  final String website;
  final String facebookUrl;
  final String twitterUrl;
  final String instagramUrl;

  const ContactInformationWidget({
    Key? key,
    required this.ngoName,
    required this.address,
    required this.phoneNumber,
    required this.email,
    required this.website,
    required this.facebookUrl,
    required this.twitterUrl,
    required this.instagramUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ngoName,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            address,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.phone, color: Colors.blue),
              SizedBox(width: 8),
              Text(
                phoneNumber,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.email, color: Colors.red),
              SizedBox(width: 8),
              Text(
                email,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.web, color: Colors.green),
              SizedBox(width: 8),
              Text(
                website,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.blue),
                onPressed: () {
                  _launchURL(facebookUrl);
                },
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.twitter, color: Colors.lightBlue),
                onPressed: () {
                  _launchURL(twitterUrl);
                },
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.instagram, color: Colors.pink),
                onPressed: () {
                  _launchURL(instagramUrl);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _launchURL(String url) async {
    // Implement the URL launcher logic
  }
}
