//
//  StoreItemList.swift
//  StoreApp
//
//  Created by moon on 2018. 8. 13..
//  Copyright © 2018년 moon. All rights reserved.
//

import Foundation

protocol StoreItemsFetchable {
    func fetchStoreItemsFromAPI()
    func fetchSotreItemsFromFile()
    func completionHandler() -> (([StoreItem]) -> Void)
    var count: Int { get }
    subscript(index: Int) -> StoreItem { get }
}

class StoreItemList {
    
    static let customSerialQueue = DispatchQueue(label: "customSerial", qos: .utility)
    static let notificationInfoKey = "sectionInfo"
    
    private var storeItems: [StoreItem] = []
    private var listTitle: String
    private var listDescription: String
    private var foodCategory: FoodCategory
    
    init(_ foodCategory: FoodCategory) {
        listTitle = foodCategory.title
        listDescription = foodCategory.description
        self.foodCategory = foodCategory
    }

    subscript(index: Int) -> StoreItem {
        return storeItems[index]
    }
}

extension StoreItemList: LabelTextSettable {
    var title: String {
        return listTitle
    }
    
    var description: String {
        return listDescription
    }
}

extension StoreItemList: StoreItemsFetchable {
    
    var count: Int {
        return storeItems.count
    }
    
    func fetchStoreItemsFromAPI() {
        DataManager.fetchStoreItemsFromStoreAPI(foodCategory, completionHandler: self.completionHandler())
    }
    
    func fetchSotreItemsFromFile() {
        DataManager.readStoreItemsFromFile(foodCategory, completionHandler: self.completionHandler())
    }
    
    func completionHandler() -> (([StoreItem]) -> Void) {
        return { [unowned self] storeItems in
            StoreItemList.customSerialQueue.async {
                self.storeItems = storeItems
                NotificationCenter.default.post(name: .didStoreItemsSet, object: self, userInfo: [StoreItemList.notificationInfoKey:self.foodCategory])
            }
        }
    }
}
