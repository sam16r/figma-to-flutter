import 'package:flutter/material.dart';
import 'care_services_hospital_detail_page.dart';
import 'care_services_diagnostics_detail_page.dart';
import 'care_services_category_results_page.dart';

// ── Data models ───────────────────────────────────────────────────────────────

class CsHospital {
  const CsHospital({
    required this.name,
    required this.specialties,
    required this.rating,
    required this.distance,
    required this.isOpen24,
    required this.address,
    required this.about,
    required this.imageGradient,
    required this.doctors,
  });

  final String name;
  final List<String> specialties;
  final double rating;
  final String distance;
  final bool isOpen24;
  final String address;
  final String about;
  final List<Color> imageGradient;
  final List<CsDoctor> doctors;
}

class CsDoctor {
  const CsDoctor({
    required this.name,
    required this.specialty,
    required this.experience,
    required this.rating,
    required this.avatarColor,
    required this.qualifications,
    required this.about,
    required this.slots,
  });

  final String name;
  final String specialty;
  final String experience;
  final double rating;
  final Color avatarColor;
  final String qualifications;
  final String about;
  final List<String> slots;
}

class CsDiagnostics {
  const CsDiagnostics({
    required this.name,
    required this.tests,
    required this.rating,
    required this.distance,
    required this.nextSlot,
    required this.homeVisit,
    required this.isTopRated,
    required this.address,
    required this.about,
    required this.imageGradient,
    required this.testList,
  });

  final String name;
  final List<String> tests;
  final double rating;
  final String distance;
  final String nextSlot;
  final bool homeVisit;
  final bool isTopRated;
  final String address;
  final String about;
  final List<Color> imageGradient;
  final List<CsTestItem> testList;
}

class CsTestItem {
  const CsTestItem({
    required this.name,
    required this.price,
    required this.duration,
    required this.homeVisit,
  });

  final String name;
  final String price;
  final String duration;
  final bool homeVisit;
}

