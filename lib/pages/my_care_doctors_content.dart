import 'package:flutter/material.dart';
import 'doctors_doctor_profile_page.dart';
import 'doctors_all_specialties_page.dart';
import 'doctors_specialty_results_page.dart';

// ── Data models ───────────────────────────────────────────────────────────────

class DoctorModel {
  const DoctorModel({
    required this.name,
    required this.specialty,
    required this.hospital,
    required this.distance,
    required this.rating,
    required this.reviewCount,
    required this.experience,
    required this.avatarColor,
    required this.qualifications,
    required this.about,
    required this.slots,
    required this.reviews,
    this.isMyDoctor = false,
  });

  final String name;
  final String specialty;
  final String hospital;
  final String distance;
  final double rating;
  final int reviewCount;
  final String experience;
  final Color avatarColor;
  final String qualifications;
  final String about;
  final List<String> slots;
  final List<DoctorReview> reviews;
  final bool isMyDoctor;
}

class DoctorReview {
  const DoctorReview({
    required this.reviewer,
    required this.rating,
    required this.comment,
    required this.date,
  });

  final String reviewer;
  final double rating;
  final String comment;
  final String date;
}

class SpecialtyModel {
  const SpecialtyModel({
    required this.name,
    required this.icon,
    required this.color,
    required this.bg,
  });

  final String name;
  final IconData icon;
  final Color color;
  final Color bg;
}

// ── Sample data ───────────────────────────────────────────────────────────────

const allSpecialties = [
  SpecialtyModel(
    name: 'Heart',
    icon: Icons.favorite_border_rounded,
    color: Color(0xFFEC4899),
    bg: Color(0xFFFDF2F8),
  ),
  SpecialtyModel(
    name: 'Dental',
    icon: Icons.medical_information_outlined,
    color: Color(0xFF3B82F6),
    bg: Color(0xFFEFF6FF),
  ),
  SpecialtyModel(
    name: 'Eye',
    icon: Icons.remove_red_eye_outlined,
    color: Color(0xFF22C55E),
    bg: Color(0xFFF0FDF4),
  ),
  SpecialtyModel(
    name: 'Brain',
    icon: Icons.psychology_outlined,
    color: Color(0xFF7C3AED),
    bg: Color(0xFFF5F3FF),
  ),
  SpecialtyModel(
    name: 'Bones',
    icon: Icons.accessibility_new_rounded,
    color: Color(0xFFF97316),
    bg: Color(0xFFFFF7ED),
  ),
  SpecialtyModel(
    name: 'Kids',
    icon: Icons.child_care_outlined,
    color: Color(0xFFF59E0B),
    bg: Color(0xFFFFFBEB),
  ),
  SpecialtyModel(
    name: 'Mental',
    icon: Icons.self_improvement_outlined,
    color: Color(0xFF0EA5E9),
    bg: Color(0xFFF0F9FF),
  ),
  SpecialtyModel(
    name: 'Skin',
    icon: Icons.face_retouching_natural,
    color: Color(0xFFE11D48),
    bg: Color(0xFFFFF1F2),
  ),
  SpecialtyModel(
    name: 'Oncology',
    icon: Icons.biotech_outlined,
    color: Color(0xFF7C3AED),
    bg: Color(0xFFF5F3FF),
  ),
  SpecialtyModel(
    name: 'Gynecology',
    icon: Icons.pregnant_woman_outlined,
    color: Color(0xFFEC4899),
    bg: Color(0xFFFDF2F8),
  ),
  SpecialtyModel(
    name: 'ENT',
    icon: Icons.hearing_outlined,
    color: Color(0xFF059669),
    bg: Color(0xFFECFDF5),
  ),
  SpecialtyModel(
    name: 'Gastro',
    icon: Icons.monitor_heart_outlined,
    color: Color(0xFFF97316),
    bg: Color(0xFFFFF7ED),
  ),
  SpecialtyModel(
    name: 'Urology',
    icon: Icons.water_drop_outlined,
    color: Color(0xFF3B82F6),
    bg: Color(0xFFEFF6FF),
  ),
  SpecialtyModel(
    name: 'Pulmonology',
    icon: Icons.air_outlined,
    color: Color(0xFF0EA5E9),
    bg: Color(0xFFF0F9FF),
  ),
  SpecialtyModel(
    name: 'Nephrology',
    icon: Icons.opacity_outlined,
    color: Color(0xFF6366F1),
    bg: Color(0xFFEEF2FF),
  ),
  SpecialtyModel(
    name: 'Endocrinology',
    icon: Icons.science_outlined,
    color: Color(0xFF22C55E),
    bg: Color(0xFFF0FDF4),
  ),
];

