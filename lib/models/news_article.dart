class NewsArticle {
  final String id;
  final String category;
  final String title;
  final String subtitle;
  final String author;
  final String timeAgo;
  final String readTime;
  final String imageUrl;
  final bool isFeatured;
  final String content;

  const NewsArticle({
    required this.id,
    required this.category,
    required this.title,
    this.subtitle = '',
    required this.author,
    required this.timeAgo,
    required this.readTime,
    required this.imageUrl,
    this.isFeatured = false,
    this.content = '',
  });
}

final List<NewsArticle> dummyNewsArticles = [
  const NewsArticle(
    id: '1',
    category: 'FEATURED',
    title: 'The Secret to Better Sleep Quality',
    author: 'Dr. Sarah Jenkins',
    timeAgo: 'Just now',
    readTime: '5 min read',
    imageUrl:
        'https://images.unsplash.com/photo-1576091160399-112ba8d25d1d?w=800&auto=format&fit=crop',
    isFeatured: true,
  ),
  const NewsArticle(
    id: '2',
    category: 'NUTRITION',
    title: 'Superfoods You Need to Include in Your Diet',
    author: 'CareTag Editorial',
    timeAgo: '2h ago',
    readTime: '5 min read',
    imageUrl:
        'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=800&auto=format&fit=crop',
  ),
  const NewsArticle(
    id: '3',
    category: 'MENTAL HEALTH',
    title: 'Why Mindfulness Matters in a Busy World',
    author: 'eHealth Weekly',
    timeAgo: '5h ago',
    readTime: '5 min read',
    imageUrl:
        'https://images.unsplash.com/photo-1506126613408-eca07ce68773?w=800&auto=format&fit=crop',
  ),
  const NewsArticle(
    id: '4',
    category: 'FITNESS',
    title: '5 Simple Exercises for Lower Back Pain',
    author: 'Physio Tips',
    timeAgo: '8h ago',
    readTime: '15 min read',
    imageUrl:
        'https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?w=800&auto=format&fit=crop',
  ),
  const NewsArticle(
    id: '5',
    category: 'INNOVATION',
    title: 'New Wearable Tech Tracks Hydration Levels',
    author: 'Tech eHealth',
    timeAgo: '1d ago',
    readTime: '5 min read',
    imageUrl:
        'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=800&auto=format&fit=crop',
  ),
];

