//
//  ThirdViewController.swift
//  delegateTest
//
//  Created by 橋本卓也 on 2018/03/15.
//  Copyright © 2018年 橋本卓也. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, TestProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    // プロトコルで設定しているメソッドの処理を記述する
    func testFunction() {
        // ログに出力
        print("デリゲートを使用してテストファンクション呼び出し")
    }

}
