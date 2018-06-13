
//MARK: Queue
class Queue<T> {
    var front: Node<T>?
    var rear: Node<T>?
    
    public func enqueue(value: T) {
        let newRear = Node(value: value)
        if rear == nil {
            front = newRear
            rear = newRear
        } else {
            rear?.next = newRear
            rear = newRear
        }
    }
    
    public func dequeue() -> T? {
        if let front = front {
            let currentFront = front
            self.front = front.next
            return currentFront.value
        }
        return nil
    }
    
    public func peek() -> T? {
        return front?.value
    }
    
}

let queue = Queue<Int>()

queue.enqueue(value: 4)
queue.enqueue(value: 3)
queue.enqueue(value: 21)


queue.peek()
let firstDequeue = queue.dequeue()
queue.peek()
let secondDequeue = queue.dequeue()
queue.peek()
let thirdDequeue = queue.dequeue()

struct User {
    let name: String
    let email: String
    
}

let user1 = User(name: "User1", email: "mail1@mail.com")
let user2 = User(name: "User2", email: "mail2@mail.com")

let userQueue = Queue<User>()
userQueue.enqueue(value: user1)
userQueue.enqueue(value: user2)

userQueue.peek()
let firstUserDequeue = userQueue.dequeue()
userQueue.peek()
let sencondUserDequeue = userQueue.dequeue()

