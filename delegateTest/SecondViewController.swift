//
//  SecondViewController.swift
//  delegateTest
//
//  Created by 橋本卓也 on 2018/03/15.
//  Copyright © 2018年 橋本卓也. All rights reserved.
//

import UIKit

// 画面2
class SecondViewController: UIViewController {
    
    // TestProtocolを設定しているインスタンスを格納する変数
    var delegate:TestProtocol? = nil
    
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
    
    // 画面を閉じるボタンを押したときの処理
    @IBAction func BtnAction(_ sender: Any) {
        
        // 画面1で設定したtestFunctionを呼び出す
        delegate?.testFunction()
        
        // 画面を閉じる
        self.dismiss(animated: true, completion: nil)
    }
    
}
