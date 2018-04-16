//
//  ViewController.swift
//  Nabeatsu
//
//  Created by nagata on 2017/06/19.
//  Copyright © 2017年 Life is Tech!. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var faceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func isAho() -> Bool {
        
        var check: Int = number
        while check != 0 {
            if check % 10 == 3 {
                return true
            } else {
                check = check / 10
            }
        }
        // 問題1: 3の倍数かどうか調べる
        
        
        // 問題2: 1の位が3かどうか調べる
        
        // 問題3: 10の位が3かどうか調べる
        
        // 問題4: 3がつくかどうか調べる
        
        // 問題4をやるときは問題3と問題2の答えを消してから書こう
        if number % 3 == 0 {
            return true
        }
        else {
            return false
        }
    }
    @IBAction func plusButton(){
        number = number + 1
        countLabel.text = String(number)
        
        if isAho() == true {
            
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
        } else {
            
            faceLabel.text = "(゜o゜)"
        }
    }
    @IBAction func clear(){
        number = 0
    }


}

