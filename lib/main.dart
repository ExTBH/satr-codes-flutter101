import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 178,
                    width: 128,
                    child: const Image(
                      image: AssetImage("assets/images/doctor_image.png"),
                      fit: BoxFit.contain,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  const SizedBox(width: 34),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Dr. Norah',
                        style: TextStyle(fontSize: 34),
                      ),
                      Text(
                        'Heart Specialist',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[700]),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: const [
                          CustomIconStyle(icon: Icons.mail),
                          SizedBox(width: 8),
                          CustomIconStyle(icon: Icons.phone),
                          SizedBox(width: 8),
                          CustomIconStyle(icon: Icons.video_call),
                        ],
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 32),
              const Text(
                'About',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'libero justo laoreet sit amet cursus sit amet dictum sit amet justo donec enim diam vulputate ut pharetra sit amet aliquam id diam maecenas ultricies mi eget mauris pharetra et ultrices neque ornare aenean euismod elementum nisi quis eleifend',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 64),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.grey[700],
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Address",
                                style: TextStyle(fontSize: 24),
                              ),
                              Text(
                                "House 2 Road 5\nBahrain, Manamma\nSalmaniya Hospital",
                                style: TextStyle(color: Colors.grey[700]),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.grey[700],
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Address",
                                style: TextStyle(fontSize: 24),
                              ),
                              Text(
                                "House 2 Road 5\nBahrain, Manamma\nSalmaniya Hospital",
                                style: TextStyle(color: Colors.grey[700]),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: const Image(
                      image: AssetImage('assets/images/map_image.JPG'),
                      height: 200,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomIconStyle extends StatelessWidget {
  const CustomIconStyle({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        color: Colors.orangeAccent,
        size: 32,
      ),
      height: 48,
      width: 48,
      decoration: BoxDecoration(
          color: Colors.deepOrange[50],
          borderRadius: BorderRadius.circular(16)),
    );
  }
}