final allDoctors = [
  DoctorModel(
    name: 'Dr. Sarah Smith',
    specialty: 'General Physician',
    hospital: 'City General Hospital',
    distance: '0.5 mi',
    rating: 4.9,
    reviewCount: 218,
    experience: '11 yrs',
    avatarColor: const Color(0xFF0EA5E9),
    qualifications: 'MBBS, MD (General Medicine)',
    about:
        'Dr. Sarah Smith is a dedicated general physician with 11 years of experience in family medicine, preventive care, and chronic disease management.',
    slots: ['9:00 AM', '10:30 AM', '12:00 PM', '3:00 PM', '5:30 PM'],
    reviews: const [
      DoctorReview(
        reviewer: 'Priya M.',
        rating: 5.0,
        comment: 'Very thorough and caring. Explained everything clearly.',
        date: '2 days ago',
      ),
      DoctorReview(
        reviewer: 'Arjun K.',
        rating: 4.5,
        comment: 'Quick appointment and helpful advice.',
        date: '1 week ago',
      ),
    ],
    isMyDoctor: true,
  ),
  DoctorModel(
    name: 'Dr. Michael Jones',
    specialty: 'Cardiologist',
    hospital: 'Apollo Health Centre',
    distance: '1.2 mi',
    rating: 4.8,
    reviewCount: 183,
    experience: '15 yrs',
    avatarColor: const Color(0xFFEF4444),
    qualifications: 'MBBS, MD (Cardiology), DM, FACC',
    about:
        'Dr. Michael Jones is a board-certified interventional cardiologist with 15 years of expertise in angioplasty, heart failure management, and preventive cardiology.',
    slots: ['11:00 AM', '2:00 PM', '4:30 PM'],
    reviews: const [
      DoctorReview(
        reviewer: 'Rohan S.',
        rating: 5.0,
        comment: 'Life-saving advice. Highly recommend.',
        date: '3 days ago',
      ),
      DoctorReview(
        reviewer: 'Meera T.',
        rating: 4.0,
        comment: 'Good doctor but wait time was long.',
        date: '2 weeks ago',
      ),
    ],
    isMyDoctor: true,
  ),
  DoctorModel(
    name: 'Dr. Aisha Patel',
    specialty: 'Dermatologist',
    hospital: 'St. Mary\'s Medical Centre',
    distance: '1.8 mi',
    rating: 4.7,
    reviewCount: 142,
    experience: '8 yrs',
    avatarColor: const Color(0xFFEC4899),
    qualifications: 'MBBS, MD (Dermatology)',
    about:
        'Dr. Aisha Patel specialises in medical and cosmetic dermatology, treating acne, eczema, psoriasis, and performing laser and anti-aging procedures.',
    slots: ['10:00 AM', '1:00 PM', '3:30 PM', '5:00 PM'],
    reviews: const [
      DoctorReview(
        reviewer: 'Neha R.',
        rating: 5.0,
        comment: 'Amazing results after my acne treatment.',
        date: '1 week ago',
      ),
    ],
    isMyDoctor: true,
  ),
  DoctorModel(
    name: 'Dr. James Wilson',
    specialty: 'Orthopedic Surgeon',
    hospital: 'Medical Center',
    distance: '0.8 mi',
    rating: 4.9,
    reviewCount: 267,
    experience: '16 yrs',
    avatarColor: const Color(0xFF7C3AED),
    qualifications: 'MBBS, MS (Ortho), Fellowship in Joint Replacement',
    about:
        'Dr. James Wilson is a leading orthopedic surgeon specialising in joint replacement, sports injuries, arthroscopy, and complex spinal procedures.',
    slots: ['9:30 AM', '11:30 AM', '2:30 PM', '6:00 PM'],
    reviews: const [
      DoctorReview(
        reviewer: 'Sam O.',
        rating: 5.0,
        comment: 'Best knee replacement surgeon in the city.',
        date: '5 days ago',
      ),
      DoctorReview(
        reviewer: 'Tara L.',
        rating: 5.0,
        comment: 'Very professional and skilled.',
        date: '1 week ago',
      ),
      DoctorReview(
        reviewer: 'Vijay P.',
        rating: 4.5,
        comment: 'Great surgeon. Recovery went smoothly.',
        date: '3 weeks ago',
      ),
    ],
  ),
  DoctorModel(
    name: 'Dr. Linda Chen',
    specialty: 'Pediatrician',
    hospital: 'Children\'s Health',
    distance: '1.2 mi',
    rating: 4.8,
    reviewCount: 194,
    experience: '14 yrs',
    avatarColor: const Color(0xFF22C55E),
    qualifications: 'MBBS, MD (Pediatrics), Fellowship in Neonatology',
    about:
        'Dr. Linda Chen is a highly regarded pediatrician with expertise in neonatal care, child development disorders, and pediatric infectious diseases.',
    slots: ['8:30 AM', '10:00 AM', '1:00 PM', '3:00 PM'],
    reviews: const [
      DoctorReview(
        reviewer: 'Kavya N.',
        rating: 5.0,
        comment: 'So gentle and patient with my toddler.',
        date: '4 days ago',
      ),
      DoctorReview(
        reviewer: 'Suresh B.',
        rating: 5.0,
        comment: 'Best pediatrician we\'ve had.',
        date: '2 weeks ago',
      ),
    ],
  ),
  DoctorModel(
    name: 'Dr. Robert Fox',
    specialty: 'Neurologist',
    hospital: 'City Hospital',
    distance: '2.5 mi',
    rating: 4.7,
    reviewCount: 156,
    experience: '12 yrs',
    avatarColor: const Color(0xFFF97316),
    qualifications: 'MBBS, DM (Neurology)',
    about:
        'Dr. Robert Fox has 12 years of expertise treating neurological conditions including epilepsy, migraines, Parkinson\'s disease, and stroke rehabilitation.',
    slots: ['11:00 AM', '2:30 PM', '5:00 PM'],
    reviews: const [
      DoctorReview(
        reviewer: 'Anita M.',
        rating: 4.5,
        comment: 'Very knowledgeable. Helped with my chronic migraines.',
        date: '1 week ago',
      ),
      DoctorReview(
        reviewer: 'Dev K.',
        rating: 5.0,
        comment: 'Excellent diagnosis and treatment plan.',
        date: '3 weeks ago',
      ),
    ],
  ),
];

