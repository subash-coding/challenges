import Foundation

class Node {
    let data: Int
    var next: Node?
    
    init(data: Int) {
        self.data = data
    }
}

var head: Node?

func display(head: Node?) {
    var current = head
    
    while current != nil {
        print(current!.data, terminator: " ")
        current = current!.next
    }
}

func findTail(head: Node) -> Node {
    if head.next == nil  {
        return head
    }
    return findTail(head: head.next!)
}

func insert(head: Node?, data: Int!) -> Node? {
    let node = Node(data: data)
    guard head != nil else {
        return node
    }
    let tail = findTail(head: head!)
    tail.next = node
    return head
}

let n: Int = Int(readLine()!)!

for _ in 0..<n {
    let element = Int(readLine()!)!
    head = insert(head: head, data: element)
}

display(head: head)
