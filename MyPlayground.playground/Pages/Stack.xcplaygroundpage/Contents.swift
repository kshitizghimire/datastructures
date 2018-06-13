
//MARK: Stack
class Stack<T> {
    var top: Node<T>?
    
    public func push(value: T) {
        let oldTop = top
        top = Node(value: value)
        top?.next = oldTop
        
    }
    
    public func pop() -> T? {
        let currentTop = top
        top = top?.next
        return currentTop?.value
    }
    
    public func peek() -> T? {
        return top?.value
    }
    
}

let stack = Stack<Int>()
stack.push(value: 2)
stack.peek()
stack.push(value: 3)

stack.peek()

let firstPop = stack.pop()
let secondPop = stack.pop()
let thirdPop = stack.pop()

struct User {
    let name: String
    let email: String
}

let user1 = User(name: "User1", email: "mail1@mail.com")
let user2 = User(name: "User2", email: "mail2@mail.com")


let userStack = Stack<User>()
userStack.push(value: user1)
userStack.peek()
userStack.push(value: user2)
userStack.peek()

let firstUserPop = userStack.pop()

let sencondUserPop = userStack.pop()


