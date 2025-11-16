import 'package:flutter/material.dart';
const Color kPrimaryColor = Color(0xFFF59E0B);

class Landingpage extends StatelessWidget {
  const Landingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              Column(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Icon(
                          Icons.public,
                          size: 140,
                          color: Colors.grey.shade200,
                        ),
                        Transform.rotate(
                          angle: -0.785398,
                          child: const Icon(
                            Icons.flight,
                            size: 80,
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: 24),

                  const Text(
                    "Korokan Airlines",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                ],
              ),

              const Spacer(),
              const Spacer(),

              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/signup');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFEFCE8),
                  foregroundColor: kPrimaryColor,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  elevation: 5,
                ),
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}