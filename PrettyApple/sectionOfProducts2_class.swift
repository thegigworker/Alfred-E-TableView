//
//  sectionOfProducts_class.swift
//  TableViewDemo
//
//  Created by Duc Tran on 3/22/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//

import Foundation

class sectionOfProducts2_class {
    
    var sectionName: String            // name of the product line
    var oneSectionProductsArray: [ShepSingleXYZ]     // all products in the line
    
    init(named: String, includeProducts: [ShepSingleXYZ]) {
        sectionName = named
       oneSectionProductsArray = includeProducts
    }
    
    class func getAllTheSections() -> [sectionOfProducts2_class] {
        let MYtempSingleArray_class = tempSingleArray_class()
        let tempProductsArray = MYtempSingleArray_class.buildSingleArray()
        
        let sortedTempProductsArray = tempProductsArray.sorted(by: { $0.title < $1.title })
        
        return [sectionOfProducts2_class(named: "myTempCategory", includeProducts: sortedTempProductsArray)]
       // return [self.iDevices(), self.iPod(), self.mac(), self.software()]
    }

    
}

//    // Private methods
//    
//    private class func iDevices() -> sectionOfProducts2_class {
//        var tempProductsArray = [ShepSingleXYZ]()
//        
//        tempProductsArray.append(ShepSingleXYZ(titled: "Tamler Watch", description: "Featuring revolutionary new Tamler technologies.", imageName: "alfred_e 1024", jobType: "Park", foodType: "pizza", distance: 12.3, dollar: 12.4))
//        tempProductsArray.append(ShepSingleXYZ(titled: "iPad", description: "iPad Air 2 is the thinnest and most powerful iPad ever. With iPad, we’ve always had a somewhat paradoxical goal: to create a device that’s immensely powerful, yet so thin and light you almost forget it’s there.", imageName: "ipad-air2", jobType: "Target", foodType: "rasberry", distance: 32.43, dollar: 23.34))
//        tempProductsArray.append(ShepSingleXYZ(titled: "iPhone", description: "The biggest advancements in iPhone history, featuring two models with stunning 4.7-inch and 5.5-inch Retina HD displays.", imageName: "iphone6", jobType: "McDonalds", foodType: "ice cream", distance: 06.444, dollar: 19))
//  
//        return sectionOfProducts2_class(named: "iDevices", includeProducts: tempProductsArray)
//    }
//    
//    
//    private class func mac() -> sectionOfProducts2_class {
//        var tempProductsArray = [ShepSingleXYZ]()
//        
//        tempProductsArray.append(ShepSingleXYZ(titled: "Tamler Mac", description: "Featuring revolutionary new Tamler Macintosh technologies.", imageName: "alfred_e 1024", jobType: "Park", foodType: "pizza", distance: 67.0, dollar: 43.9))
//        tempProductsArray.append(ShepSingleXYZ(titled: "MacBook", description: "The thinnest and lightest Mac ever with every component meticulously redesigned to create a Mac that is just two pounds and 13.1 mm thin. ", imageName: "macbook", jobType: "gas station", foodType: "pretzel", distance: 33.99, dollar: 21.09))
//        tempProductsArray.append(ShepSingleXYZ(titled: "MacBook Pro with Retina Display", description: "A stunning high-resolution display, an amazing thin and light design, and the latest technology to power through the most demanding projects.", imageName: "macbook-pro-retina", jobType: "Pub", foodType: "pretzel", distance: 11.0, dollar: 96))
//        tempProductsArray.append(ShepSingleXYZ(titled: "MacBook Air", description: "All day battery life, fourth generation Intel Core processors with faster graphics, 802.11ac Wi-Fi and flash storage that is up to 45 percent faster than the previous generation.", imageName: "macbook-air", jobType: "Park", foodType: "rasberry", distance: 94, dollar: 93))
//        tempProductsArray.append(ShepSingleXYZ(titled: "iMac", description: "The 27-inch iMac with Retina 5K display features a breathtaking 14.7 million pixel display so text appears sharper than ever, videos are unbelievably lifelike.", imageName: "imac-5k", jobType: "Pub", foodType: "pretzel", distance: 92, dollar: 91))
//        tempProductsArray.append(ShepSingleXYZ(titled: "Mac Pro", description: "Designed around a revolutionary unified thermal core, the Mac Pro introduces a completely new pro desktop architecture and design that is optimized for performance inside and out.", imageName: "mac-pro", jobType: "Park", foodType: "ice cream", distance: 87, dollar: 86))
//        tempProductsArray.append(ShepSingleXYZ(titled: "Mac Mini", description: "With its sleek aluminum design, a removable bottom panel for easy access to memory, and a space-saving built-in power supply, Mac mini is pretty incredible.", imageName: "mac-mini", jobType: "Target", foodType: "pizza", distance: 85, dollar: 84))
// 
//        return sectionOfProducts2_class(named: "Mac", includeProducts: tempProductsArray)
//    }
//    








/*  SOME STACKOVERFLOW TALK RE SINGLE NESTED/SECTIONED ARRAY FOR TABLEVIEW
 //It is batter if you create single Array of struct or custom class that will reduce all your array to a single array.
 // ... suggest creating a Section object that contains a sectionTitle String and a sectionEntries Array. Then make the table view data an array of Section objects.
 
 struct Category {
 let name : String
 var items : [[String:Any]]
 }
 
 var BigKahunaSectionedArray = [Category]()
 
 let itemsA = [["Item": "item A","ItemId" : "1"],["Item": "item B","ItemId" : "2"],["Item": "item C","ItemId" : "3"]]
 let itemsB = [["Item": "item A","ItemId" : "1"],["Item": "item B","ItemId" : "2"],["Item": "item C","ItemId" : "3"]]
 let itemsC = [["Item": "item A","ItemId" : "1"],["Item": "item B","ItemId" : "2"],["Item": "item C","ItemId" : "3"]]
 
 sections = [Category(name:"A", items:itemsA), Category(name:"B", items:itemsB), Category(name:"C", items:itemsC)]
 */















