
import Foundation

/*
[SE-0161] https://github.com/apple/swift-evolution/blob/master/proposals/0161-key-paths.md
 
Every type automatically gets a `[keyPath: …]` subscript to get or set the value at the specified key path.
*/

struct Meetup {
    var title: String
    var location: String
    var hostedBy: String
}

var peerLab = Meetup(title: "PeerLab Chicago", location: "FastModel office", hostedBy: "")

peerLab[keyPath: \Meetup.hostedBy] = "Aijaz Ansari"
peerLab[keyPath: \Meetup.title]
peerLab[keyPath: \Meetup.location]

var cocoaHeads = Meetup(title: "CocoaHeads Chicago", location: "Apple North Michian store", hostedBy: "Bob Frank")

cocoaHeads[keyPath: \Meetup.title]

let locationKeyPath = \Meetup.location
type(of: locationKeyPath)
cocoaHeads[keyPath: locationKeyPath]











//: [Next](@next)
