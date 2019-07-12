import 'package:flutter/material.dart';
import 'package:services_app/UI/Cardwork.dart';
import 'package:services_app/Widgets/InsuranceCard.dart';



class ServiceCards extends StatefulWidget {
  @override
  _MyCardsState createState() => _MyCardsState();
}

class _MyCardsState extends State<ServiceCards> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            
              CardWork('Salon at Home', 'Wax | Facial | Hair | Packages',
                  'https://de927adv5b23k.cloudfront.net/wp-content/uploads/2019/03/27192455/salon-hygiene-checklist-1191x800.png'),
            
            Divider(),
           
              CardWork(
                  'Cleaning and Pest Control Services',
                  'Sofa | Bathroom | Kitchen',
                  'https://res.cloudinary.com/urbanclap/image/upload/q_auto,f_auto,fl_progressive:steep/categories/category_v2/category_b8c1dd10.jpeg'),
            
            Divider(),
              CardWork(
                  'AC and Appliance Repair',
                  'Servicing | Repairs | Installations',
                  'https://de927adv5b23k.cloudfront.net/wp-content/uploads/2019/03/07121509/Urban-Clap-04-03-2019226718.jpg'),
            Divider(),
              CardWork(
                  'Plumbers,Electricians and Carpenters',
                  'Repairs | Installation | Projects',
                  'https://res.cloudinary.com/urbanclap/image/upload/q_auto,f_auto,fl_progressive:steep/categories/category_v2/category_aed712e0.jpeg'),
            Divider(),
              CardWork('Massage at Home', 'Stress and Pain Relief Treatments',
                  'https://de927adv5b23k.cloudfront.net/wp-content/uploads/2019/03/27192455/salon-hygiene-checklist-1191x800.png'),
            Divider(),
            CardWork(
                'Home Painters',
                'Transparent Pricing | On-Time Completion',
                'https://thepaintpeople.com/wp-content/uploads/2017/05/wallpainter.jpg'),
            Divider(),
              CardWork(
                  'Fitness and Yoga Trainers at Home',
                  'Customized Plans | Expert Trainers',
                  'https://res.cloudinary.com/urbanclap/image/upload/q_auto,f_auto,fl_progressive:steep/categories/category_v2/category_0e222da0.jpeg'),
            Divider(),
            CardWork('Party Decorators', 'Birthdays and Anniversaries',
                'https://ae01.alicdn.com/kf/HTB1kw7TRXXXXXc3XXXXq6xXFXXXD/3PCS-Pink-Gold-Happy-Birthday-Bunting-Banner-Set-Circle-Paper-Garland-Triangle-Flag-for-Girl-Baby.jpg_640x640.jpg'),
            Divider(),
            Insurance(),
          ],
        ),
      ),
    );
  }
}
