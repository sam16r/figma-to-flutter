import 'package:flutter/material.dart';

class MindfulnessDetail extends StatelessWidget {
  const MindfulnessDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 16,
              height: 1.6,
              color: Color(0xFF4B5563),
              fontFamily: 'SF Pro Display',
            ),
            children: [
              TextSpan(text: 'In a world that never stops buzzing, finding a moment of silence can feel like\n'),
              TextSpan(text: 'a rebellious act. But recent neurological\n'),
              TextSpan(text: 'studies suggest that it might be the most productive thing you do all day.'),
            ],
          ),
        ),
        const SizedBox(height: 20),
        
        RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 16,
              height: 1.6,
              color: Color(0xFF4B5563),
              fontFamily: 'SF Pro Display',
            ),
            children: [
              TextSpan(text: 'When we are stressed, our amygdala—the brain\'s fear center—becomes hyperactive. This "fight or flight" response was useful for our ancestors running from predators, but less helpful\n'),
              TextSpan(text: 'when you\'re just trying to answer emails.'),
            ],
          ),
        ),
        
        const SizedBox(height: 32),
        
        // The Science of Stillness Card
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFF3E8FF), // Light purple
                Color(0xFFFDF4FF), // Lighter pink/purple
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'The Science of Stillness',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF111827),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Regular mindfulness practice has been shown to shrink the amygdala and thicken the prefrontal cortex, the area responsible for higher-order thinking, awareness, and concentration.',
                style: TextStyle(
                  fontSize: 14,
                  height: 1.5,
                  color: Color(0xFF4B5563),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Icon(Icons.verified, color: Color(0xFF9333EA), size: 16),
                  const SizedBox(width: 8),
                  const Text(
                    'Source: CareTag Medical Review Board',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF9333EA),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        
        const SizedBox(height: 32),
        
        const Text(
          'It doesn\'t require hours of chanting. Even sixty seconds of intentional breathing can reset your nervous system.',
          style: TextStyle(
            fontSize: 16,
            height: 1.6,
            color: Color(0xFF4B5563),
          ),
        ),
        
        const SizedBox(height: 32),
        
        // Guided Breath Component
        Container(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          decoration: BoxDecoration(
            color: const Color(0xFFFDF4FF),
            borderRadius: BorderRadius.circular(32),
          ),
          child: Column(
            children: [
              const Text(
                '1-MINUTE GUIDED BREATH',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.5,
                  color: Color(0xFF4B5563),
                ),
              ),
              const SizedBox(height: 32),
              
              // Breath Circle Visualization
              Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFFE9D5FF).withOpacity(0.5),
                ),
                child: Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFD8B4FE),
                    ),
                    child: Center(
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Icon(Icons.air, color: Color(0xFF9333EA), size: 30),
                      ),
                    ),
                  ),
                ),
              ),
              
              const SizedBox(height: 32),
              
              const Text(
                'Inhale for 4s • Hold for 4s • Exhale for 4s',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF4B5563),
                ),
              ),
              
              const SizedBox(height: 24),
              
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFA855F7),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  'Start Session',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
        
        const SizedBox(height: 32),
        
        const Text(
          'By consciously regulating your breath, you send a signal to your vagus nerve that you are safe. This simple biological hack is accessible to everyone, anywhere, at any time.',
          style: TextStyle(
            fontSize: 16,
            height: 1.6,
            color: Color(0xFF4B5563),
          ),
        ),
        
        const SizedBox(height: 24),
        
        // Well Done Banner
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          decoration: BoxDecoration(
            color: const Color(0xFF6366F1), // Indigo
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.star, color: Color(0xFFFBBF24), size: 16),
              ),
              const SizedBox(width: 16),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Well Done!',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'You\'ve earned 5 CarePoints for reading.',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white.withOpacity(0.2),
                  foregroundColor: Colors.white,
                  elevation: 0,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Claim',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
        
        const SizedBox(height: 32),
        
        const Text(
          'Read Next',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Color(0xFF111827),
          ),
        ),
        const SizedBox(height: 16),
        
        // Read Next Card
        Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: NetworkImage('https://images.unsplash.com/photo-1576091160399-112ba8d25d1d?q=80&w=2070&auto=format&fit=crop'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 16),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The Secret to Better Sleep Quality',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF111827),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Wellness • 5 min read',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF6B7280),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
