import 'package:flutter/material.dart';
import '../Chapter/chapter.dart';
import '../Chapter/phanhoi.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen(String, {Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isFavorite = false;

  void _toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });

    if (isFavorite) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Đã thêm vào truyện yêu thích'),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Đã bỏ khỏi truyện yêu thích'),
        ),
      );
    }
  }

  void _readComic(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ChapterScreen()),
    );
  }

  void _navigateToReviewScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StoryReviews(
          title: '',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/Bia.png',
                height: 410,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'THE ETERNAL SUPREME',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: _toggleFavorite,
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: Colors.red,
                      size: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Text(
                'Tác giả: Eiichiro Oda',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 8),
              const Text(
                'Mô tả: Monkey D. Luffy và đồng đội của mình trên hành trình tìm kiếm kho báu.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 8),
              const Text(
                'Thể loại: Hành động, Phiêu lưu, Hài hước',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Text(
                    'Lượt xem: ',
                    style: TextStyle(fontSize: 18),
                  ),
                  GestureDetector(
                    onTap: () => _navigateToReviewScreen(context),
                    child: const Row(
                      children: [
                        Text(
                          '14764322',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Đánh giá',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () => _readComic(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: const Text(
                      'Đọc truyện',
                      style: TextStyle(color: Colors.black),
                    ),
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
