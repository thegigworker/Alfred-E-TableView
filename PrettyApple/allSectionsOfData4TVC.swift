//
//  sectionOfProducts_class.swift
//  TableViewDemo
//
//  Created by Duc Tran on 3/22/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//

/*
 //Swift keypaths are a way of storing uninvoked references to properties, which is a fancy way of saying they refer to a property itself rather than to that property’s value.
 
 //Here’s an example struct storing a name and maximum warp speed of a starship:
 struct Starship {
 var name: String
 var maxWarp: Double
 }
 
 let voyager = Starship(name: "Voyager", maxWarp: 9.975)
 //Keypaths let us refer to the name or maxWarp properties without reading them directly, like this:
 
 let nameKeyPath = \Starship.name
 let warpKeyPath = \Starship.maxWarp
 //If you want to read those keypaths on a specific starship, Swift will return you the actual values attached to those properties:
 
 print(voyager[keyPath: nameKeyPath])
 print(voyager[keyPath: warpKeyPath])
 //In practice, this means you can refer to the same property in multiple places all using the same keypath – and if you decide you want a different property you can change it in just one place.
 */

/*
//Let define a struct called Cavaliers and a struct called Player, then create one instance of each:

// an example struct
struct Player {
    var name: String
    var rank: String
}

// another example struct, this time with a method
struct Cavaliers {
    var name: String
    var maxPoint: Double
    var captain: Player
    
    func goTomaxPoint() {
        print("\(name) is now travelling at warp \(maxPoint)")
    }
}

// create instances of those two structs
let james = Player(name: "Lebron", rank: "Captain")
let irving = Cavaliers(name: "Kyrie", maxPoint: 9.975, captain: james)

// grab a reference to the `goTomaxPoint()` method
let score = irving.goTomaxPoint

// call that reference
score()
//The last lines create a reference to the goTomaxPoint() method called score. The problem is, we can't create a reference to the captain's name property but keypath can do.

let nameKeyPath = \Cavaliers.name
let maxPointKeyPath = \Cavaliers.maxPoint
let captainName = \Cavaliers.captain.name
let cavaliersName = irving[keyPath: nameKeyPath]
let cavaliersMaxPoint = irving[keyPath: maxPointKeyPath]
let cavaliersNameCaptain = irving[keyPath: captainName]
*/

////////////////////////////////

/*
 //Since Swift is a statically dispatched language, dynamic features are not its strong suit. Swift 4 added support for key path and allow you to do something like this:
 
 extension Array {
 mutating func sort<T: Comparable>(byKeyPath keyPath: KeyPath<Element, T>) {
 sort(by: { $0[keyPath: keyPath] < $1[keyPath: keyPath] })
 }
 }
 
 struct DataModel {
 var title: String
 var dollar: Double
 }
 
 var myArray = [DataModel(title: "A", dollar: 12), DataModel(title: "B", dollar: 10)]
 let keyPath = \DataModel.dollar
 myArray.sort(byKeyPath: keyPath)
 
 //But there is no way to construct the key path from String. It must be known at compile time to ensure type safety.
 */

/////////////////////////
/*
 //Starting with Swift 4 you can define a sorting method which takes a Key-Path Expression as argument:
 
 extension Array {
 mutating func sort<T: Comparable>(byKeyPath keyPath: KeyPath<Element, T>) {
 sort(by: { $0[keyPath: keyPath] < $1[keyPath: keyPath] })
 }
 }
// Example usage:
 
 persons.sort(byKeyPath: \.name)
 cars.sort(byKeyPath: \.manufacturer)
 
 */


/*  RE INSTANCE METHOD V CLASS METHOD
 
 You can only call an instance method on an instance of a class. For example, you would have to create an instance of myScript, then call it:
 
 let script = myScript()
 script.thisIsmyFunction()
 
 You can also choose to make thisIsmyFunction a class method (which is formally known as a "type method" in Swift), and call it like the way you are doing right now:
 
 class func thisIsmyFunction() {...}
 
 Note the class modifier in front of func. Of course, this means you can't access self inside the function, because there is no longer an instance of the class.
 
 */


import Foundation

struct allSectionsOfData4TVC {
    
    var sectionName: String            // name of the product line
    var oneSectionOfData : [ShepSingleXYZ]
    var whichSort: String
    
//    enum mySort {
//        case jobType  // CATEGORY !
//        case foodType  // CATEGORY 2
//        case dollar // SINGLE SECTION 1
//        case distance // SINGLE SECTION 2
//        case title // SINGLE SECTION 3
//    }
    
    init(named: String, includeItems: [ShepSingleXYZ], theSort: String) {
        sectionName = named
        oneSectionOfData = includeItems
        whichSort = theSort
    }
    
