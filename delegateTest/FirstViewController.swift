//
//  ViewController.swift
//  delegateTest
//
//  Created by 橋本卓也 on 2018/03/12.
//  Copyright © 2018年 橋本卓也. All rights reserved.
//

import UIKit

// 画面1 TestProtocolを使用する事を宣言
class FirstViewController: UIViewController, TestProtocol {
    

    @IBOutlet weak var button: UIButton!
    
    // VIewcontrollerの処理をかいていく
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // ボタンの処理

    // 画面を開くボタンを押したときの処理
    @IBAction func touchBtn(_ sender: Any) {
        
        // 画面２を開くための下準備
        let storyboard: UIStoryboard = self.storyboard!
        let nextView = storyboard.instantiateViewController(withIdentifier: "Second") as! SecondViewController
        
        // 変数delegateにTestProtocolの使用をしているインスタンスのselfを設定(自ViewController)
        nextView.delegate = self
        // 画面２を開く
        present(nextView, animated: true, completion: nil)
        
    }
    
    // プロトコル系の処理
    
    // プロトコルで設定しているメソッドの処理を記述する
    func testFunction() {
        // ログに出力
        print("デリゲートを使用してテストファンクション呼び出し")
    }
    
}

