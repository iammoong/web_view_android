import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse('https://blog.codefactory.ai');

class HomeScreen extends StatelessWidget {
  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..loadRequest(homeUrl);


  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Code Factory'),
        centerTitle: true,
        backgroundColor: Colors.orange,
        actions: [
          IconButton(onPressed: (){
            // http://
            // https://

            // 위에 nulll일 경우를 적어놓았지만 안드로이드 스튜디오는 인식을 못하기 때문에
            // 아래처럼 느낌표를 붙여서 선언해줘야한다.
            controller.loadRequest(homeUrl);
          }, icon: Icon(
              Icons.home,
          )),
        ],
      ),
     body: WebViewWidget(
    controller: controller,
     ),
//웹뷰가 생성이 되었을 떄 라는 의미
    //   onWebViewCreated: (WebViewController controller){
    //     this.controller = controller;
    //   },
    //   initialUrl: homeUrl,
    //   javascriptMode: JavascriptMode.unrestricted,
    // ),
     //
    );
  }
 }



