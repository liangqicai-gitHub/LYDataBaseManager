//
//  ViewController.swift
//  LYDataBaseManager
//
//  Created by Sunny on 09/27/2022.
//  Copyright (c) 2022 Sunny. All rights reserved.
//

import UIKit
import LYDataBaseManager

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let s = LYKeyValueTableModel(key: "www", value: "sssssss")
        s.ly_insertToBD(db: LYDataBaseManager.ly_keyValueTable)
        
//        let rs = LYKeyValueTableModel.ly_getObjcFormDB(db: LYDataBaseManager.ly_keyValueTable, primarykey: "www")
//        print("this is fucking \(rs.va)")
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

