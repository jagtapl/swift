
import UIKit
/*
 [SE-0165]: https://github.com/apple/swift-evolution/blob/master/proposals/0165-dict.md

 Supported variety of suggestions to improve Dictionary and Set types.
*/

// initializer to create Dictionary from Array
let confs = ["WWDC", "AltConf", "360iDev", "CocoaHeads"]
let dict = Dictionary(uniqueKeysWithValues: zip(1..., confs))
dict

// Map over all values in the dictionary. No need to use the map method to transform values.
let conferences = ["WWDC": "Very Good", "AltConf": "Good", "CocoaHeads Party": "Very Fun"]
let newConferences = conferences.mapValues { value in
    return value + " 👍"
}
newConferences

// Filter method returns dictionary (same type) not array
let wwdc = conferences.filter { $0.key == "WWDC" }
wwdc

// Default value if key is not found. To avoid having to unwrap an optional.
let trySWIFT = conferences["TrySWIFT", default: "Missing"]
trySWIFT

// Group sequence of values using 1st letter to partition.
let dictionary = Dictionary(grouping: conferences.values) { $0.uppercased().first! }
dictionary

// Group sequence of key using 1st letter to partition.
let keyValuesFromDictionary = Dictionary(grouping: conferences.keys) { $0.uppercased().first! }
keyValuesFromDictionary

let set: Set = [1,2,3,4,5]
let filteredSet = set.filter { $0 % 2 == 0 }
type(of: filteredSet)                   // returns the same type
filteredSet



