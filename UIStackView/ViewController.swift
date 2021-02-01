//
//  ViewController.swift
//  UIStackView
//
//  Created by くりすせいま on 2020/09/23.
//  Copyright © 2020 せいま. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //スタクビューのプロパティ宣言
    @IBOutlet weak var myStackView: UIStackView!
    
    let prefectures = ["北海道・札幌市","青森県・青森市","岩手県・盛岡市","宮城県・仙台市","秋田県・秋田市","山形県・山形市","埼玉県・さいたま市","千葉県・千葉市","東京都・新宿区","神奈川県・横浜市","大阪府・大阪市","京都府・京都市"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //左詰めに配置
        myStackView.alignment = .leading
        
        //縦並び時のサイズ調節
        myStackView.distribution = .fill
        
        //上下の間隔
        myStackView.spacing = 20
        
        //配列の個数分ラベルを作成する
        for num in prefectures {
            let myLabel = UILabel()
            //ラベルに値をセットする
            myLabel.text = num
            myStackView.addArrangedSubview(myLabel)
        }
    }
}

