//
//  ViewController.swift
//  sampleTextView
//
//  Created by AI Matsubara on 2016/04/28.
//  Copyright © 2016年 AI Matsubara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //textviewの名前
    @IBOutlet weak var myTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        //プロパティの変更をプログラムで変更
        myTextView.text = "こんにちは"
        //この.textとゆうのは型指定とゆう意味ではなく、あらかじめ指定されているボタンのプロパティに準ずるもの
        //こんにちはをmyTextViewプロパティに代入
        //右横のツールバーからも変更できる
        //どちらから変更しても内容は一緒
        
        
        //文字色の変更
        myTextView.textColor = UIColor.blueColor()
        //UIcolorとゆうオブジェクトをtextColorに代入してあげる
        //UIColor.blueColor()←このかっこは青を呼び出しますよの意味らしい（オブジェクト）
        
        
        //フォント指定
        myTextView.font = UIFont(name: "AmericanTypewriter", size: 20)
        
        
        //文字寄せ位置を中央寄せに変更
        myTextView.textAlignment = NSTextAlignment.Center
        
        
        //TODO:Helloを10回表示する
        for var i=1; i <= 10; i++ {
            myTextView.text = myTextView.text + "Hello"
            //Hello,World!のうしろにHelloが1つづつ１０回分加算されていく書き方
        }
        
        //TODO:こんにちはn (改行)　で10個のメッセージを表示する nには数字が入る
        // \r で改行の意味
//        for var n=1; n <= 10; n++ {
//            myTextView.text = myTextView.text + "こんにちは\(n)\r"
//        }
//    
        
        //エラーが取れないときは、コマンドシフトKでエラー更新できる
        
        var n = 1
        while n < 10{
            myTextView.text = myTextView.text + "こんにちは\(n)\r"
            n++
        }
    
        
    }

    @IBAction func tapClose(sender: UIButton) {
        
        //キーボードを閉じる処理
        myTextView.resignFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

