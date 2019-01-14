//
//  NavViewController.swift
//  TabBarConNavConWhithCode
//
//  Created by Артем on 1/8/19.
//  Copyright © 2019 Артем. All rights reserved.
//

import UIKit

class OrangeNavViewController: UINavigationController {
    
    var button = UIButton()
       
    
//    let item = UIBarButtonItem(title: "yellow VC", style: .done, target: self, action: #selector (performDisplayYellowVC(parametrSender:)))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .orange
        
        
        self.button = UIButton(type: .system)
        self.button.setTitle("Move Yellow VC", for: .normal)
        self.button.sizeToFit()
        self.button.center = view.center
        self.button.addTarget(self, action: #selector (performDisplayYellowVC(parametrSender:)), for: .touchUpInside)
        self.button.backgroundColor = .yellow
        self.view.addSubview(button)
//
//        self.navigationItem.title = "test"
//
//
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Black", style: .done, target: nil, action: #selector (performDisplayYellowVC(parametrSender:)))
        }
    
    
    @objc func performDisplayYellowVC (parametrSender: Any) {
        let yellowVC = YellowViewController()
        self.navigationController?.pushViewController(yellowVC, animated: true)
    }

}
