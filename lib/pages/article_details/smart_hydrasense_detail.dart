import 'package:flutter/material.dart';

class SmartHydrasenseDetail extends StatelessWidget {
  const SmartHydrasenseDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section: Biosensor Technology
        Row(
          children: const [
            Text('🔬 ', style: TextStyle(fontSize: 20)),
            Text(
              'Biosensor Technology',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Color(0xFF111827),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        const Text(
          'The HydraSense utilizes a breakthrough micro-fluidic array that rests gently against the skin. Unlike traditional optical sensors, this device captures microscopic perspiration samples to analyze electrolyte balance in real-time.',
          style: TextStyle(fontSize: 15, height: 1.6, color: Color(0xFF4B5563)),
        ),

        const SizedBox(height: 24),

        // Feature Cards (dark)
        Row(
          children: [
            Expanded(
              child: _buildDarkFeatureCard(
                icon: Icons.water_drop_outlined,
                title: 'Electrolytes',
                subtitle: 'Sodium & Potassium\nanalysis',
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: _buildDarkFeatureCard(
                icon: Icons.flash_on,
                title: 'Stamina',
                subtitle: 'Fatigue prediction\nmodel',
              ),
            ),
          ],
        ),

        const SizedBox(height: 24),

        // Medical Grade Monitoring Card (blue)
        Container(
          padding: const EdgeInsets.all(22),
          decoration: BoxDecoration(
            color: const Color(0xFF1E3A5F),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E63F4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.medical_services_outlined,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.12),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'CARETAG SYNC',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              const Text(
                'Medical Grade Monitoring',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Seamlessly integrates with your CareTag Digital ID. Allows first responders to access your hydration history in emergencies via NFC tap.',
                style: TextStyle(
                  fontSize: 13,
                  height: 1.5,
                  color: Color(0xFFCBD5E1),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Container(
                    width: 36,
                    height: 20,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E63F4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        '+2k',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'users synced today',
                    style: TextStyle(color: Color(0xFF94A3B8), fontSize: 13),
                  ),
                ],
              ),
            ],
          ),
        ),

        const SizedBox(height: 28),

        // System Requirements
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'System Requirements',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: Color(0xFF111827),
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: const Text(
                'View Full Specs',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1E63F4),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 14),
        Row(
          children: [
            _buildSpecTag(icon: Icons.smartphone, label: 'iOS 16+'),
            const SizedBox(width: 10),
            _buildSpecTag(icon: Icons.bluetooth, label: 'BT 5.0'),
          ],
        ),

        const SizedBox(height: 32),

        // Pre-order button row
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 54,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E63F4),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Pre-order Now  →',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Container(
              height: 54,
              width: 54,
              decoration: BoxDecoration(
                color: const Color(0xFFF1F5F9),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(
                Icons.favorite_border,
                color: Color(0xFF6B7280),
                size: 22,
              ),
            ),
          ],
        ),

        const SizedBox(height: 10),

        const Center(
          child: Text(
            'Estimated shipping: October 2024',
            style: TextStyle(fontSize: 12, color: Color(0xFF9CA3AF)),
          ),
        ),
      ],
    );
  }

  Widget _buildDarkFeatureCard({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A2E),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.white70, size: 22),
          const SizedBox(height: 12),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 12,
              height: 1.4,
              color: Color(0xFF94A3B8),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSpecTag({required IconData icon, required String label}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF111827),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white, size: 14),
          const SizedBox(width: 6),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
