import UIKit

public struct Politician {
    public let name: String
    public init(name: String) {
        self.name = name
    }
}
public struct Party {
    public var politicians = [Politician]()
    public init(politicians: [Politician]) {
        self.politicians = politicians
    }
    public mutating func removePoliticans(withName name: String) {
        politicians = politicians.filter({$0.name != name})
    }
    public func removingPoliticians(withName politicansName: String) -> Party{
        return Party(politicians: politicians.filter({$0.name != politicansName}))
    }
}

public var republicans = Party(politicians: [Politician(name: "Donald"),Politician(name: "Mike")])
public var embarrasments = ["donald","sarah"]
