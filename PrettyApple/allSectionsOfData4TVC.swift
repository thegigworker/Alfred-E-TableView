//
//  sectionOfProducts_class.swift
//  TableViewDemo
//
//  Created by Duc Tran on 3/22/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//

import Foundation

struct allSectionsOfData4TVC {
    
    var sectionName: String            // name of the product line
    var oneSectionOfData : [ShepSingleXYZ]
    
    init(named: String, includeItems: [ShepSingleXYZ]) {
        sectionName = named
        oneSectionOfData = includeItems
    }
    
    static func getAllTheSections() -> [allSectionsOfData4TVC] {
        var currentSectionName = ""
        var loopCount = 0
        var myBigKahunaSectionedArray = [allSectionsOfData4TVC]()
        var oneSectionOfData2 = [ShepSingleXYZ]()
        let MYtempSingleArray = tempSingleArray_class.buildSingleTableArray()
        
        //let sortedTempProductsArray = MYtempSingleArray.sorted(by: { $0.title < $1.title })
        //let sortedTempProductsArray = MYtempSingleArray.sorted(by: { $0.dollar > $1.dollar })
        //let sortedTempSingleArray = MYtempSingleArray.sorted(by: { $0.jobType < $1.jobType })
        //let sortedTempSingleArray = MYtempSingleArray.sorted(by: { $0.foodType < $1.foodType })
        let sortedTempSingleArray = MYtempSingleArray.sorted(by: { $0.distance < $1.distance })
        
        for item in sortedTempSingleArray {
            //tempShepSingleXYZ = item
            loopCount += 1
            // "continue" to move loop to next iteration/item
            // "break" to exit the loop statement
            if currentSectionName == "" {
                // first item through
                //currentSectionName = item.foodType
                currentSectionName = item.jobType
                oneSectionOfData2.append(item)
               // print ("first item through")
            } else { // not first time through
                //if item.foodType == currentSectionName {
                if item.jobType == currentSectionName {
                    oneSectionOfData2.append(item)
                } else {
                    // is new category/section
                    // so append to myBigKahunaSectionedArray and start clean oneSectionOfData
                    //SORT ONE SECTION AT A TIME -- if needed???
                    
                    myBigKahunaSectionedArray.append (allSectionsOfData4TVC(named: currentSectionName, includeItems: oneSectionOfData2))
                    oneSectionOfData2.removeAll()
                    //currentSectionName = item.foodType
                    currentSectionName = item.jobType
                    oneSectionOfData2.append(item)
                }
            }
            if loopCount == sortedTempSingleArray.count {   // last iteration
                //SORT ONE SECTION AT A TIME -- if needed???
                myBigKahunaSectionedArray.append (allSectionsOfData4TVC(named: currentSectionName, includeItems: oneSectionOfData2))
                //print ("last iteration")
            }
            //print ("section name is: \(currentSectionName)")
        }
        
        return myBigKahunaSectionedArray
    }
}



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



    // var  tempShepSingleXYZ: ShepSingleXYZ(titled: <#String#>, description: <#String#>, imageName: <#String#>, jobType: <#String#>, foodType: <#String#>, distance: <#Double#>, dollar: <#Double#>)



//        private class func makeOneSection() -> sectionsOfData4TVC {
//            var tempProductsArray = [ShepSingleXYZ]()
//
//        tempProductsArray.append(ShepSingleXYZ(titled: "Tamler Watch", description: "Featuring revolutionary new Tamler technologies.", imageName: "alfred_e 1024", jobType: "Park", foodType: "pizza", distance: 12.3, dollar: 12.4))
//        tempProductsArray.append(ShepSingleXYZ(titled: "iPad", description: "iPad Air 2 is the thinnest and most powerful iPad ever. With iPad, we’ve always had a somewhat paradoxical goal: to create a device that’s immensely powerful, yet so thin and light you almost forget it’s there.", imageName: "ipad-air2", jobType: "Target", foodType: "rasberry", distance: 32.43, dollar: 23.34))
//        tempProductsArray.append(ShepSingleXYZ(titled: "iPhone", description: "The biggest advancements in iPhone history, featuring two models with stunning 4.7-inch and 5.5-inch Retina HD displays.", imageName: "iphone6", jobType: "McDonalds", foodType: "ice cream", distance: 06.444, dollar: 19))
//
//            return sectionsOfData4TVC(named: "iDevices", includeItems: tempProductsArray)
//        }
// }

//    // Private methods
//    
//    private class func iDevices() -> sectionOfProducts2_class {
//        var tempProductsArray = [ShepSingleXYZ]()
//        
//        tempProductsArray.append(ShepSingleXYZ(titled: "Tamler Watch", description: "Featuring revolutionary new Tamler technologies.", imageName: "alfred_e 1024", jobType: "Park", foodType: "pizza", distance: 12.3, dollar: 12.4))
//        tempProductsArray.append(ShepSingleXYZ(titled: "iPad", description: "iPad Air 2 is the thinnest and most powerful iPad ever. With iPad, we’ve always had a somewhat paradoxical goal: to create a device that’s immensely powerful, yet so thin and light you almost forget it’s there.", imageName: "ipad-air2", jobType: "Target", foodType: "rasberry", distance: 32.43, dollar: 23.34))
//        tempProductsArray.append(ShepSingleXYZ(titled: "iPhone", description: "The biggest advancements in iPhone history, featuring two models with stunning 4.7-inch and 5.5-inch Retina HD displays.", imageName: "iphone6", jobType: "McDonalds", foodType: "ice cream", distance: 06.444, dollar: 19))
//  
//        return sectionOfProducts2_class(named: "iDevices", includeItems: tempProductsArray)
//    }
//

//class sectionOfProducts_class {
//
//    var sectionName: String            // name of the product line
//    var oneSectionProductsArray: [ShepSingleXYZ]     // all products in the line
//
//    init(named: String, includeProducts: [ShepSingleXYZ]) {
//        sectionName = named
//        oneSectionProductsArray = includeProducts
//    }
//
//    class func getAllTheSections() -> [sectionOfProducts_class] {
//        return [self.iDevices(), self.iPod(), self.mac(), self.software()]
//    }
















