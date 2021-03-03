//
//  HashTableChallenges1.swift
//  HashTable
//
//  Created by subash on 2/17/21.
//

import Foundation

class NumberOfIdenticalPairs {
    
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var identicalCount = 0
        for i in 0...(nums.count-2) {
            for j in (i+1...(nums.count-1)) {
                if nums[i] == nums[j] {
                    identicalCount += 1
                }
            }
        }
        return identicalCount
    }

}

class NumJewelsInStones {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var count = 0
        for stone in stones {
            if jewels.contains(stone) {
                count += 1
            }
        }
        return count
    }
}

class SmallerNumbersThanCurrent {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        return []
    }
}


class SpNumber {
    
    func smallerNumbersThanCurrent1(_ nums: [Int]) -> [Int] {
        var dictionary = [Int:Int]()
        for i in 0...(nums.count-1) {
            dictionary[i] = 0
        }
        for i in 0...(nums.count-2) {
            for j in (i+1...(nums.count-1)) {
                if nums[i] > nums[j] {
                    dictionary[i] = dictionary[i]!+1
                } else if nums[i] < nums[j]  {
                    dictionary[j] = dictionary[j]!+1
                }
            }
        }
        var finalArray = [Int]()
        for i in 0...(nums.count-1) {
            finalArray.append(dictionary[i]!)
        }
       return finalArray
       }
    
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var arr = [Int]()
        for m in nums {
            var count = 0
            for n in nums {
                if m > n {
                    count += 1
                }
            }
            arr.append(count)
        }
        return arr
    }
    
    func smallerNumbersThanCurrent3(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        for m in nums {
            let smallerNumbs = nums.filter { $0 < m}.count
            result.append(smallerNumbs)
        }
        return result
    }
}


class AnagramMappings {
    func anagramMappings(_ A: [Int], _ B: [Int]) -> [Int] {
        var result = [Int]()
        for m in A {
            result.append(B.firstIndex(of: m)!)
        }
        return result
    }
}
