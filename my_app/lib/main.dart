import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: IdentityCard(),
  ));
}

class IdentityCard extends StatelessWidget {
  const IdentityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Identity Card"),
        centerTitle: true,
      ),

      body: Center(
        child: Container(
          width: 350,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                blurRadius: 10,
                spreadRadius: 2,
                color: Colors.grey,
              ),
            ],
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              // Profile Picture
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 15),

              // Name
              const Text(
                "Vivek Addagatla",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 5),

              // Profession
              const Text(
                "Software Developer",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 25),

              // Personal Statistics
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  // Age
                  Column(
                    children: const [
                      Icon(
                        Icons.cake,
                        size: 30,
                        color: Colors.blue,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "20 Years",
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        "Age",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),

                  // ID
                  Column(
                    children: const [
                      Icon(
                        Icons.badge,
                        size: 30,
                        color: Colors.blue,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "ID2026001",
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        "ID No.",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),

                  // Blood Group
                  Column(
                    children: const [
                      Icon(
                        Icons.bloodtype,
                        size: 30,
                        color: Colors.red,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "B+ve",
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        "Blood Group",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // Location
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.location_on,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Mumbai, India",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Email Container
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "vivekaddagatla7@gmail.com",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}