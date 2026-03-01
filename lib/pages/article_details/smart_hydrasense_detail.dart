import 'package:flutter/material.dart';

class SmartHydrasenseDetail extends StatelessWidget {
  const SmartHydrasenseDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Biosensor Technology',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: Color(0xFF111827),
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          'Unlike traditional fitness trackers that only measure heart rate, the HydraSense patch analyzes sweat composition in real-time. It measures sodium, potassium, and lactate levels continuously during your workout.',
          style: TextStyle(
            fontSize: 16,
            height: 1.6,
            color: Color(0xFF4B5563),
          ),
        ),
        
        const SizedBox(height: 32),
        
        // Data Cards Row
        Row(
          children: [
            Expanded(
              child: _buildDataCard(
                title: 'Electrolytes',
                value: 'Real-time',
                icon: Icons.water_drop,
                color: const Color(0xFF3B82F6), // Blue
                bgColor: const Color(0xFFEFF6FF), // Light blue
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: _buildDataCard(
                title: 'Stamina',
                value: 'Predictive',
                icon: Icons.flash_on,
                color: const Color(0xFFF59E0B), // Amber
                bgColor: const Color(0xFFFFFBEB), // Light amber
              ),
            ),
          ],
        ),
        
        const SizedBox(height: 32),
        
        const Text(
          'Medical-Grade Monitoring',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: Color(0xFF111827),
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          'Developed in partnership with leading sports science institutes, the sensors provide data quality previously only available in laboratory settings.',
          style: TextStyle(
            fontSize: 16,
            height: 1.6,
            color: Color(0xFF4B5563),
          ),
        ),
        
        const SizedBox(height: 32),
        
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: const Color(0xFF111827), // Dark grey/black
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'System Requirements',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              _buildRequirementRow('Bluetooth 5.0 or higher required'),
              const SizedBox(height: 12),
              _buildRequirementRow('iOS 14+ or Android 10+'),
              const SizedBox(height: 12),
              _buildRequirementRow('Compatible with Apple Health & Google Fit'),
            ],
          ),
        ),
        
        const SizedBox(height: 40),
        
        SizedBox(
          width: double.infinity,
          height: 56,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF1E63F4), // Primary Blue
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 0,
            ),
            child: const Text(
              'Pre-order Now - \$149',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDataCard({
    required String title,
    required String value,
    required IconData icon,
    required Color color,
    required Color bgColor,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color, size: 24),
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xFF6B7280),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Color(0xFF111827),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRequirementRow(String text) {
    return Row(
      children: [
        const Icon(Icons.check_circle, color: Color(0xFF10B981), size: 20),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFFD1D5DB),
            ),
          ),
        ),
      ],
    );
  }
}
