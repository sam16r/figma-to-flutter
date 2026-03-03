import 'package:flutter/material.dart';
import 'my_care_care_services_content.dart';

class CareServicesDoctorProfilePage extends StatefulWidget {
  const CareServicesDoctorProfilePage({super.key, required this.doctor});

  final CsDoctor doctor;

  @override
  State<CareServicesDoctorProfilePage> createState() =>
      _CareServicesDoctorProfilePageState();
}

class _CareServicesDoctorProfilePageState
    extends State<CareServicesDoctorProfilePage> {
  String? _selectedSlot;
  int _selectedDay = 0; // 0 = Today, 1 = Tomorrow, 2 = Day after

  final List<String> _dayLabels = ['Today', 'Tomorrow', 'Wed, 5 Mar'];

  @override
  Widget build(BuildContext context) {
    final doc = widget.doctor;

    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF111827)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Doctor Profile',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xFF111827),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.bookmark_border_rounded,
              color: Color(0xFF6B7280),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── Doctor Hero card
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    doc.avatarColor,
                    doc.avatarColor.withValues(alpha: 0.75),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: doc.avatarColor.withValues(alpha: 0.35),
                    blurRadius: 16,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 72,
                    height: 72,
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.25),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        doc.name.split(' ').map((w) => w[0]).take(2).join(),
                        style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          doc.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          doc.specialty,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white.withValues(alpha: 0.85),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            const Icon(
                              Icons.star_rounded,
                              color: Color(0xFFFBBF24),
                              size: 14,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '${doc.rating}  •  ${doc.experience} exp',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white.withValues(alpha: 0.85),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // ── Stats row
            Row(
              children: [
                _DoctorStat(
                  icon: Icons.people_outlined,
                  value: '2,400+',
                  label: 'Patients',
                  color: doc.avatarColor,
                ),
                const SizedBox(width: 12),
                _DoctorStat(
                  icon: Icons.workspace_premium_outlined,
                  value: doc.experience,
                  label: 'Experience',
                  color: doc.avatarColor,
                ),
                const SizedBox(width: 12),
                _DoctorStat(
                  icon: Icons.star_rounded,
                  value: doc.rating.toString(),
                  label: 'Rating',
                  color: doc.avatarColor,
                ),
              ],
            ),

            const SizedBox(height: 20),

            // ── Qualifications
            _SectionCard(
              title: 'Qualifications',
              icon: Icons.school_outlined,
              color: doc.avatarColor,
              child: Text(
                doc.qualifications,
                style: const TextStyle(
                  fontSize: 13,
                  color: Color(0xFF374151),
                  height: 1.5,
                ),
              ),
            ),

            const SizedBox(height: 14),

            // ── About
            _SectionCard(
              title: 'About',
              icon: Icons.info_outline_rounded,
              color: doc.avatarColor,
              child: Text(
                doc.about,
                style: const TextStyle(
                  fontSize: 13,
                  color: Color(0xFF6B7280),
                  height: 1.6,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // ── Appointment booking
            const Text(
              'Book Appointment',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF111827),
              ),
            ),

            const SizedBox(height: 12),

            // Day selector
            Row(
              children: List.generate(_dayLabels.length, (i) {
                final selected = _selectedDay == i;
                return Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() {
                      _selectedDay = i;
                      _selectedSlot = null;
                    }),
                    child: Container(
                      margin: EdgeInsets.only(right: i < 2 ? 10 : 0),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: selected ? doc.avatarColor : Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: selected
                              ? doc.avatarColor
                              : const Color(0xFFE5E7EB),
                        ),
                        boxShadow: selected
                            ? [
                                BoxShadow(
                                  color: doc.avatarColor.withValues(
                                    alpha: 0.25,
                                  ),
                                  blurRadius: 8,
                                  offset: const Offset(0, 3),
                                ),
                              ]
                            : [],
                      ),
                      child: Text(
                        _dayLabels[i],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: selected
                              ? Colors.white
                              : const Color(0xFF6B7280),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),

            const SizedBox(height: 14),

            // Time slots
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: doc.slots.map((slot) {
                final selected = _selectedSlot == slot;
                final isUnavailable =
                    _selectedDay == 1 && slot == doc.slots.first;
                return GestureDetector(
                  onTap: isUnavailable
                      ? null
                      : () => setState(() => _selectedSlot = slot),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: isUnavailable
                          ? const Color(0xFFF3F4F6)
                          : selected
                          ? doc.avatarColor
                          : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: isUnavailable
                            ? const Color(0xFFE5E7EB)
                            : selected
                            ? doc.avatarColor
                            : const Color(0xFFE5E7EB),
                      ),
                    ),
                    child: Text(
                      slot,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: isUnavailable
                            ? const Color(0xFFD1D5DB)
                            : selected
                            ? Colors.white
                            : const Color(0xFF374151),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),

            const SizedBox(height: 28),

            // CTA
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: _selectedSlot == null
                    ? null
                    : () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Appointment with ${doc.name} confirmed for $_selectedSlot.',
                            ),
                            backgroundColor: doc.avatarColor,
                          ),
                        );
                      },
                icon: const Icon(
                  Icons.calendar_today_rounded,
                  color: Colors.white,
                  size: 18,
                ),
                label: const Text(
                  'Confirm Appointment',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: doc.avatarColor,
                  disabledBackgroundColor: const Color(0xFFD1D5DB),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
              ),
            ),

            if (_selectedSlot == null)
              const Padding(
                padding: EdgeInsets.only(top: 8),
                child: Center(
                  child: Text(
                    'Please select a time slot to proceed',
                    style: TextStyle(fontSize: 12, color: Color(0xFF9CA3AF)),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _DoctorStat extends StatelessWidget {
  const _DoctorStat({
    required this.icon,
    required this.value,
    required this.label,
    required this.color,
  });

  final IconData icon;
  final String value;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.04),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(icon, color: color, size: 22),
            const SizedBox(height: 6),
            Text(
              value,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w800,
                color: Color(0xFF111827),
              ),
            ),
            Text(
              label,
              style: const TextStyle(fontSize: 10, color: Color(0xFF9CA3AF)),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  const _SectionCard({
    required this.title,
    required this.icon,
    required this.color,
    required this.child,
  });

  final String title;
  final IconData icon;
  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: color, size: 18),
              const SizedBox(width: 8),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF111827),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          child,
        ],
      ),
    );
  }
}
