//
//  YellowViewController.swift
//  TabBarConNavConWhithCode
//
//  Created by Артем on 1/8/19.
//  Copyright © 2019 Артем. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        self.navigationItem.title = "yellow"
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Black VC", style: .done, target: nil, action: #selector (performDisplayBlackVC(parametrSender:)))
    }
    
    @objc func performDisplayBlackVC (parametrSender: Any) {
        //let blackVC = BlackViewController()
        self.navigationController?.pushViewController(BlackViewController(), animated: true)
        print("blackVC")
    }
}
