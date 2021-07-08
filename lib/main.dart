import 'package:flutter/material.dart';
import 'package:video_app/video_detail_page.dart';

void main() {
  runApp(MyApp());
}

final items = List<String>.generate(10000, (i) => "Item $i");

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(
            Icons.video_call_rounded,
          ),
          title: const Text('Youtubeアプリ'),
          actions: <Widget>[
            SizedBox(
              width: 44,
              child: TextButton(
                child: Icon(Icons.search),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 44,
              child: TextButton(
                child: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.network(
                        'https://pbs.twimg.com/profile_images/1410098995704201220/r8EKY94s_400x400.jpg',
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      children: [
                        const Text(
                          'まさひろチャンネル',
                        ),
                        TextButton(
                          child: Row(
                            children: [
                              Icon(
                                Icons.video_call,
                                color: Colors.red,
                              ),
                              Text('登録する'),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () async {
                        // TODO: 画面遷移
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoDetailPage(),
                          ),
                        );
                      },
                      contentPadding: EdgeInsets.all(8),
                      leading: Image.network(
                        'https://pbs.twimg.com/profile_images/1410098995704201220/r8EKY94s_400x400.jpg',
                      ),
                      title: Column(
                        children: [
                          Text(
                            'リストを作る方法',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '27回再生',
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                '5日前',
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