// first 8 shown in grid, 'More' opens the full list
final _gridSpecialties = allSpecialties.take(7).toList();

// ── Primary content widget ────────────────────────────────────────────────────

class MyCareDoctorsContent extends StatefulWidget {
  const MyCareDoctorsContent({super.key});

  @override
  State<MyCareDoctorsContent> createState() => _MyCareDoctorsContentState();
}

class _MyCareDoctorsContentState extends State<MyCareDoctorsContent> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<DoctorModel> get _searchResults {
    if (_searchQuery.trim().isEmpty) return [];
    final q = _searchQuery.toLowerCase();
    return allDoctors.where((d) {
      return d.name.toLowerCase().contains(q) ||
          d.specialty.toLowerCase().contains(q) ||
          d.hospital.toLowerCase().contains(q);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ── Search bar
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 14, 20, 0),
          child: Container(
            height: 44,
            decoration: BoxDecoration(
              color: const Color(0xFFF3F4F6),
              borderRadius: BorderRadius.circular(22),
            ),
            child: TextField(
              controller: _searchController,
              onChanged: (v) => setState(() => _searchQuery = v),
              style: const TextStyle(fontSize: 14),
              decoration: const InputDecoration(
                hintText: 'Search doctors, specialties...',
                hintStyle: TextStyle(color: Color(0xFF9CA3AF), fontSize: 13),
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xFF9CA3AF),
                  size: 20,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
              ),
            ),
          ),
        ),

        const SizedBox(height: 16),

        // ── Search results or main content
        Expanded(
          child: _searchQuery.isNotEmpty
              ? _SearchResults(results: _searchResults, query: _searchQuery)
              : _MainContent(),
        ),
      ],
    );
  }
}

// ── Search results ────────────────────────────────────────────────────────────

class _SearchResults extends StatelessWidget {
  const _SearchResults({required this.results, required this.query});

  final List<DoctorModel> results;
  final String query;

  @override
  Widget build(BuildContext context) {
    if (results.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.search_off_rounded,
              color: Color(0xFFD1D5DB),
              size: 56,
            ),
            const SizedBox(height: 12),
            Text(
              'No results for "$query"',
              style: const TextStyle(fontSize: 14, color: Color(0xFF9CA3AF)),
            ),
          ],
        ),
      );
    }
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      itemCount: results.length,
      itemBuilder: (context, i) {
        return _DoctorListTile(doctor: results[i]);
      },
    );
  }
}

// ── Main scrollable content ───────────────────────────────────────────────────