  //let mySort = whichSort
    
//    switch whichSort {
//    case "jobType" :   // CATEGORY !
//    sortedTempSingleArray = MYtempSingleArray.sorted(by: { $0.jobType < $1.jobType })
//    case "foodType" :   // CATEGORY 2
//    sortedTempSingleArray = MYtempSingleArray.sorted(by: { $0.foodType < $1.foodType })
//    case "dollar" : // SINGLE SECTION 1
//    sortedTempSingleArray = MYtempSingleArray.sorted(by: { $0.dollar < $1.dollar })
//    case "distance" : // SINGLE SECTION 2
//    sortedTempSingleArray = MYtempSingleArray.sorted(by: { $0.distance < $1.distance })
//    case "title" : // SINGLE SECTION 3
//    sortedTempSingleArray = MYtempSingleArray.sorted(by: { $0.title < $1.title })
//    default:
//    sortedTempSingleArray = MYtempSingleArray.sorted(by: { $0.dollar < $1.dollar })
//    }
    
//    enum UserType {
//        case Regular
//        case VIP
//        case Admin
//    }
//
//    class User {
//        var type: UserType?
//    }
//
//    var user = User()
//    user.type = UserType.Admin
    
    
   static func getAllTheSections() -> [allSectionsOfData4TVC] {
        var myBigKahunaSectionedArray = [allSectionsOfData4TVC]()
        var oneSectionOfData2 = [ShepSingleXYZ]()
        let MYtempSingleArray = tempSingleArray_class.buildSingleTableArray()
        let mySort = whichSort
        
       // let myWhichSort2 = myWhichSort.jobType
        
       // let myWhichSort: whichSort
        //let myWhichSort2 = myWhichSort.jobType
        
       //whichSort = "jobType"

        /*
         //Starting with Swift 4 you can define a sorting method which takes a Key-Path Expression as argument:
         
         extension Array {
         mutating func sort<T: Comparable>(byKeyPath keyPath: KeyPath<Element, T>) {
         sort(by: { $0[keyPath: keyPath] < $1[keyPath: keyPath] })
         }
         }
         // Example usage:
         
         persons.sort(byKeyPath: \.name)
         cars.sort(byKeyPath: \.manufacturer)
         
         */
        

        
        //let mySort: whichSort = .foodType
        //let mySort: whichSort = .jobType
        var sortedTempSingleArray = MYtempSingleArray
        var currentSectionName = ""
        var loopCount = 0
        
        switch whichSort {
        case "jobType" :   // CATEGORY !
            sortedTempSingleArray = MYtempSingleArray.sorted(by: { $0.jobType < $1.jobType })
        case "foodType" :   // CATEGORY 2
            sortedTempSingleArray = MYtempSingleArray.sorted(by: { $0.foodType < $1.foodType })
        case "dollar" : // SINGLE SECTION 1
            sortedTempSingleArray = MYtempSingleArray.sorted(by: { $0.dollar < $1.dollar })
        case "distance" : // SINGLE SECTION 2
            sortedTempSingleArray = MYtempSingleArray.sorted(by: { $0.distance < $1.distance })
        case "title" : // SINGLE SECTION 3
            sortedTempSingleArray = MYtempSingleArray.sorted(by: { $0.title < $1.title })
        default:
            sortedTempSingleArray = MYtempSingleArray.sorted(by: { $0.dollar < $1.dollar })
        }
    
        //let sortedTempProductsArray = MYtempSingleArray.sorted(by: { $0.title < $1.title })
        //let sortedTempSingleArray = MYtempSingleArray.sorted(by: { $0.dollar > $1.dollar })
        //let sortedTempSingleArray = MYtempSingleArray.sorted(by: { $0.jobType < $1.jobType })
        //let sortedTempSingleArray = MYtempSingleArray.sorted(by: { $0.foodType < $1.foodType })
        //let sortedTempSingleArray = MYtempSingleArray.sorted(by: { $0.distance < $1.distance })
        
        for item in sortedTempSingleArray {
            //let tempThisSectionName = item.foodType
            let thisItemSectionName = item.jobType
            loopCount += 1
            // "continue" to move loop to next iteration/item
            // "break" to exit the loop statement
            if currentSectionName == "" {
                // no currentSectionName, first item through
                currentSectionName = thisItemSectionName
                oneSectionOfData2.append(item)
               // print ("first item through")
            } else { // not first time through
                if thisItemSectionName == currentSectionName {  // same category/section as previous one, so just add the item
                    oneSectionOfData2.append(item)
                } else { // is new category/section
                    // so append to myBigKahunaSectionedArray and start clean oneSectionOfData
                    //SORT ONE SECTION AT A TIME -- if needed???
                    
                    myBigKahunaSectionedArray.append (allSectionsOfData4TVC(named: currentSectionName, includeItems: oneSectionOfData2, theSort: whichSort ))
                    oneSectionOfData2.removeAll()
                    currentSectionName = thisItemSectionName
                    oneSectionOfData2.append(item)
                }
            }
            if loopCount == sortedTempSingleArray.count {   // last iteration
                //SORT ONE SECTION AT A TIME -- if needed???
                myBigKahunaSectionedArray.append (allSectionsOfData4TVC(named: currentSectionName, includeItems: oneSectionOfData2, theSort: whichSort))
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
















