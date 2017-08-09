
import Foundation

/*
  [SE-0163]: https://github.com/apple/swift-evolution/blob/master/proposals/0163-string-revision-1.md

 String implments Collection protocol. So no need to use the .characters method.
 */

let helloChicago = "Hello Chicago"
for character in helloChicago {
    print(character)
}

/*
 SubString is a new type for string slices. Both String and Substring types confirm to the same StringProtocol.
 */
type(of: helloChicago)
let space=helloChicago.index(of: " ")!
type(of: space)

let helloSubString=helloChicago[..<space]
type(of: helloSubString)
print(helloSubString.uppercased())








let chicagoSubString=helloChicago[space...]
type(of: chicagoSubString)
print(chicagoSubString.uppercased())

let newString = String(chicagoSubString)
type(of: newString)
print(newString)


/*
 Unicode 9 is supported and issues with emoji character count is fixed.
 */

"🥇🥈🥉".count      // in SWIFT 3 : returns 1

"👮".count          // in SWIFT 3 : returns 2

"👨‍👩‍👧‍👦".count         // in SWIFT 3 : returns 4

/*
 [SE-0168]: https://github.com/apple/swift-evolution/blob/master/proposals/0168-multi-line-string-literals.md
 Now inside multi line string no need to escape a single double quote. This is useful to paste HTML or JSON text with out escaping.
 */
let multilineString = """
Here is the multi-line String in SWIFT 4.
    Now no escape characters is needed to escape a "quotes".
Remember multi-line String must begin on a new line.
"""
print(multilineString)

//: [Next](@next)