class _MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final myDoctors = allDoctors.where((d) => d.isMyDoctor).toList();
    final topRated = [...allDoctors]
      ..sort((a, b) => b.rating.compareTo(a.rating));

    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── My Doctors
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'My Doctors',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF111827),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DoctorsSpecialtyResultsPage(
                        specialtyName: 'My Doctors',
                        doctors: myDoctors,
                      ),
                    ),
                  ),
                  child: const Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF3B82F6),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          SizedBox(
            height: 175,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: myDoctors.length,
              itemBuilder: (context, index) {
                final doc = myDoctors[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DoctorsDoctorProfilePage(doctor: doc),
                    ),
                  ),
                  child: Container(
                    width: 130,
                    margin: EdgeInsets.only(
                      right: index < myDoctors.length - 1 ? 12 : 0,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 14,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.06),
                          blurRadius: 8,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 58,
                          height: 58,
                          decoration: BoxDecoration(
                            color: doc.avatarColor.withValues(alpha: 0.15),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              doc.name
                                  .split(' ')
                                  .map((w) => w[0])
                                  .skip(1)
                                  .take(2)
                                  .join(),
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: doc.avatarColor,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          doc.name.replaceFirst('Dr. ', ''),
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF111827),
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 2),
                        Text(
                          doc.specialty.split(' ').first,
                          style: const TextStyle(
                            fontSize: 11,
                            color: Color(0xFF9CA3AF),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFEFF6FF),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'Book Again',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF3B82F6),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 28),

          // ── Specialties
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Specialties',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF111827),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const DoctorsAllSpecialtiesPage(),
                    ),
                  ),
                  child: const Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF3B82F6),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 14),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 14,
                crossAxisSpacing: 10,
                childAspectRatio: 0.88,
              ),
              itemCount: _gridSpecialties.length + 1, // +1 for "More"
              itemBuilder: (context, index) {
                // "More" tile
                if (index == _gridSpecialties.length) {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const DoctorsAllSpecialtiesPage(),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 52,
                          height: 52,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF3F4F6),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.more_horiz_rounded,
                            color: Color(0xFF6B7280),
                            size: 26,
                          ),
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          'More',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF374151),
                          ),
                        ),
                      ],
                    ),
                  );
                }

                final spec = _gridSpecialties[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DoctorsSpecialtyResultsPage(
                        specialtyName: spec.name,
                        doctors: allDoctors,
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 52,
                        height: 52,
                        decoration: BoxDecoration(
                          color: spec.bg,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(spec.icon, color: spec.color, size: 26),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        spec.name,
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF374151),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 28),

          // ── Top Rated Nearby
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Top Rated Nearby',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF111827),
                  ),
                ),
                GestureDetector(
                  onTap: () => _showFilterSheet(context),
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3F4F6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.tune_rounded,
                      color: Color(0xFF374151),
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: topRated.map((doc) {
                return _DoctorListTile(doctor: doc);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  void _showFilterSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (ctx) => Padding(
        padding: const EdgeInsets.fromLTRB(24, 16, 24, 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: const Color(0xFFE5E7EB),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            const SizedBox(height: 18),
            const Text(
              'Filter Doctors',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Color(0xFF111827),
              ),
            ),
            const SizedBox(height: 18),
            const Text(
              'Sort By',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: Color(0xFF374151),
              ),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 8,
              children:
                  ['Top Rated', 'Nearest', 'Most Reviewed', 'Available Today']
                      .map(
                        (label) => ChoiceChip(
                          label: Text(label),
                          selected: label == 'Top Rated',
                          onSelected: (_) {},
                          selectedColor: const Color(0xFF3B82F6),
                          labelStyle: TextStyle(
                            fontSize: 12,
                            color: label == 'Top Rated'
                                ? Colors.white
                                : const Color(0xFF374151),
                          ),
                        ),
                      )
                      .toList(),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 46,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(ctx),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3B82F6),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Apply',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Shared doctor list tile ───────────────────────────────────────────────────

class _DoctorListTile extends StatelessWidget {
  const _DoctorListTile({required this.doctor});

  final DoctorModel doctor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => DoctorsDoctorProfilePage(doctor: doctor),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 8,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                color: doctor.avatarColor.withValues(alpha: 0.15),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  doctor.name
                      .split(' ')
                      .map((w) => w[0])
                      .skip(1)
                      .take(2)
                      .join(),
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: doctor.avatarColor,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctor.name,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF111827),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    doctor.specialty,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF6B7280),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        size: 12,
                        color: Color(0xFF9CA3AF),
                      ),
                      const SizedBox(width: 2),
                      Text(
                        '${doctor.distance}  •  ${doctor.hospital}',
                        style: const TextStyle(
                          fontSize: 11,
                          color: Color(0xFF9CA3AF),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.star_rounded,
                      color: Color(0xFFF59E0B),
                      size: 14,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      doctor.rating.toString(),
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF111827),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                const Icon(
                  Icons.chevron_right,
                  color: Color(0xFFD1D5DB),
                  size: 18,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
