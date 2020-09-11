//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by Yamamoto Miu on 2020/09/11.
//  Copyright © 2020 Yamamoto Miu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel : UILabel!
    @IBOutlet var dokoLabel : UILabel!
    @IBOutlet var dareLabel : UILabel!
    @IBOutlet var doshitaLabel : UILabel!
    
    let itsuArray:[String] = ["一年前","１週間","昨日","今日","さっき","１時間前"]
    let dokoArray:[String] = ["山の上で","アメリカで","学校で","クラスで","庭で","ジムで"]
    let dareArray:[String] = ["僕が","大統領が","先生が","友達が","おじいちゃんが","隣人が"]
    let doshitaArray:[String] = ["叫んだ","演説した","怒った","踊った","散歩した","筋トレした"]

    var index : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func change(){
        itsuLabel.text = itsuArray[index]
        dokoLabel.text = dokoArray[index]
        dareLabel.text = dareArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        index = index + 1
        if index >= 6 {
            index = 0
        }
    }
    @IBAction func random(){
        
        let itsuIndex = Int.random(in:0...5)
        let dokoIndex = Int.random(in:0...5)
        let dareIndex = Int.random(in:0...5)
        let doshitaIndex = Int.random(in:0...5)
        
        itsuLabel.text = itsuArray[itsuIndex]
        dokoLabel.text = dokoArray[dokoIndex]
        dareLabel.text = dareArray[dareIndex]
        doshitaLabel.text = doshitaArray[doshitaIndex]
    }
    @IBAction func reset(){
        itsuLabel.text = "---"
        dokoLabel.text = "---"
        dareLabel.text = "---"
        doshitaLabel.text = "---"
        
        index = 0
    }


}

