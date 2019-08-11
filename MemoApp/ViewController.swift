//
//  ViewController.swift
//  MemoApp
//
//  Created by 坂口卓也 on 2019/08/10.
//  Copyright © 2019 坂口卓也. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate  {

    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // textViewがUITextViewDelegateを使えるようにします。
        textView.delegate = self
        
        // AppDelegateを参照する為の定数。
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        // AppDelegateに定義したlastTextを参照し、textViewに格納する。
        textView.text = appDelegate.lastText
    }
    
    // TextViewに何か入力されたら動作します。
    func textViewDidChange(_ textView: UITextView) {
        // AppDelegateを呼び出して変数に格納します。
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        // AppDelegateに記述した"lastText"に入力されている内容を格納します。
        appDelegate.lastText = textView.text
    }


}

