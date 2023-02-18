//
//  ViewController.swift
//  CountTest
//
//  Created by まちだこうたろう on 2023/02/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    var number : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // フォントを定義する
        label.font = UIFont(name: "yamafont", size: 90)
    }

    @IBAction func plus(){
        number += 1
        label.text = String(number)
        let str = String(number)
        
        
        if number % 3 == 0 && str.contains("3") {
            debugPrint("3の倍数かつ3を含んでいます")
            return
        } else if number % 3 == 0 {
            debugPrint("3の倍数")
        } else if str.contains("3") {
            debugPrint("3を含んでいます")
        } else if number == 40 {
            debugPrint("終了")
        }
    }
    
    @IBAction func minus(){
        number -= 1
        label.text = String(number)
    }
}

