import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../about/about_view.dart';
import '../genre/genre_view.dart';
import '../contact/contact_view.dart';
import 'home_controller.dart';

class HomeView extends StatelessWidget {
  final controller = Get.put(HomeController());

  HomeView({super.key});

  final List<Map<String, String>> books = [
    {
      'title': 'Flutter for Beginners',
      'author': 'John Doe',
      'image': 'https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c?w=400',
      'genre': 'Programming',
      'year': '2023',
      'rating': '4.5',
    },
    {
      'title': 'Dart Deep Dive',
      'author': 'Jane Smith',
      'image': 'https://images.unsplash.com/photo-1532012197267-da84d127e765?w=400',
      'genre': 'Programming',
      'year': '2022',
      'rating': '4.7',
    },
    {
      'title': 'Clean Code',
      'author': 'Robert C. Martin',
      'image': 'https://images.unsplash.com/photo-1589998059171-988d887df646?w=400',
      'genre': 'Software Engineering',
      'year': '2008',
      'rating': '4.8',
    },
    {
      'title': 'Design Patterns',
      'author': 'Gang of Four',
      'image': 'https://images.unsplash.com/photo-1516979187457-637abb4f9353?w=400',
      'genre': 'Software Design',
      'year': '1994',
      'rating': '4.6',
    },
    {
      'title': 'The Pragmatic Programmer',
      'author': 'Andrew Hunt',
      'image': 'https://images.unsplash.com/photo-1524995997946-a1c2e315a42f?w=400',
      'genre': 'Programming',
      'year': '1999',
      'rating': '4.9',
    },
    {
      'title': 'Refactoring',
      'author': 'Martin Fowler',
      'image': 'https://images.unsplash.com/photo-1512820790803-83ca734da794?w=400',
      'genre': 'Software Engineering',
      'year': '2018',
      'rating': '4.7',
    },
    {
      'title': 'JavaScript: The Good Parts',
      'author': 'Douglas Crockford',
      'image': 'https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c?w=400',
      'genre': 'Web Development',
      'year': '2008',
      'rating': '4.4',
    },
    {
      'title': 'You Don\'t Know JS',
      'author': 'Kyle Simpson',
      'image': 'https://images.unsplash.com/photo-1507842217343-583bb7270b66?w=400',
      'genre': 'JavaScript',
      'year': '2015',
      'rating': '4.8',
    },
    {
      'title': 'Introduction to Algorithms',
      'author': 'Thomas H. Cormen',
      'image': 'https://images.unsplash.com/photo-1509228468518-180dd4864904?w=400',
      'genre': 'Computer Science',
      'year': '2009',
      'rating': '4.9',
    },
    {
      'title': 'Head First Design Patterns',
      'author': 'Eric Freeman',
      'image': 'https://images.unsplash.com/photo-1497633762265-9d179a990aa6?w=400',
      'genre': 'Software Design',
      'year': '2004',
      'rating': '4.6',
    },
    {
      'title': 'Eloquent JavaScript',
      'author': 'Marijn Haverbeke',
      'image': 'https://images.unsplash.com/photo-1456513080510-7bf3a84b82f8?w=400',
      'genre': 'JavaScript',
      'year': '2018',
      'rating': '4.5',
    },
    {
      'title': 'Cracking the Coding Interview',
      'author': 'Gayle Laakmann McDowell',
      'image': 'https://images.unsplash.com/photo-1526628953301-3e589a6a8b74?w=400',
      'genre': 'Interview Prep',
      'year': '2015',
      'rating': '4.8',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '📚 Katalog Buku Digital',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            letterSpacing: 0.5,
          ),
        ),
        backgroundColor: Colors.deepPurple.shade400,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Implementasi search
            },
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {
              // Implementasi favorites
            },
          ),
        ],
      ),

      // Drawer Navigasi
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.deepPurple.shade700,
                      Colors.deepPurple.shade400,
                      Colors.purpleAccent.shade200,
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(
                        Icons.library_books,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Menu Navigasi',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Perpustakaan Digital',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              _buildDrawerItem(
                icon: Icons.home,
                title: 'Home',
                onTap: () => Get.back(),
              ),
              _buildDrawerItem(
                icon: Icons.category,
                title: 'Genre Buku',
                onTap: () => Get.to(() => GenreView()),
              ),
              _buildDrawerItem(
                icon: Icons.info_outline,
                title: 'Tentang Perpustakaan',
                onTap: () => Get.to(() => AboutView()),
              ),
              _buildDrawerItem(
                icon: Icons.contact_mail_outlined,
                title: 'Kontak',
                onTap: () => Get.to(() => ContactView()),
              ),
              const Divider(height: 32),
              _buildDrawerItem(
                icon: Icons.settings,
                title: 'Pengaturan',
                onTap: () {},
              ),
              _buildDrawerItem(
                icon: Icons.help_outline,
                title: 'Bantuan',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),

      // Body
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepPurple.shade400,
              Colors.grey.shade100,
            ],
            stops: const [0.0, 0.3],
          ),
        ),
        child: Column(
          children: [
            // Header Section
            Container(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Selamat Datang! 👋',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '${books.length} buku tersedia untuk Anda',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            // Books List
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: ListView.separated(
                  padding: const EdgeInsets.all(20),
                  itemCount: books.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 16),
                  itemBuilder: (context, index) {
                    final book = books[index];
                    return _buildBookCard(book);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.deepPurple.shade50,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          icon,
          color: Colors.deepPurple.shade400,
          size: 22,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: onTap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
    );
  }

  Widget _buildBookCard(Map<String, String> book) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.deepPurple.withOpacity(0.1),
            blurRadius: 15,
            offset: const Offset(0, 5),
            spreadRadius: 2,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () {
            Get.toNamed('/detail', arguments: book);
          },
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Book Cover Image
                Hero(
                  tag: 'book-${book['title']}',
                  child: Container(
                    width: 100,
                    height: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        book['image']!,
                        fit: BoxFit.cover,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Container(
                            color: Colors.grey.shade200,
                            child: Center(
                              child: CircularProgressIndicator(
                                color: Colors.deepPurple.shade400,
                                strokeWidth: 2,
                              ),
                            ),
                          );
                        },
                        errorBuilder: (context, error, stackTrace) =>
                            Container(
                          color: Colors.grey.shade200,
                          child: Icon(
                            Icons.book,
                            size: 50,
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                // Book Info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Genre Badge
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.shade50,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          book['genre']!,
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Colors.deepPurple.shade700,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      // Title
                      Text(
                        book['title']!,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                          height: 1.3,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 6),
                      // Author
                      Row(
                        children: [
                          Icon(
                            Icons.person_outline,
                            size: 16,
                            color: Colors.grey.shade600,
                          ),
                          const SizedBox(width: 4),
                          Expanded(
                            child: Text(
                              book['author']!,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade700,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      // Year
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today_outlined,
                            size: 16,
                            color: Colors.grey.shade600,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            book['year']!,
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      // Rating
                      Row(
                        children: [
                          ...List.generate(5, (index) {
                            final rating = double.parse(book['rating']!);
                            return Icon(
                              index < rating.floor()
                                  ? Icons.star
                                  : index < rating
                                      ? Icons.star_half
                                      : Icons.star_border,
                              size: 18,
                              color: Colors.amber.shade600,
                            );
                          }),
                          const SizedBox(width: 6),
                          Text(
                            book['rating']!,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Arrow Icon
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.shade50,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.deepPurple.shade400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}