// Diseases & Awareness Tab Articles
final List<NewsArticle> diseasesArticles = [
  const NewsArticle(
    id: 'da1',
    category: 'AWARENESS MONTH',
    title: 'Breast Cancer Awareness',
    subtitle:
        'Early detection saves lives. Learn about self-examination and screening schedules.',
    author: 'CareTag Editorial',
    timeAgo: 'Just now',
    readTime: '4 min read',
    imageUrl:
        'https://images.unsplash.com/photo-1631217868264-e5b90bb7e133?w=800&auto=format&fit=crop',
    isFeatured: true,
  ),
  const NewsArticle(
    id: 'da2',
    category: 'CHRONIC',
    title: 'Understanding Diabetes',
    subtitle:
        'Learn the critical differences between Type 1 and Type 2 symptoms and management.',
    author: 'CareTag Editorial',
    timeAgo: '2h ago',
    readTime: '5 min read',
    imageUrl:
        'https://images.unsplash.com/photo-1578496479914-7ef3b0193be3?w=800&auto=format&fit=crop',
  ),
  const NewsArticle(
    id: 'da3',
    category: 'CARDIOLOGY',
    title: 'Heart Health Essentials',
    subtitle:
        '5 common warning signs of hypertension you should not ignore.',
    author: 'CareTag Editorial',
    timeAgo: '5h ago',
    readTime: '5 min read',
    imageUrl:
        'https://images.unsplash.com/photo-1505751172876-fa1923c5c528?w=800&auto=format&fit=crop',
  ),
  const NewsArticle(
    id: 'da4',
    category: 'SEASONAL',
    title: 'Allergy Prep Guide',
    subtitle: 'How to effectively prepare for the upcoming spring pollen season.',
    author: 'CareTag Editorial',
    timeAgo: '8h ago',
    readTime: '4 min read',
    imageUrl:
        'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&auto=format&fit=crop',
  ),
  const NewsArticle(
    id: 'da5',
    category: 'CLINICAL TRIALS',
    title: 'New Alzheimer\'s Study',
    subtitle: 'Promising results from phase 3 clinical trials.',
    author: 'Journal of Clinical Neurology',
    timeAgo: '2h ago',
    readTime: '3 min read',
    imageUrl:
        'https://images.unsplash.com/photo-1576319155264-99536e0be1ee?w=800&auto=format&fit=crop',
  ),
  const NewsArticle(
    id: 'da6',
    category: 'BREAKTHROUGH',
    title: 'Gene Therapy Update',
    subtitle: 'FDA approves new treatment for sickle cell.',
    author: 'CareTag Research',
    timeAgo: '1d ago',
    readTime: '5 min read',
    imageUrl:
        'https://images.unsplash.com/photo-1530026405186-ed1f139313f8?w=800&auto=format&fit=crop',
  ),
  const NewsArticle(
    id: 'da7',
    category: 'SELF-SCREENING',
    title: 'Skin Mole Check',
    subtitle: 'ABCDE method',
    author: 'CareTag Editorial',
    timeAgo: '3d ago',
    readTime: '3 min read',
    imageUrl:
        'https://images.unsplash.com/photo-1576091160550-2173dba999ef?w=800&auto=format&fit=crop',
  ),
  const NewsArticle(
    id: 'da8',
    category: 'SELF-SCREENING',
    title: 'Breast Self-Exam',
    subtitle: 'Monthly check',
    author: 'CareTag Editorial',
    timeAgo: '3d ago',
    readTime: '5 min read',
    imageUrl:
        'https://images.unsplash.com/photo-1631217868264-e5b90bb7e133?w=800&auto=format&fit=crop',
  ),
  const NewsArticle(
    id: 'da9',
    category: 'EXPERT INSIGHTS',
    title: 'Managing Chronic Pain',
    subtitle: 'Dr. Emily Chen explains new holistic approaches.',
    author: 'Dr. Emily Chen, MD',
    timeAgo: '1d ago',
    readTime: '4 min read',
    imageUrl:
        'https://images.unsplash.com/photo-1537274942065-eda9d00a6293?w=800&auto=format&fit=crop',
  ),
];

// Health Tips Tab Articles
final List<NewsArticle> healthTipsArticles = [
  const NewsArticle(
    id: 'ht1',
    category: 'NUTRITION',
    title: '7-Day High Protein Meal Plan',
    subtitle:
        'Boost your energy and build muscle with this dietitian-approved weekly guide tailored for...',
    author: 'CareTag Editorial',
    timeAgo: 'Just now',
    readTime: '5 min read',
    imageUrl:
        'https://images.unsplash.com/photo-1490645935967-10de6ba17061?w=800&auto=format&fit=crop',
    isFeatured: true,
  ),
  const NewsArticle(
    id: 'ht2',
    category: 'FITNESS',
    title: 'Home Cardio for Beginners',
    subtitle:
        'No equipment needed. Start your journey to better heart health toda...',
    author: 'Sarah Jenkins',
    timeAgo: '2 hours ago',
    readTime: '15 min',
    imageUrl:
        'https://images.unsplash.com/photo-1571019614242-c5c5dee9f50b?w=800&auto=format&fit=crop',
  ),
  const NewsArticle(
    id: 'ht3',
    category: 'DIET',
    title: 'Superfoods for Immunity',
    subtitle:
        'Incorporating ginger, turmeric, and citrus into your daily routine can...',
    author: 'Dr. Sarah Jensen',
    timeAgo: '5 hours ago',
    readTime: '5 min',
    imageUrl:
        'https://images.unsplash.com/photo-1490885578174-acda8905c2c6?w=800&auto=format&fit=crop',
  ),
  const NewsArticle(
    id: 'ht4',
    category: 'WELLNESS',
    title: 'The Role of Hydration in Weight Loss',
    subtitle:
        'Why drinking water before meals is a game changer for your...',
    author: 'Dr. Sarah Waters',
    timeAgo: '1 day ago',
    readTime: '5 min',
    imageUrl:
        'https://images.unsplash.com/photo-1548839140-29a749e1cf4d?w=800&auto=format&fit=crop',
  ),
  const NewsArticle(
    id: 'ht5',
    category: 'FITNESS',
    title: 'The Science of HIIT',
    subtitle:
        'Maximize your calorie burn in less time with High-Intensity Interval...',
    author: 'Dr. Marcus Thorne',
    timeAgo: '1 day ago',
    readTime: '6 min',
    imageUrl:
        'https://images.unsplash.com/photo-1476480862126-209bfaa8edc8?w=800&auto=format&fit=crop',
  ),
  const NewsArticle(
    id: 'ht6',
    category: 'DIET',
    title: 'Sugar Detox: Day 1',
    subtitle:
        'Understanding sugar withdrawal and how to replace empty calories...',
    author: 'CareTag Editorial',
    timeAgo: '2 days ago',
    readTime: '5 min',
    imageUrl:
        'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=800&auto=format&fit=crop',
  ),
];

