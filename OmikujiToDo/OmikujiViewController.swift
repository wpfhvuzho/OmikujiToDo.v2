//
//  ViewController.swift
//  Nabeatsu
//
//  Created by nagata on 2017/06/19.
//  Copyright © 2017年 Life is Tech!. All rights reserved.
//

import UIKit

let number = Int.random(in: 0..<365)
var unsei = 0
var taskCount = 0
var yesterdayUnsei = 0

class OmikujiViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var account1Label: UILabel!
    @IBOutlet var account2Label: UILabel!
    @IBOutlet var account3Label: UILabel!
    @IBOutlet var discoverResultButton: UIButton!
    @IBOutlet var upTodayUnsei: UIButton!


    
    let date = Date()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.isHidden = false
        account3Label.isHidden = false
        account2Label.isHidden = false
        account1Label.isHidden = false
        upTodayUnsei.isHidden = true
        
        
    }
    
    
    
    func isResult() -> Int {
        // 問題1: 3の倍数かどうか調べる
        if number < 2{
            return 0
        }else if number < 6{
            return 1
        }else if number < 18{
            return 2
        }else if number < 42{
            return 3
        }else if number < 94{
            return 4
        }else if number < 182{
            return 5
        }else if number < 270{
            return 6
        }else if number < 322{
            return 7
        }else if number < 346{
            return 8
        }else if number < 358{
            return 9
        }else if number < 362{
            return 10
        }else if number < 364{
            return 11
        }
        return 12
        

    }


    
    
    @IBAction func upResult() {
        if count == 0 {
            unsei = isResult()
             if unsei == 0 {
                 
                 resultLabel.text = "大凶"
                 account1Label.text = "戦え…"
                 account2Label.text = "貴様の運の悪さはこれ以上にないほど最悪だ…"
                 account3Label.text = "そのちっぽけな力で抗うって見せよ…"
             }else if unsei == 1 {
                 
                 resultLabel.text = "末凶"
                 account1Label.text = "三ヶ月に一回しかない悪い日だ"
                 account2Label.text = "いっそこのまま逃げてしまえばいいよ"
                 account3Label.text = "運が悪かっただけだ"
             }else if unsei == 2 {
                 
                 resultLabel.text = "半凶"
                 account1Label.text = "ワァオ！一ヶ月に一度の最悪の日だ！"
                 account2Label.text = "ヒカキンもカキンするレベルだ"
                 account3Label.text = "ストレス溜まること間違いなしだな"
             }else if unsei == 3 {
                 
                 resultLabel.text = "小凶"
                 account1Label.text = "なんだって！"
                 account2Label.text = "今日は半月に一度のブラックデーだ！"
                 account3Label.text = "悪い予感は全て当たるそ！"
             }else if unsei == 4 {
                 
                 resultLabel.text = "凶"
                 account1Label.text = "なんてこった！"
                 account2Label.text = "今日は週に一度来る悪い日だ！"
                 account3Label.text = "イライラするのはこのアプリのせいじゃないぞ！"
             }else if unsei == 5 {
                 
                 resultLabel.text = "末小吉"
                 account1Label.text = "普通だ！"
                 account2Label.text = "でも、普通でいることは難しい…"
                 account3Label.text = "ぜひ、足元に気をつけてくれ!"
             }else if unsei == 6 {
                 
                 resultLabel.text = "末吉"
                 account1Label.text = "普通よりちょっといい日だ！"
                 account2Label.text = "小さな幸せが見つかる1日！"
                 account3Label.text = "でも、今日は早く寝よう！"
             }else if unsei == 7 {
                 
                 resultLabel.text = "半吉"
                 account1Label.text = "週に一度のラッキー日！"
                 account2Label.text = "今週一番のいい日だ！"
                 account3Label.text = "笑顔のまま寝れて、いい夢見れる日！"
             }else if unsei == 8 {
                 
                 resultLabel.text = "吉"
                 account1Label.text = "半月に一回しかないレアな日！"
                 account2Label.text = "楽しい日はあと半分しかない"
                 account3Label.text = "楽しもう！"
             }else if unsei == 9 {
                 
                 resultLabel.text = "小吉"
                 account1Label.text = "一ヶ月に一回しかない激レアな日！"
                 account2Label.text = "これは小さな吉"
                 account3Label.text = "でも、幸せは大に生きよう！"
             }else if unsei == 10 {
                 
                 resultLabel.text = "中吉"
                 account1Label.text = "三ヶ月に一回しかない最高の日！"
                 account2Label.text = "今日を生きれる幸せを噛み締めよう！"
                 account3Label.text = "ラッキーアイテムは、あなた！"
             }else if unsei == 11 {
                 
                 resultLabel.text = "大吉"
                 account1Label.text = "半年に一回しかない運命の日！"
                 account2Label.text = "いいことしかないよ！"
                 account3Label.text = "いや、いいことにしよう！"
             }else if unsei == 12 {
                 
                 resultLabel.text = "超ウルトラスペシャルラッキーハピネス大吉！"
                 account1Label.text = "物凄い頑張りで、ついに来ちゃったね。"
                 account2Label.text = "こんな日は、人生で一度きりしかないかも知れない。"
                 account3Label.text = "でも、毎日そうなんだよ。君の頑張りに、乾杯！"
             }
            count = count + 1
        }else {
            if unsei == 0 {
                
                resultLabel.text = "大凶"
                account1Label.text = "戦え…"
                account2Label.text = "貴様の運の悪さはこれ以上にないほど最悪だ…"
                account3Label.text = "そのちっぽけな力で抗うって見せよ…"
            }else if unsei == 1 {
                
                resultLabel.text = "末凶"
                account1Label.text = "三ヶ月に一回しかない悪い日だ"
                account2Label.text = "いっそこのまま逃げてしまえばいいよ"
                account3Label.text = "運が悪かっただけだ"
            }else if unsei == 2 {
                
                resultLabel.text = "半凶"
                account1Label.text = "ワァオ！一ヶ月に一度の最悪の日だ！"
                account2Label.text = "ヒカキンもカキンするレベルだ"
                account3Label.text = "ストレス溜まること間違いなしだな"
            }else if unsei == 3 {
                
                resultLabel.text = "小凶"
                account1Label.text = "なんだって！"
                account2Label.text = "今日は半月に一度のブラックデーだ！"
                account3Label.text = "悪い予感は全て当たるそ！"
            }else if unsei == 4 {
                
                resultLabel.text = "凶"
                account1Label.text = "なんてこった！"
                account2Label.text = "今日は週に一度来る悪い日だ！"
                account3Label.text = "イライラするのはこのアプリのせいじゃないぞ！"
            }else if unsei == 5 {
                
                resultLabel.text = "末小吉"
                account1Label.text = "普通だ！"
                account2Label.text = "でも、普通でいることは難しい…"
                account3Label.text = "ぜひ、足元に気をつけてくれ!"
            }else if unsei == 6 {
                
                resultLabel.text = "末吉"
                account1Label.text = "普通よりちょっといい日だ！"
                account2Label.text = "小さな幸せが見つかる1日！"
                account3Label.text = "でも、今日は早く寝よう！"
            }else if unsei == 7 {
                
                resultLabel.text = "半吉"
                account1Label.text = "週に一度のラッキー日！"
                account2Label.text = "今週一番のいい日だ！"
                account3Label.text = "笑顔のまま寝れて、いい夢見れる日！"
            }else if unsei == 8 {
                
                resultLabel.text = "吉"
                account1Label.text = "半月に一回しかないレアな日！"
                account2Label.text = "楽しい日はあと半分しかない"
                account3Label.text = "楽しもう！"
            }else if unsei == 9 {
                
                resultLabel.text = "小吉"
                account1Label.text = "一ヶ月に一回しかない激レアな日！"
                account2Label.text = "これは小さな吉"
                account3Label.text = "でも、幸せは大に生きよう！"
            }else if unsei == 10 {
                
                resultLabel.text = "中吉"
                account1Label.text = "三ヶ月に一回しかない最高の日！"
                account2Label.text = "今日を生きれる幸せを噛み締めよう！"
                account3Label.text = "ラッキーアイテムは、あなた！"
            }else if unsei == 11 {
                
                resultLabel.text = "大吉"
                account1Label.text = "半年に一回しかない運命の日！"
                account2Label.text = "いいことしかないよ！"
                account3Label.text = "いや、いいことにしよう！"
            }else if unsei == 12 {
                
                resultLabel.text = "超ウルトラスペシャルラッキーハピネス大吉！"
                account1Label.text = "物凄い頑張りで、ついに来ちゃったね。"
                account2Label.text = "こんな日は、人生で一度きりしかないかも知れない。"
                account3Label.text = "でも、毎日そうなんだよ。君の頑張りに、乾杯！"
            }
        }
        discoverResultButton.isHidden = true
        upTodayUnsei.isHidden = false
        
        
        
    }
    
    @IBAction func upUnsei() {
        
        unsei = unsei + 1
        if unsei == 0 {
            
            resultLabel.text = "大凶"
            account1Label.text = "戦え…"
            account2Label.text = "貴様の運の悪さはこれ以上にないほど最悪だ…"
            account3Label.text = "そのちっぽけな力で抗うって見せよ…"
        }else if unsei == 1 {
            
            resultLabel.text = "末凶"
            account1Label.text = "三ヶ月に一回しかない悪い日だ"
            account2Label.text = "いっそこのまま逃げてしまえばいいよ"
            account3Label.text = "運が悪かっただけだ"
        }else if unsei == 2 {
            
            resultLabel.text = "半凶"
            account1Label.text = "ワァオ！一ヶ月に一度の最悪の日だ！"
            account2Label.text = "ヒカキンもカキンするレベルだ"
            account3Label.text = "ストレス溜まること間違いなしだな"
        }else if unsei == 3 {
            
            resultLabel.text = "小凶"
            account1Label.text = "なんだって！"
            account2Label.text = "今日は半月に一度のブラックデーだ！"
            account3Label.text = "悪い予感は全て当たるそ！"
        }else if unsei == 4 {
            
            resultLabel.text = "凶"
            account1Label.text = "なんてこった！"
            account2Label.text = "今日は週に一度来る悪い日だ！"
            account3Label.text = "イライラするのはこのアプリのせいじゃないぞ！"
        }else if unsei == 5 {
            
            resultLabel.text = "末小吉"
            account1Label.text = "普通だ！"
            account2Label.text = "でも、普通でいることは難しい…"
            account3Label.text = "ぜひ、足元に気をつけてくれ!"
        }else if unsei == 6 {
            
            resultLabel.text = "末吉"
            account1Label.text = "普通よりちょっといい日だ！"
            account2Label.text = "小さな幸せが見つかる1日！"
            account3Label.text = "でも、今日は早く寝よう！"
        }else if unsei == 7 {
            
            resultLabel.text = "半吉"
            account1Label.text = "週に一度のラッキー日！"
            account2Label.text = "今週一番のいい日だ！"
            account3Label.text = "笑顔のまま寝れて、いい夢見れる日！"
        }else if unsei == 8 {
            
            resultLabel.text = "吉"
            account1Label.text = "半月に一回しかないレアな日！"
            account2Label.text = "楽しい日はあと半分しかない"
            account3Label.text = "楽しもう！"
        }else if unsei == 9 {
            
            resultLabel.text = "小吉"
            account1Label.text = "一ヶ月に一回しかない激レアな日！"
            account2Label.text = "これは小さな吉"
            account3Label.text = "でも、幸せは大に生きよう！"
        }else if unsei == 10 {
            
            resultLabel.text = "中吉"
            account1Label.text = "三ヶ月に一回しかない最高の日！"
            account2Label.text = "今日を生きれる幸せを噛み締めよう！"
            account3Label.text = "ラッキーアイテムは、あなた！"
        }else if unsei == 11 {
            
            resultLabel.text = "大吉"
            account1Label.text = "半年に一回しかない運命の日！"
            account2Label.text = "いいことしかないよ！"
            account3Label.text = "いや、いいことにしよう！"
        }else if unsei == 12 {
            
            resultLabel.text = "超ウルトラスペシャルラッキーハピネス大吉！"
            account1Label.text = "物凄い頑張りで、ついに来ちゃったね。"
            account2Label.text = "こんな日は、人生で一度きりしかないかも知れない。"
            account3Label.text = "でも、毎日そうなんだよ。君の頑張りに、乾杯！"
        }
    }
    

}

