//
//  ViewController.swift
//  practicePickerView
//
//  Created by yuka on 2018/05/30.
//  Copyright © 2018年 yuka. All rights reserved.
//

import UIKit

class ViewController: UIViewController
    ,UIPickerViewDelegate
    ,UIPickerViewDataSource
{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return fruitsList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return fruitsList[row]
    }

    // 表示したいデータを作ります
    // 表示に必要なのはString型なので、String型の配列にする
    var fruitsList = ["いちご","メロン","みかん"]
    
    @IBOutlet weak var myPickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myPickerView.dataSource = self
        myPickerView.delegate = self
    }
    
    // 列と行を決める
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

