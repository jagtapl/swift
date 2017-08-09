//: [Previous](@previous)

import Foundation

//[SE-0172]: https://github.com/apple/swift-evolution/blob/master/proposals/0172-one-sided-ranges.md

//"Swift Evolution Proposal SE-0172: One-sided Ranges"

let swift_language = ["Swift 1", "Swift 2", "Swift 3", "Swift 4"]
let launch_year = [2014, 2015, 2016, 2017]
let yr_swift_launched = zip(launch_year, swift_language)
for (year, version) in yr_swift_launched {
    print("\(year): \(version)")
}

print(swift_language[0...])     // all elements from 1st
print(swift_language[...2])
print(swift_language[3...])

print(swift_language[..<2])

print(swift_language[1...])

