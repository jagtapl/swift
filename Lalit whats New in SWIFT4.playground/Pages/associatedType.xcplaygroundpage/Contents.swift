/*
[SE-0142]: https://github.com/apple/swift-evolution/blob/master/proposals/0142-associated-types-constraints.md

A protocol associated type (PAT), is just differnt sytax for Generics in protocol.

The protocol and PAT helps us build better object composition, instead of messy object inheritance.
*/

extension Sequence where Element: Numeric {
    var sum: Element {
        var result: Element = 0
        for element in self {
            result += element
        }
        return result
    }
}

[1, 2 , 3, 4 , 5].sum

/*
In SWIFT 4 the "Sequence" has associated type defined as "Element".

Due to new generic feature `associatedtype Element where Element == Iterator.Element` can now be expressed in the type system.
*/
