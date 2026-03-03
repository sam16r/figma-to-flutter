import 'package:flutter/material.dart';
import 'timeline_appointment_detail_page.dart';
import 'timeline_lab_report_detail_page.dart';
import 'timeline_prescription_detail_page.dart';

class MyCareTimelineContent extends StatefulWidget {
  const MyCareTimelineContent({super.key});

  @override
  State<MyCareTimelineContent> createState() => _MyCareTimelineContentState();
}

class _MyCareTimelineContentState extends State<MyCareTimelineContent> {
  String _selectedFilter = 'All Events';

  final List<String> _filters = [
    'All Events',
    'Appointments',
    'Lab Reports',
    'Medications',
  ];

  final List<_TimelineEvent> _events = [
    _TimelineEvent(
      type: TimelineEventType.appointment,
      title: 'Appointment with Dr. Smith',
      badge: 'Check-up',
      badgeColor: Color(0xFF3B82F6),
      badgeBg: Color(0xFFEFF6FF),
      timeLabel: 'Today, 10:00 AM',
      description:
          'Routine annual physical examination. Discussed blood pressure management and lifestyle improvements.',
      attachmentName: null,
      medicineInfo: null,
    ),
    _TimelineEvent(
      type: TimelineEventType.labReport,
      title: 'Lab Report: Blood Test',
      badge: 'Results',
      badgeColor: Color(0xFF7C3AED),
      badgeBg: Color(0xFFF5F3FF),
      timeLabel: 'Yesterday',
      description: null,
      attachmentName: 'CBC_Results.pdf',
      medicineInfo: null,
    ),
    _TimelineEvent(
      type: TimelineEventType.prescription,
      title: 'Prescription Added: Augmentin',
      badge: 'Medication',
      badgeColor: Color(0xFFF97316),
      badgeBg: Color(0xFFFFF7ED),
      timeLabel: '3 days ago',
      description: null,
      attachmentName: null,
      medicineInfo: _MedicineInfo(
        name: 'Augmentin 875mg',
        dosage: 'Take twice daily for 7 days',
        dose: '875',
      ),
    ),
    _TimelineEvent(
      type: TimelineEventType.appointment,
      title: 'Appointment with Dr. Patel',
      badge: 'Cardiology',
      badgeColor: Color(0xFF3B82F6),
      badgeBg: Color(0xFFEFF6FF),
      timeLabel: '1 week ago',
      description:
          'Follow-up consultation for hypertension. ECG results reviewed, medication adjusted.',
      attachmentName: null,
      medicineInfo: null,
    ),
    _TimelineEvent(
      type: TimelineEventType.labReport,
      title: 'Lab Report: Lipid Panel',
      badge: 'Results',
      badgeColor: Color(0xFF7C3AED),
      badgeBg: Color(0xFFF5F3FF),
      timeLabel: '10 days ago',
      description: null,
      attachmentName: 'Lipid_Panel_Oct2023.pdf',
      medicineInfo: null,
    ),
    _TimelineEvent(
      type: TimelineEventType.prescription,
      title: 'Prescription Added: Amlodipine',
      badge: 'Medication',
      badgeColor: Color(0xFFF97316),
      badgeBg: Color(0xFFFFF7ED),
      timeLabel: '2 weeks ago',
      description: null,
      attachmentName: null,
      medicineInfo: _MedicineInfo(
        name: 'Amlodipine 5mg',
        dosage: 'Once daily, morning',
        dose: '5',
      ),
    ),
  ];

  List<_TimelineEvent> get _filtered {
    if (_selectedFilter == 'All Events') return _events;
    if (_selectedFilter == 'Appointments') {
      return _events
          .where((e) => e.type == TimelineEventType.appointment)
          .toList();
    }
    if (_selectedFilter == 'Lab Reports') {
      return _events
          .where((e) => e.type == TimelineEventType.labReport)
          .toList();
    }
    if (_selectedFilter == 'Medications') {
      return _events
          .where((e) => e.type == TimelineEventType.prescription)
          .toList();
    }
    return _events;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header row
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Timeline',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF111827),
                ),
              ),
              // Filter pill
              SizedBox(
                height: 36,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: _filters.length,
                  itemBuilder: (context, index) {
                    final filter = _filters[index];
                    final isSelected = _selectedFilter == filter;
                    return GestureDetector(
                      onTap: () => setState(() => _selectedFilter = filter),
                      child: Container(
                        margin: const EdgeInsets.only(left: 8),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? const Color(0xFF3B82F6)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: isSelected
                                ? const Color(0xFF3B82F6)
                                : const Color(0xFFE5E7EB),
                          ),
                        ),
                        child: Text(
                          filter,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: isSelected
                                ? Colors.white
                                : const Color(0xFF6B7280),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 16),

        // Timeline list
        Expanded(
          child: _filtered.isEmpty
              ? const Center(
                  child: Text(
                    'No events found.',
                    style: TextStyle(color: Color(0xFF9CA3AF), fontSize: 14),
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
                  itemCount: _filtered.length,
                  itemBuilder: (context, index) {
                    final event = _filtered[index];
                    final isLast = index == _filtered.length - 1;
                    return _TimelineRow(
                      event: event,
                      isLast: isLast,
                      onTap: () => _navigateToDetail(context, event),
                    );
                  },
                ),
        ),
      ],
    );
  }

  void _navigateToDetail(BuildContext context, _TimelineEvent event) {
    switch (event.type) {
      case TimelineEventType.appointment:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const TimelineAppointmentDetailPage(),
          ),
        );
        break;
      case TimelineEventType.labReport:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const TimelineLabReportDetailPage(),
          ),
        );
        break;
      case TimelineEventType.prescription:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const TimelinePrescriptionDetailPage(),
          ),
        );
        break;
    }
  }
}

