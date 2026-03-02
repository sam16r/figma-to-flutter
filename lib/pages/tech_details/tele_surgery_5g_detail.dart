import 'package:flutter/material.dart';

class TeleSurgery5gDetail extends StatelessWidget {
  const TeleSurgery5gDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Top bar
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Color(0xFF374151),
                      size: 22,
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.bookmark_border,
                    color: Color(0xFF6B7280),
                    size: 22,
                  ),
                  const SizedBox(width: 14),
                  const Icon(
                    Icons.share_outlined,
                    color: Color(0xFF6B7280),
                    size: 22,
                  ),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Innovation Feature pill
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF22C55E),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'INNOVATION FEATURE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      'Tele-Surgery via 5G: A Global Success Story',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF111827),
                        height: 1.2,
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Author
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 16,
                          backgroundColor: Color(0xFF6366F1),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'By Dr. Elena Vance',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF374151),
                              ),
                            ),
                            Text(
                              'Medical Technology Correspondent • 6 min read',
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xFF9CA3AF),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 14),

                    // Hero image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Stack(
                        children: [
                          Image.network(
                            'https://images.unsplash.com/photo-1559757175-0eb30cd8c063?w=800&auto=format&fit=crop',
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            errorBuilder: (_, __, ___) => Container(
                              height: 200,
                              color: const Color(0xFF1E293B),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 12,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: const Text(
                                'LONDON OPERATING THEATRE • 09:00 GMT',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 9,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF374151),
                          height: 1.7,
                        ),
                        children: [
                          TextSpan(
                            text: 'I',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFF111827),
                            ),
                          ),
                          TextSpan(
                            text:
                                't began with a single incision made 6,700 miles away. As Dr. Aris Thorne manipulated the robotic console in London, the scalpel in a Singapore operating theater moved in perfect synchrony.',
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 12),

                    const Text(
                      'The successful removal of a benign tumor yesterday marked a watershed moment for medical science: the first fully remote operation conducted over a standard 5G commercial network with zero perceptible latency.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF374151),
                        height: 1.7,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Zero-Latency Connectivity
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFEFF6FF),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: const Color(0xFFBFDBFE)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(
                              0xFF3B82F6,
                            ).withValues(alpha: 0.05),
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Zero-Latency Connectivity',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF1D4ED8),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Achieving sub-millisecond response times was the critical hurdle. The 5G slice used prioritized surgical data packets above all other network traffic, ensuring the surgeon \'felt\' the tissue resistance in real-time.',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF374151),
                              height: 1.6,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Pull quote
                    const Text(
                      '"The feedback was instantaneous," Dr. Thorne reported post-surgery. "I forgot I wasn\'t in the room with the patient. The haptic sensors transmitted every nuance."',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF111827),
                        fontStyle: FontStyle.italic,
                        height: 1.6,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Remote Care Network Hubs diagram
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF9FAFB),
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: const Color(0xFFE5E7EB)),
                      ),
                      child: Column(
                        children: [
                          const Text(
                            'REMOTE CARE NETWORK HUBS',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF9CA3AF),
                              letterSpacing: 0.6,
                            ),
                          ),
                          const SizedBox(height: 16),
                          _NetworkDiagram(),
                          const SizedBox(height: 10),
                          const Text(
                            'Secure 5G pathway routing through 3 major intercontinental data centers.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF9CA3AF),
                              height: 1.4,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Democratic Access
                    const Text(
                      'Democratic Access to Specialists',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF111827),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'The implications for global health equity are profound. Patients in rural areas or developing nations could soon access top-tier specialists without the cost or risk of medical transport.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF374151),
                        height: 1.7,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Large italic pull quote
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF9FAFB),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        children: const [
                          Text(
                            '"We are demolishing the geographical barriers to elite healthcare. Geography is no longer destiny."',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF111827),
                              height: 1.4,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            '— DR. SARAH JENNING, MEDTECH INSTITUTE',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF3B82F6),
                              letterSpacing: 0.5,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Safety Protocol Overrides
                    const Text(
                      'Safety Protocol Overrides',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF111827),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Critics have long cited connection stability as a risk factor. However, the new \'Fail-Safe AI\' introduced in this procedure acts as a localized buffer. If the connection drops for even a microsecond, the AI on the patient\'s side stabilizes the robotic arm instantly, preventing any erratic movements until the link is restored.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF374151),
                        height: 1.7,
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Related Coverage
                    const Text(
                      'RELATED COVERAGE',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF6B7280),
                        letterSpacing: 0.6,
                      ),
                    ),
                    const SizedBox(height: 12),
                    _RelatedCoverageRow(
                      imageUrl:
                          'https://images.unsplash.com/photo-1485827404703-89b55fcc595e?w=400&auto=format&fit=crop',
                      category: 'TECHNOLOGY',
                      title: 'Robotic-Assisted Surgery Breakthroughs',
                      readTime: '8 min read',
                    ),
                    const SizedBox(height: 10),
                    _RelatedCoverageRow(
                      imageUrl:
                          'https://images.unsplash.com/photo-1576091160399-112ba8d25d1d?w=400&auto=format&fit=crop',
                      category: 'INDUSTRY DATA',
                      title: 'Telehealth Trends for 2025',
                      readTime: '3 min read',
                    ),

                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NetworkDiagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: CustomPaint(
        painter: _NetworkPainter(),
        size: const Size(double.infinity, 100),
      ),
    );
  }
}