// Alerts & Safety Tab Articles
final List<NewsArticle> alertsArticles = [
  const NewsArticle(
    id: 'as1',
    category: 'HIGH PRIORITY',
    title: 'Seasonal Flu Advisory',
    subtitle: 'Local health authorities report a 45% spike in influenza cases.',
    author: 'CareTag Health Alerts',
    timeAgo: '2h ago',
    readTime: '3 min read',
    imageUrl:
        'https://images.unsplash.com/photo-1584820927498-cfe5211fd8bf?w=800&auto=format&fit=crop',
    isFeatured: true,
  ),
  const NewsArticle(
    id: 'as2',
    category: 'URGENT RECALL',
    title: 'Product Recall: Histamine-Block Allergy Meds',
    subtitle:
        'Batch #4029-X contains potential contaminants. Do not consume. Return to pharmacy for full refund.',
    author: 'PharmaCare Inc.',
    timeAgo: '5h ago',
    readTime: '2 min read',
    imageUrl:
        'https://images.unsplash.com/photo-1584308666744-24d5c474f2ae?w=800&auto=format&fit=crop',
  ),
  const NewsArticle(
    id: 'as3',
    category: 'FOOD SAFETY',
    title: 'Romaine Lettuce Alert',
    subtitle:
        'Multi-state salmonella outbreak linked to specific distributors.',
    author: 'FDA Food Safety',
    timeAgo: '2h ago',
    readTime: '4 min read',
    imageUrl:
        'https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&auto=format&fit=crop',
  ),
  const NewsArticle(
    id: 'as4',
    category: 'PROTOCOL UPDATE',
    title: 'New Vaccination Protocols for Adults (Age 50+)',
    subtitle:
        'CDC has updated guidelines regarding shingles and pneumonia vaccines.',
    author: 'Dr. Sarah Jenks',
    timeAgo: '3h ago',
    readTime: '5 min read',
    imageUrl:
        'https://images.unsplash.com/photo-1559757148-5c350d0d3c56?w=800&auto=format&fit=crop',
  ),
  const NewsArticle(
    id: 'as5',
    category: 'FIRST AID',
    title: 'First Aid: Handling Heatstroke',
    subtitle:
        'Heatstroke is a life-threatening emergency. Take immediate action.',
    author: 'CareTag First Aid',
    timeAgo: '2m ago',
    readTime: '3 min read',
    imageUrl:
        'https://images.unsplash.com/photo-1530026405186-ed1f139313f8?w=800&auto=format&fit=crop',
  ),
  const NewsArticle(
    id: 'as6',
    category: 'HOME SAFETY',
    title: 'Home Safety: Winter Fire Prevention',
    subtitle:
        'Space heaters account for 43% of home heating fires. Stay safe this season.',
    author: 'CareTag Safety',
    timeAgo: '1d ago',
    readTime: '4 min read',
    imageUrl:
        'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=800&auto=format&fit=crop',
  ),
];
