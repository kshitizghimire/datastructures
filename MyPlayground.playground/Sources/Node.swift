import Foundation

public class Node<T> {
    public let value: T
    public var next: Node<T>?
    public weak var previous: Node<T>?
    
    public init(value: T) {
        self.value = value
    }
}
