import 'package:flutter/material.dart';

class StoryReviews extends StatefulWidget {
  final String title;
  const StoryReviews({Key? key, required this.title}) : super(key: key);

  @override
  _StoryReviewsState createState() => _StoryReviewsState();
}

class _StoryReviewsState extends State<StoryReviews> {
  double _rating = 0.0;
  List<bool> _starColors = [false, false, false, false, false];
  TextEditingController _reviewController = TextEditingController();

  void _saveRating() {
    print('Đã lưu đánh giá: $_rating');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Đã lưu đánh giá: $_rating Sao',
        ),
      ),
    );
  }

  void _updateStarColor(int index) {
    setState(() {
      for (int i = 0; i < _starColors.length; i++) {
        _starColors[i] = i <= index;
      }
      _rating = (index + 1).toDouble();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đánh giá truyện tranh'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.star,
                          color:
                          _starColors[index] ? Colors.amber : Colors.grey),
                      iconSize: 50.0,
                      onPressed: () {
                        _updateStarColor(index);
                      },
                    ),
                    Text(
                      (index + 1).toString(),
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                );
              }),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 25.0),
                  child: Image.network(
                    'https://danlebrero.com/images/boy-who-cried-wolf.jpg',
                    width: 400,
                    height: 200,
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                  top:
                  25.0), // You can adjust the value based on your preference
              child: Text(
                'Evaluate',
                style: TextStyle(fontSize: 28),
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _reviewController,
                decoration: InputDecoration(
                  labelText: 'Nhập đánh giá của bạn',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  iconSize: 50.0,
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                        icon: Transform.rotate(
                          angle: -0.8, // Góc xoay tùy ý
                          child: Icon(Icons.send),
                        ),
                        iconSize: 50.0,
                        onPressed: () {
                          _saveRating();
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}