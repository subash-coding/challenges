import CloudKit



class Difference {
    private var elements = [Int]()
    var maximumDifference: Int = 0
    
    init(a:[Int]) {
        elements = a
    }
    
    func computeDifference() {
        for (_,valueI) in elements.enumerated() {
            for (_,valueJ) in elements.enumerated() {
                let diff = abs(valueI-valueJ)
                if diff > maximumDifference {
                    maximumDifference = diff
                }
            }
        }
    }
    
}

let n = Int(readLine()!)!
let a = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let d = Difference(a: a)

d.computeDifference()

print(d.maximumDifference)