class CsCategory {
  const CsCategory({
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

final _sampleDoctors1 = [
  const CsDoctor(
    name: 'Dr. James Smith',
    specialty: 'Cardiologist',
    experience: '12 yrs',
    rating: 4.8,
    avatarColor: Color(0xFF3B82F6),
    qualifications: 'MBBS, MD (Cardiology), DM',
    about:
        'Dr. James Smith is a senior cardiologist with over 12 years of experience in interventional cardiology. He specializes in angioplasty, bypass surgery consultation, and heart failure management.',
    slots: ['9:00 AM', '10:30 AM', '2:00 PM', '4:30 PM'],
  ),
  const CsDoctor(
    name: 'Dr. Priya Nair',
    specialty: 'Neurologist',
    experience: '9 yrs',
    rating: 4.7,
    avatarColor: Color(0xFF7C3AED),
    qualifications: 'MBBS, MD (Neurology)',
    about:
        'Dr. Priya Nair has 9 years of expertise in treating neurological disorders including epilepsy, migraines, stroke rehabilitation, and Parkinson\'s disease.',
    slots: ['11:00 AM', '1:00 PM', '3:30 PM'],
  ),
  const CsDoctor(
    name: 'Dr. Arjun Mehta',
    specialty: 'Emergency Medicine',
    experience: '7 yrs',
    rating: 4.6,
    avatarColor: Color(0xFFEF4444),
    qualifications: 'MBBS, DNB (Emergency Medicine)',
    about:
        'Dr. Arjun Mehta leads the emergency department at City General, specializing in trauma care, critical care management, and emergency interventions.',
    slots: ['8:00 AM', '12:00 PM', '5:00 PM', '7:00 PM'],
  ),
];

final _sampleDoctors2 = [
  const CsDoctor(
    name: 'Dr. Sunita Rao',
    specialty: 'Pediatrician',
    experience: '14 yrs',
    rating: 4.9,
    avatarColor: Color(0xFF22C55E),
    qualifications: 'MBBS, MD (Pediatrics), Fellowship in Neonatology',
    about:
        'Dr. Sunita Rao is a highly regarded pediatrician specializing in neonatal care, child development, and pediatric infectious diseases with 14 years of clinical experience.',
    slots: ['9:30 AM', '11:30 AM', '3:00 PM'],
  ),
  const CsDoctor(
    name: 'Dr. Rakesh Kumar',
    specialty: 'Orthopedic Surgeon',
    experience: '16 yrs',
    rating: 4.8,
    avatarColor: Color(0xFFF97316),
    qualifications: 'MBBS, MS (Orthopaedics), Fellowship in Joint Replacement',
    about:
        'Dr. Rakesh Kumar is a senior orthopedic surgeon specializing in joint replacement, sports injuries, arthroscopy, and spinal procedures.',
    slots: ['10:00 AM', '2:30 PM', '4:00 PM'],
  ),
];

final _hospitals = [
  CsHospital(
    name: 'City General Hospital',
    specialties: ['Cardiology', 'Neurology', 'Emergency'],
    rating: 4.8,
    distance: '1.2 km',
    isOpen24: true,
    address: '14, Park Street, Sector 5, Near Central Park',
    about:
        'City General Hospital is a 500-bed multi-speciality hospital with state-of-the-art infrastructure. Established in 1985, it has been serving the community with world-class medical care across 25+ specialities.',
    imageGradient: [Color(0xFF1E3A5F), Color(0xFF2D6A9F)],
    doctors: _sampleDoctors1,
  ),
  CsHospital(
    name: 'St. Mary\'s Medical Centre',
    specialties: ['Pediatrics', 'Orthopedics', 'Gynecology'],
    rating: 4.6,
    distance: '2.8 km',
    isOpen24: true,
    address: '2, Church Road, Sec 9, Near Metro Station',
    about:
        'St. Mary\'s Medical Centre is a premier 300-bed hospital known for excellence in maternal-child health, orthopedic care, and minimally invasive surgical procedures.',
    imageGradient: [Color(0xFF1A5276), Color(0xFF21618C)],
    doctors: _sampleDoctors2,
  ),
  CsHospital(
    name: 'Apollo Health Centre',
    specialties: ['Oncology', 'Cardiology', 'Nephrology'],
    rating: 4.9,
    distance: '4.1 km',
    isOpen24: false,
    address: '7A, Ring Road, Phase 2, Greenfield Layout',
    about:
        'Apollo Health Centre is a flagship tertiary care hospital offering cutting-edge treatments in oncology, organ transplantation, and cardiology through its team of 200+ specialist doctors.',
    imageGradient: [Color(0xFF0F4C75), Color(0xFF1B6CA8)],
    doctors: _sampleDoctors1,
  ),
];

final _diagnostics = [
  CsDiagnostics(
    name: 'MediCare Diagnostics',
    tests: ['Blood Test', 'MRI', 'X-Ray'],
    rating: 4.7,
    distance: '0.8 km',
    nextSlot: '2:00 PM',
    homeVisit: false,
    isTopRated: true,
    address: '3, Main Market, Sector 4',
    about:
        'MediCare Diagnostics is a NABL-accredited laboratory offering 500+ tests with digital report delivery. Equipped with high-field 1.5T MRI and 128-slice CT scanners.',
    imageGradient: [Color(0xFF064E3B), Color(0xFF065F46)],
    testList: [
      CsTestItem(
        name: 'Complete Blood Count (CBC)',
        price: '₹350',
        duration: '6 hrs',
        homeVisit: true,
      ),
      CsTestItem(
        name: 'MRI Brain',
        price: '₹4,500',
        duration: '1 hr',
        homeVisit: false,
      ),
      CsTestItem(
        name: 'Chest X-Ray',
        price: '₹300',
        duration: '30 min',
        homeVisit: false,
      ),
      CsTestItem(
        name: 'Thyroid Profile (T3/T4/TSH)',
        price: '₹650',
        duration: '12 hrs',
        homeVisit: true,
      ),
      CsTestItem(
        name: 'Lipid Profile',
        price: '₹450',
        duration: '8 hrs',
        homeVisit: true,
      ),
    ],
  ),
  CsDiagnostics(
    name: 'PathLabs Centre',
    tests: ['Full Body Checkup', 'Urine Test'],
    rating: 4.4,
    distance: '1.5 km',
    nextSlot: '4:00 PM',
    homeVisit: true,
    isTopRated: false,
    address: '22, Green Avenue, Block B',
    about:
        'PathLabs Centre provides affordable, reliable diagnostic services with home sample collection available across the city. NABL and ISO 15189 certified.',
    imageGradient: [Color(0xFF1E3A5F), Color(0xFF1F618D)],
    testList: [
      CsTestItem(
        name: 'Full Body Checkup (65 tests)',
        price: '₹1,999',
        duration: '24 hrs',
        homeVisit: true,
      ),
      CsTestItem(
        name: 'Urine Routine',
        price: '₹120',
        duration: '4 hrs',
        homeVisit: true,
      ),
      CsTestItem(
        name: 'Blood Sugar (Fasting)',
        price: '₹80',
        duration: '4 hrs',
        homeVisit: true,
      ),
      CsTestItem(
        name: 'HbA1c',
        price: '₹550',
        duration: '8 hrs',
        homeVisit: true,
      ),
    ],
  ),
  CsDiagnostics(
    name: 'LifeMed Scan Centre',
    tests: ['CT Scan', 'Ultrasound', 'ECG'],
    rating: 4.6,
    distance: '2.2 km',
    nextSlot: '11:00 AM',
    homeVisit: false,
    isTopRated: false,
    address: '5, Hospital Road, Medical Block',
    about:
        'LifeMed Scan Centre specialises in advanced imaging diagnostics with 256-slice CT, 3T MRI, and real-time ultrasound units staffed by specialist radiologists.',
    imageGradient: [Color(0xFF312E81), Color(0xFF4338CA)],
    testList: [
      CsTestItem(
        name: 'CT Scan Abdomen',
        price: '₹3,800',
        duration: '1 hr',
        homeVisit: false,
      ),
      CsTestItem(
        name: 'Ultrasound Whole Abdomen',
        price: '₹800',
        duration: '45 min',
        homeVisit: false,
      ),
      CsTestItem(
        name: 'ECG (12-lead)',
        price: '₹200',
        duration: '15 min',
        homeVisit: false,
      ),
    ],
  ),
];

const _categories = [
  CsCategory(
    name: 'Dentist',
    icon: Icons.medical_information_outlined,
    color: Color(0xFF3B82F6),
    bg: Color(0xFFEFF6FF),
  ),
  CsCategory(
    name: 'Heart',
    icon: Icons.favorite_border_rounded,
    color: Color(0xFFEC4899),
    bg: Color(0xFFFDF2F8),
  ),
  CsCategory(
    name: 'Eye',
    icon: Icons.remove_red_eye_outlined,
    color: Color(0xFFF97316),
    bg: Color(0xFFFFF7ED),
  ),
  CsCategory(
    name: 'Ortho',
    icon: Icons.accessibility_new_rounded,
    color: Color(0xFF22C55E),
    bg: Color(0xFFF0FDF4),
  ),
  CsCategory(
    name: 'Neuro',
    icon: Icons.psychology_outlined,
    color: Color(0xFF7C3AED),
    bg: Color(0xFFF5F3FF),
  ),
  CsCategory(
    name: 'Pediatric',
    icon: Icons.child_care_outlined,
    color: Color(0xFF0EA5E9),
    bg: Color(0xFFF0F9FF),
  ),
  CsCategory(
    name: 'Skin',
    icon: Icons.face_retouching_natural,
    color: Color(0xFFF59E0B),
    bg: Color(0xFFFFFBEB),
  ),
  CsCategory(
    name: 'More',
    icon: Icons.grid_view_rounded,
    color: Color(0xFF6B7280),
    bg: Color(0xFFF3F4F6),
  ),
];

// ── Primary content widget ────────────────────────────────────────────────────

class MyCareCareServicesContent extends StatelessWidget {
  const MyCareCareServicesContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),

          // ── Emergency section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const Icon(
                  Icons.warning_amber_rounded,
                  color: Color(0xFFEF4444),
                  size: 20,
                ),
                const SizedBox(width: 6),
                const Text(
                  'Emergency Help',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF111827),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
              decoration: BoxDecoration(
                color: const Color(0xFFFEF2F2),
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: const Color(0xFFFECACA)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 46,
                        height: 46,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFEE2E2),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: const Icon(
                          Icons.local_hospital_rounded,
                          color: Color(0xFFEF4444),
                          size: 26,
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Emergency SOS',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF111827),
                              ),
                            ),
                            Text(
                              'Instant ambulance & paramedic dispatch',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF6B7280),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Background decoration icon
                      Icon(
                        Icons.medical_services_rounded,
                        size: 48,
                        color: const Color(0xFFFCA5A5).withValues(alpha: 0.5),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  SizedBox(
                    width: double.infinity,
                    height: 46,
                    child: ElevatedButton.icon(
                      onPressed: () => _showSosDialog(context),
                      icon: const Icon(
                        Icons.phone_rounded,
                        color: Colors.white,
                        size: 18,
                      ),
                      label: const Text(
                        'Call Ambulance Now',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFEF4444),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 28),

          // ── Hospitals Nearby
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Hospitals Nearby',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF111827),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CareServicesCategoryResultsPage(
                        categoryName: 'Hospitals Nearby',
                        hospitals: _hospitals,
                        diagnostics: const [],
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
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: _hospitals.length,
              itemBuilder: (context, index) {
                final h = _hospitals[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          CareServicesHospitalDetailPage(hospital: h),
                    ),
                  ),
                  child: Container(
                    width: 190,
                    margin: EdgeInsets.only(
                      right: index < _hospitals.length - 1 ? 14 : 0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.07),
                          blurRadius: 8,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Image
                        ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(16),
                          ),
                          child: Container(
                            height: 110,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: h.imageGradient,
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: Stack(
                              children: [
                                const Center(
                                  child: Icon(
                                    Icons.local_hospital_rounded,
                                    color: Colors.white38,
                                    size: 56,
                                  ),
                                ),
                                // Rating badge
                                Positioned(
                                  top: 8,
                                  right: 8,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Icon(
                                          Icons.star_rounded,
                                          color: Color(0xFFF59E0B),
                                          size: 12,
                                        ),
                                        const SizedBox(width: 3),
                                        Text(
                                          h.rating.toString(),
                                          style: const TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xFF111827),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                // Distance chip
                                Positioned(
                                  bottom: 8,
                                  left: 8,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withValues(
                                        alpha: 0.55,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Icon(
                                          Icons.navigation_rounded,
                                          color: Colors.white,
                                          size: 11,
                                        ),
                                        const SizedBox(width: 3),
                                        Text(
                                          h.distance,
                                          style: const TextStyle(
                                            fontSize: 11,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
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

                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 8, 10, 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                h.name,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF111827),
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 3),
                              Text(
                                h.specialties.take(3).join(', '),
                                style: const TextStyle(
                                  fontSize: 11,
                                  color: Color(0xFF9CA3AF),
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 6),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.check_circle_rounded,
                                    color: Color(0xFF22C55E),
                                    size: 14,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    h.isOpen24 ? 'Open 24/7' : 'Open Now',
                                    style: const TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF22C55E),
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
                );
              },
            ),
          ),

          const SizedBox(height: 28),

          // ── Diagnostic Labs
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Diagnostic Labs',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF111827),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CareServicesCategoryResultsPage(
                        categoryName: 'All Diagnostic Labs',
                        hospitals: const [],
                        diagnostics: _diagnostics,
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

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: _diagnostics.take(2).map((lab) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            CareServicesDiagnosticsDetailPage(lab: lab),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.05),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          // Lab image
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              width: 68,
                              height: 72,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: lab.imageGradient,
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                              child: const Icon(
                                Icons.science_outlined,
                                color: Colors.white38,
                                size: 36,
                              ),
                            ),
                          ),

                          const SizedBox(width: 12),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        lab.name,
                                        style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF111827),
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    if (lab.isTopRated) ...[
                                      const SizedBox(width: 6),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 7,
                                          vertical: 3,
                                        ),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFECFDF5),
                                          borderRadius: BorderRadius.circular(
                                            6,
                                          ),
                                        ),
                                        child: const Text(
                                          'TOP RATED',
                                          style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xFF059669),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ],
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  lab.tests.take(3).join(', '),
                                  style: const TextStyle(
                                    fontSize: 11,
                                    color: Color(0xFF9CA3AF),
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 6),
                                Row(
                                  children: [
                                    if (lab.homeVisit) ...[
                                      const Icon(
                                        Icons.home_outlined,
                                        size: 12,
                                        color: Color(0xFF6B7280),
                                      ),
                                      const SizedBox(width: 4),
                                      const Text(
                                        'Home Visit Available',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xFF6B7280),
                                        ),
                                      ),
                                    ] else ...[
                                      const Icon(
                                        Icons.access_time,
                                        size: 12,
                                        color: Color(0xFF6B7280),
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        'Next slot: ${lab.nextSlot}',
                                        style: const TextStyle(
                                          fontSize: 10,
                                          color: Color(0xFF6B7280),
                                        ),
                                      ),
                                    ],
                                    const Spacer(),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 5,
                                      ),
                                      decoration: BoxDecoration(
                                        color: lab.isTopRated
                                            ? const Color(0xFF0D9488)
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                        border: lab.isTopRated
                                            ? null
                                            : Border.all(
                                                color: const Color(0xFFD1D5DB),
                                              ),
                                      ),
                                      child: Text(
                                        lab.isTopRated
                                            ? 'Book Sample'
                                            : 'View Details',
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w600,
                                          color: lab.isTopRated
                                              ? Colors.white
                                              : const Color(0xFF374151),
                                        ),
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
                  ),
                );
              }).toList(),
            ),
          ),

          const SizedBox(height: 24),

          // ── Categories
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Categories',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: Color(0xFF111827),
              ),
            ),
          ),

          const SizedBox(height: 12),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 14,
                crossAxisSpacing: 10,
                childAspectRatio: 0.9,
              ),
              itemCount: _categories.length,
              itemBuilder: (context, index) {
                final cat = _categories[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CareServicesCategoryResultsPage(
                        categoryName: cat.name,
                        hospitals: _hospitals,
                        diagnostics: _diagnostics,
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 52,
                        height: 52,
                        decoration: BoxDecoration(
                          color: cat.bg,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(cat.icon, color: cat.color, size: 26),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        cat.name,
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
        ],
      ),
    );
  }

  void _showSosDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        title: Row(
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: const Color(0xFFFEE2E2),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.warning_amber_rounded,
                color: Color(0xFFEF4444),
                size: 20,
              ),
            ),
            const SizedBox(width: 10),
            const Text(
              'Emergency SOS',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
            ),
          ],
        ),
        content: const Text(
          'This will immediately dispatch an ambulance to your registered location. Confirm to proceed.',
          style: TextStyle(fontSize: 13, color: Color(0xFF6B7280)),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text(
              'Cancel',
              style: TextStyle(color: Color(0xFF6B7280)),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(ctx);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Calling 102 — Ambulance dispatched!'),
                  backgroundColor: Color(0xFFEF4444),
                  duration: Duration(seconds: 3),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFEF4444),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Call Now',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
