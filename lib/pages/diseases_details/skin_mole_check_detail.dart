import 'package:flutter/material.dart';

class SkinMoleCheckDetail extends StatelessWidget {
  const SkinMoleCheckDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top bar
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(Icons.arrow_back, size: 24),
                    ),
                    const Row(
                      children: [
                        Icon(Icons.bookmark_border, size: 24),
                        SizedBox(width: 12),
                        Icon(Icons.share, size: 24),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Title
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Skin Mole Check',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF111827),
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Use the ABCDE method to identify potential melanoma.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Color(0xFF6B7280)),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Visual Reference card
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF0F7FF),
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: const Color(0xFFBFDBFE)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Visual Reference',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF3B82F6),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 3,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFFDBEAFE),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              'CLINICAL GUIDE',
                              style: TextStyle(
                                color: Color(0xFF3B82F6),
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          _MoleVisual(
                            isAtypical: false,
                            label: 'Normal',
                            sublabel: 'Benign',
                            sublabelColor: Color(0xFF22C55E),
                          ),
                          _MoleVisual(
                            isAtypical: true,
                            label: 'Atypical',
                            sublabel: 'Malignant?',
                            sublabelColor: Color(0xFFEF4444),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // ABCDE Method
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: const Color(0xFFDBEAFE),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Icons.grid_view_outlined,
                        color: Color(0xFF3B82F6),
                        size: 18,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'The ABCDE Method',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF111827),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 14),
              _AbcdeItem(
                letter: 'A',
                title: 'Asymmetry',
                description:
                    'One half of the mole does not match the other half.',
                warningText: 'Warning Sign',
                hasWarning: true,
                moleChild: const _AsymmetryShape(),
              ),
              _AbcdeItem(
                letter: 'B',
                title: 'Border',
                description:
                    'The edges are irregular, ragged, notched, or blurred.',
                warningText: 'Risk Level: High',
                hasWarning: true,
                warningColor: const Color(0xFFF97316),
                moleChild: const _BorderShape(),
              ),
              _AbcdeItem(
                letter: 'C',
                title: 'Color',
                description:
                    'The color is not the same all over and may include shades of brown or black, or sometimes patches of pink, red, white, or blue.',
                hasWarning: false,
                moleChild: const _ColorShape(),
              ),
              _AbcdeItem(
                letter: 'D',
                title: 'Diameter',
                description:
                    'The spot is larger than 6mm across (about ¼ inch — the size of a pencil eraser).',
                hasWarning: false,
                moleChild: const _DiameterShape(),
              ),
              _AbcdeItem(
                letter: 'E',
                title: 'Evolving',
                description: 'The mole is changing in size, shape, or color.',
                hasWarning: false,
                isLast: true,
                moleChild: const Icon(
                  Icons.refresh,
                  color: Color(0xFF6B7280),
                  size: 28,
                ),
              ),

              const SizedBox(height: 20),

              // Info card
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEFF6FF),
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: const Color(0xFFBFDBFE)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.info_outline,
                        color: Color(0xFF3B82F6),
                        size: 18,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "Important: Some melanomas do not fit these rules. It's important to tell your doctor about any changes or new spots on the skin, or growths that look different from the rest of your moles.",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFF1D4ED8),
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
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

class _MoleVisual extends StatelessWidget {
  const _MoleVisual({
    required this.isAtypical,
    required this.label,
    required this.sublabel,
    required this.sublabelColor,
  });
  final bool isAtypical;
  final String label;
  final String sublabel;
  final Color sublabelColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xFFE8D5B0),
          ),
          child: Center(
            child: Container(
              width: isAtypical ? 32 : 24,
              height: isAtypical ? 28 : 22,
              decoration: BoxDecoration(
                color: const Color(0xFF78350F),
                borderRadius: isAtypical
                    ? BorderRadius.circular(6)
                    : BorderRadius.circular(12),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w700,
            color: Color(0xFF111827),
          ),
        ),
        Text(
          sublabel,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: sublabelColor,
          ),
        ),
      ],
    );
  }
}

class _AbcdeItem extends StatelessWidget {
  const _AbcdeItem({
    required this.letter,
    required this.title,
    required this.description,
    required this.hasWarning,
    required this.moleChild,
    this.warningText,
    this.warningColor = const Color(0xFFEF4444),
    this.isLast = false,
  });
  final String letter;
  final String title;
  final String description;
  final bool hasWarning;
  final String? warningText;
  final Color warningColor;
  final Widget moleChild;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, isLast ? 0 : 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Mole illustration box
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: const Color(0xFFF3F4F6),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(child: moleChild),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF111827),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF6B7280),
                  ),
                ),
                if (hasWarning && warningText != null) ...[
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(
                        Icons.warning_amber_rounded,
                        size: 13,
                        color: warningColor,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        warningText!,
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: warningColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFFFECACA),
            ),
            child: Center(
              child: Text(
                letter,
                style: const TextStyle(
                  color: Color(0xFFEF4444),
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AsymmetryShape extends StatelessWidget {
  const _AsymmetryShape();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 24,
      decoration: BoxDecoration(
        color: const Color(0xFF374151),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(14),
          bottomRight: Radius.circular(14),
          topRight: Radius.circular(4),
          bottomLeft: Radius.circular(4),
        ),
      ),
    );
  }
}

class _BorderShape extends StatelessWidget {
  const _BorderShape();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        color: const Color(0xFF374151),
        shape: BoxShape.circle,
        border: Border.all(
          color: const Color(0xFF6B7280),
          width: 2,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
      ),
    );
  }
}

class _ColorShape extends StatelessWidget {
  const _ColorShape();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [Color(0xFFEF4444), Color(0xFF92400E)],
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}

class _DiameterShape extends StatelessWidget {
  const _DiameterShape();
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: const BoxDecoration(
            color: Color(0xFF1F2937),
            shape: BoxShape.circle,
          ),
        ),
        Positioned(
          bottom: 2,
          right: 2,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 1),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Text(
              '>6mm',
              style: TextStyle(
                fontSize: 7,
                fontWeight: FontWeight.w700,
                color: Color(0xFF374151),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
