# iPhone ／ iPad 端末の回転制御

## 概要
- iPad ／ iPhone 端末毎、画面毎に横回転の制御を行う方法
  - 回転可否
  - 回転後の処理

## 仕様
- UI
  - iPhone: 基本的には縦表示のみ可能、一部のみ横表示可能（図１）
  - iPad: 基本的には縦表示、横表示可能
  
![UI](README_Image/rotation_ui.png)  
<div style="text-align: center">図１：UI構成</div>

## 開発環境
- Xcode 12.5.1 （12E507）
- Swift 5.0
- CocoaPods 1.9.3
- 開発ターゲット： iOS 13.0

## 参考
- [AppRootControllerのご提案（簡略説明版）](https://speakerdeck.com/yimajo/approotcontrollerfalsegoti-an-jian-lue-shuo-ming-ban?slide=4)
- [Creating a Custom Container View Controller - Apple Document](https://developer.apple.com/documentation/uikit/view_controllers/creating_a_custom_container_view_controller)
- [UIViewController / Handling View Rotations - Apple Document](https://developer.apple.com/documentation/uikit/uiviewcontroller?language=objc)