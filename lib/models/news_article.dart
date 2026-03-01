class NewsArticle {
  final String id;
  final String category;
  final String title;
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