class _NetworkPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final linePaint = Paint()
      ..color = const Color(0xFF3B82F6)
      ..strokeWidth = 1.5
      ..style = PaintingStyle.stroke;

    final dotPaintBlue = Paint()
      ..color = const Color(0xFF3B82F6)
      ..style = PaintingStyle.fill;

    final dotPaintRed = Paint()
      ..color = const Color(0xFFEF4444)
      ..style = PaintingStyle.fill;

    final leftX = size.width * 0.15;
    final rightX = size.width * 0.85;
    const y = 60.0;
    const arcY = 20.0;

    // Arc from London to Singapore
    final path = Path()
      ..moveTo(leftX, y)
      ..quadraticBezierTo(size.width * 0.5, arcY, rightX, y);
    canvas.drawPath(path, linePaint);

    // Latency label
    final latencyRect = Rect.fromCenter(
      center: Offset(size.width * 0.5, 25),
      width: 80,
      height: 18,
    );
    canvas.drawRRect(
      RRect.fromRectAndRadius(latencyRect, const Radius.circular(9)),
      Paint()..color = const Color(0xFFEFF6FF),
    );

    final textPainter = TextPainter(
      text: const TextSpan(
        text: 'Latency: 2ms',
        style: TextStyle(
          color: Color(0xFF3B82F6),
          fontSize: 9,
          fontWeight: FontWeight.w700,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    textPainter.paint(
      canvas,
      Offset(
        size.width * 0.5 - textPainter.width / 2,
        25 - textPainter.height / 2,
      ),
    );

    // London dot
    canvas.drawCircle(Offset(leftX, y), 8, dotPaintBlue);
    final londonPainter = TextPainter(
      text: const TextSpan(
        text: 'London\nControl',
        style: TextStyle(
          color: Color(0xFF111827),
          fontSize: 9,
          fontWeight: FontWeight.w600,
          height: 1.3,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    londonPainter.paint(
      canvas,
      Offset(leftX - londonPainter.width / 2, y + 12),
    );

    // Singapore dot
    canvas.drawCircle(Offset(rightX, y), 8, dotPaintRed);
    final singpPainter = TextPainter(
      text: const TextSpan(
        text: 'Singapore\nRemote',
        style: TextStyle(
          color: Color(0xFF111827),
          fontSize: 9,
          fontWeight: FontWeight.w600,
          height: 1.3,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    singpPainter.paint(canvas, Offset(rightX - singpPainter.width / 2, y + 12));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _RelatedCoverageRow extends StatelessWidget {
  const _RelatedCoverageRow({
    required this.imageUrl,
    required this.category,
    required this.title,
    required this.readTime,
  });
  final String imageUrl;
  final String category;
  final String title;
  final String readTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imageUrl,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Container(
                width: 60,
                height: 60,
                color: const Color(0xFFE5E7EB),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category,
                  style: const TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF3B82F6),
                    letterSpacing: 0.4,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF111827),
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  readTime,
                  style: const TextStyle(
                    fontSize: 11,
                    color: Color(0xFF9CA3AF),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
