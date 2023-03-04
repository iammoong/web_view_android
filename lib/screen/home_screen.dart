import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  final homeUrl = 'https://blog.codefactory.ai';

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
            if(controller == null){
              return;
            }
            // 위에 nulll일 경우를 적어놓았지만 안드로이드 스튜디오는 인식을 못하기 때문에
            // 아래처럼 느낌표를 붙여서 선언해줘야한다.
            controller!.loadUrl(homeUrl);
          }, icon: Icon(
              Icons.home,
          )),
        ],
      ),
     body: WebView(
       //웹뷰가 생성이 되었을 떄 라는 의미
       onWebViewCreated: (WebViewController controller){
         this.controller = controller;
       },
       initialUrl: homeUrl,
       javascriptMode: JavascriptMode.unrestricted,
     ),
    );
  }
 }