// ── Data models ───────────────────────────────────────────────────────────────

enum TimelineEventType { appointment, labReport, prescription }

class _MedicineInfo {
  const _MedicineInfo({
    required this.name,
    required this.dosage,
    required this.dose,
  });
  final String name;
  final String dosage;
  final String dose;
}

class _TimelineEvent {
  const _TimelineEvent({
    required this.type,
    required this.title,
    required this.badge,
    required this.badgeColor,
    required this.badgeBg,
    required this.timeLabel,
    required this.description,
    required this.attachmentName,
    required this.medicineInfo,
  });

  final TimelineEventType type;
  final String title;
  final String badge;
  final Color badgeColor;
  final Color badgeBg;
  final String timeLabel;
  final String? description;
  final String? attachmentName;
  final _MedicineInfo? medicineInfo;
}

// ── Timeline row ──────────────────────────────────────────────────────────────

class _TimelineRow extends StatelessWidget {
  const _TimelineRow({
    required this.event,
    required this.isLast,
    required this.onTap,
  });

  final _TimelineEvent event;
  final bool isLast;
  final VoidCallback onTap;

  IconData get _icon {
    switch (event.type) {
      case TimelineEventType.appointment:
        return Icons.medical_services_outlined;
      case TimelineEventType.labReport:
        return Icons.science_outlined;
      case TimelineEventType.prescription:
        return Icons.medication_outlined;
    }
  }

  Color get _iconBg {
    switch (event.type) {
      case TimelineEventType.appointment:
        return const Color(0xFFEFF6FF);
      case TimelineEventType.labReport:
        return const Color(0xFFF5F3FF);
      case TimelineEventType.prescription:
        return const Color(0xFFFFF7ED);
    }
  }

  Color get _iconColor {
    switch (event.type) {
      case TimelineEventType.appointment:
        return const Color(0xFF3B82F6);
      case TimelineEventType.labReport:
        return const Color(0xFF7C3AED);
      case TimelineEventType.prescription:
        return const Color(0xFFF97316);
    }
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left: icon + line
          Column(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: _iconBg,
                  shape: BoxShape.circle,
                  border: Border.all(color: _iconColor.withValues(alpha: 0.3)),
                ),
                child: Icon(_icon, color: _iconColor, size: 22),
              ),
              if (!isLast)
                Expanded(
                  child: Container(
                    width: 2,
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE5E7EB),
                      borderRadius: BorderRadius.circular(1),
                    ),
                  ),
                ),
            ],
          ),

          const SizedBox(width: 14),

          // Right: card
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: isLast ? 0 : 14),
              child: GestureDetector(
                onTap: onTap,
                child: Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.05),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Badge + time + chevron row
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 3,
                            ),
                            decoration: BoxDecoration(
                              color: event.badgeBg,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              event.badge,
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: event.badgeColor,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            event.timeLabel,
                            style: const TextStyle(
                              fontSize: 11,
                              color: Color(0xFF9CA3AF),
                            ),
                          ),
                          const SizedBox(width: 4),
                          const Icon(
                            Icons.chevron_right,
                            color: Color(0xFFD1D5DB),
                            size: 18,
                          ),
                        ],
                      ),

                      const SizedBox(height: 8),

                      // Title
                      Text(
                        event.title,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF111827),
                        ),
                      ),

                      // Description
                      if (event.description != null) ...[
                        const SizedBox(height: 6),
                        Text(
                          event.description!,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Color(0xFF6B7280),
                            height: 1.4,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],

                      // Attachment chip
                      if (event.attachmentName != null) ...[
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF3F4F6),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.picture_as_pdf_outlined,
                                color: Color(0xFFEF4444),
                                size: 14,
                              ),
                              const SizedBox(width: 6),
                              Text(
                                event.attachmentName!,
                                style: const TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF374151),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],

                      // Medicine chip
                      if (event.medicineInfo != null) ...[
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFF7ED),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: const Color(0xFFFED7AA)),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF97316),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  event.medicineInfo!.dose,
                                  style: const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    event.medicineInfo!.name,
                                    style: const TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF111827),
                                    ),
                                  ),
                                  Text(
                                    event.medicineInfo!.dosage,
                                    style: const TextStyle(
                                      fontSize: 10,
                                      color: Color(0xFF6B7280),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
