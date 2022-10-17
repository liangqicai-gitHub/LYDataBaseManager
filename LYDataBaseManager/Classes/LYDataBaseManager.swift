//
//  LYDataBaseManager.swift
//  LYAppKit
//
//  Created by 孙宁宁 on 2022/9/21.
//


import RealmSwift

public struct LYDataBaseManager {
    
    private static let baseRoot = URL(fileURLWithPath:NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!)
    // fileURL不能是位于之前没有创建的目录里面，不然要crash
    private static func realmPath(with dataBaseName: String) -> URL {
        let name = dataBaseName.hasSuffix(".realm") ? dataBaseName : (dataBaseName + ".realm")
        return baseRoot.appendingPathComponent("ly_LYDataBaseManager_prefix_data_base_" + name)
    }

    // 按照Realm的规范应该每次都新建一个Realm()
    // 这个config 建议包含 url，schemaVersion，migrationBlock
    public static func db(config: Realm.Configuration) -> Realm { return try! Realm(configuration: config) }
}


extension LYDataBaseManager {
    
    /// 一个keyValue 数据库，由 LYDataBaseManager 负责维护，你们可以往里面存东西，应为足够简单，所以我不会改
    /// 该数据库中 只有一张表：LYKeyValueTableModel
    ///
    /// 写这个数据库，主要是为了给出一个示例，就是你相当于自己的数据库时，应该怎么去写
    ///
    /// 按照Realm的规范应该每次都新建一个Realm()
    /// 这个config 建议包含 url，schemaVersion，migrationBlock
    /// 外部自己定义的Realm, 也可以参考这个写法
    public static var ly_keyValueDB: Realm {
        let config = Realm.Configuration(
                fileURL: realmPath(with: "keyValueDB.realm"),
                schemaVersion: 1, migrationBlock: { migration, oldSchemaVersion in
                    // 如果有合并字段，字段改名等复杂更新，可以在这里处理。简单地加减字段只需要改上面的schemaVersion
                }
        )
        return try! Realm(configuration: config)
    }
    
}


extension Array where Element: Object {
    public func ly_insertToDB(db: Realm) {
        try? db.write({
            db.add(self,update: .all)
        })
    }
}


extension Object {
    public func ly_insertToBD(db: Realm) {
        try? db.write({
            db.add(self, update: .all)
        })
    }
    
    public static func ly_getObjcFormDB(db: Realm, primarykey: String) -> Self? {
        return db.object(ofType: Self.self, forPrimaryKey: primarykey)
    }
}
