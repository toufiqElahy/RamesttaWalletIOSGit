// Copyright SIX DAY LLC. All rights reserved.

import Foundation
@testable import AlphaWallet
import RealmSwift

class FakeTransactionsStorage: TransactionsStorage {
    convenience init() {
        let realm = try! Realm(configuration: Realm.Configuration(inMemoryIdentifier: "MyInMemoryRealm"))
        self.init(realm: realm, server: .main, delegate: nil)
    }
}
