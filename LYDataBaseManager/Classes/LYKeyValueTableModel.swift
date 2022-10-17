//
//  LYKeyValueTableModel.swift
//  LYAppKit
//
//  Created by 孙宁宁 on 2022/9/21.
//

import RealmSwift

public class LYKeyValueTableModel: Object {
    
    @Persisted(primaryKey: true) public var key = ""
    @Persisted public var `value` = ""
    
    public convenience init(key: String, value: String) {
        self.init()
        self.key = key
        self.value = value
    }
}
