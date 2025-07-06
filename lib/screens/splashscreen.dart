import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
import '../../constants/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Static Background
          SizedBox.expand(
            // child: Image.asset(
            //   // 'assets/images/splash_bg.png',
            //   fit: BoxFit.cover,
            // ),
          ),

          // // 🎆 Lottie Glowing Wave Layer
          // Positioned.fill(
          //   child: Lottie.asset(
          //     'assets/lottie/wave_glow.json',
          //     fit: BoxFit.cover,
          //     repeat: true,
          //   ),
          // ),

          // Semi-transparent overlay for blending
          Container(color: Colors.black.withOpacity(0.2)),

          // Text + Button Content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 42,
                    color: AppColors.lightPurple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Buy appliances\nfrom the store',
                  style: TextStyle(fontSize: 20, color: AppColors.lightPurple),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 28,
                      vertical: 14,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    // Navigation logic
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.lightPurple,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Glowy Icons
          Positioned(
            top: 80,
            left: 30,
            child: Icon(
              Icons.lightbulb_outline,
              color: AppColors.electricPurple,
              size: 60,
            ),
          ),
          Positioned(
            top: 150,
            right: 30,
            child: Icon(
              Icons.power_outlined,
              color: AppColors.electricPurple,
              size: 60,
            ),
          ),
          Positioned(
            bottom: 80,
            right: 20,
            child: Icon(
              Icons.microwave_outlined,
              color: AppColors.electricPurple,
              size: 80,
            ),
          ),
        ],
      ),
    );
  }
}
