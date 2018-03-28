//
//  ViewController.swift
//  Swift中tableView的使用
//
//  Created by William on 2018/3/28.
//  Copyright © 2018年 William. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    lazy var tableView : UITableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.frame = CGRect.init(x: 0, y: 0, width: view.frame.size.width, height: self.view.frame.size.height)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        view.addSubview(tableView)
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "CELLID"
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: identifier)
        }
        cell?.textLabel?.text = "测试数据\(indexPath.row)"
        
        return cell!
    }


}

