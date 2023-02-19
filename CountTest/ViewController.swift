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
        label.font = UIFont(name: "Arial", size: 90)
    }

    @IBAction func plus(){
        
        if number >= 40 {
            return
        }
        
        number += 1
        label.text = String(number)
        if number == 40 {
            label.textColor = UIColor.red
        }
        let str = String(number)
        
        // 画像を描画する
        let img01 = UIImageView(image: UIImage(named: "nabeatsu"))
        if number > 30 {
            img01.frame = CGRect(x: 30 * number - 880, y: 380, width: 454 / 10, height: 710 / 10)
        } else {
            img01.frame = CGRect(x: 10 * number + 10, y: 300, width: 454 / 10, height: 710 / 10)
        }
        self.view.addSubview(img01)
        
        if number % 3 == 0 && str.contains("3") {
            label.font = UIFont(name: "yamafont", size: 140)
            debugPrint("3の倍数かつ3を含んでいます")
            return
        } else if number % 3 == 0 {
            label.font = UIFont(name: "yamafont", size: 140)
            debugPrint("3の倍数")
        } else if str.contains("3") {
            label.font = UIFont(name: "yamafont", size: 140)
            debugPrint("3を含んでいます")
        } else {
            label.font = UIFont(name: "Arial", size: 90)
            debugPrint("その他の数字")
            img01.isHidden = true
        }
        
    }
    
    @IBAction func minus(){
        if number >= 40 {
            return
        }
        number -= 1
        label.text = String(number)
        let str = String(number)
        
        if number % 3 == 0 && str.contains("3") {
            label.font = UIFont(name: "yamafont", size: 140)
            debugPrint("3の倍数かつ3を含んでいます")
            return
        } else if number % 3 == 0 {
            label.font = UIFont(name: "yamafont", size: 140)
            debugPrint("3の倍数")
        } else if str.contains("3") {
            label.font = UIFont(name: "yamafont", size: 140)
            debugPrint("3を含んでいます")
        } else {
            label.font = UIFont(name: "Arial", size: 90)
            debugPrint("その他の数字")
        }
    }
}

