
import Foundation

/*
[SE-0173]: https://github.com/apple/swift-evolution/blob/master/proposals/0173-swap-indices.md
 Add `MutableCollection.swapAt(_:_:)`
 
[SE-0176]: https://github.com/apple/swift-evolution/blob/master/proposals/0176-enforce-exclusive-access-to-memory.md
 Law of Exclusivity - Enforce Exclusive Access to Memory
*/

var numbers = [1,2,3,4]

numbers.swapAt(0, 3)
numbers

swap(&numbers[0], &numbers[3])  // see the error below
