//
//  main.swift
//  Array
//
//  Created by subash on 2/14/21.
//

import Foundation

//###################################findMaxConsecutiveOnes#############################################
// [0,1,1,1,0,1,1,1,1,0]

class Solution1 {
    var maxCount = 0
    var counter = 0
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        
        for number in nums {
            if number == 1 {
                counter += 1
            } else {
                if counter > maxCount {
                    maxCount = counter
                }
                counter = 0
            }
        }
        return counter > maxCount ? counter: maxCount
    }
}

let sol = Solution1()
//print(sol.findMaxConsecutiveOnes([1,1,1,1,1,1,0,1,1,1,0,1,0,0]))
print("FindMaxConsecutiveOnes")
print(sol.findMaxConsecutiveOnes([1]))
print("\n")
print("\n")


//###################################Running Sum of 1d Array#############################################

class Solution2 {
    func runningSum(_ nums: [Int]) -> [Int] {
        var finalArray = [Int]()
        var runningSum = 0
        for number in nums {
            runningSum = runningSum + number
            finalArray.append(runningSum)
        }
        return finalArray
    }
}

let sol2 = Solution2()
print("Running Sum")
print(sol2.runningSum([3,1,2,10,1]))
print("\n")
print("\n")


//###################Kids With the Greatest Number of Candies################################
class Solution3 {
    var result = [Bool]()
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        let greatestNumberOfCandy = candies.max() ?? 0
        for count in candies {
            count + extraCandies >= greatestNumberOfCandy ? result.append(true) : result.append(false)
        }
        return result
    }
}
let sol3 = Solution3()
print("Greatest number of candy")
print(sol3.kidsWithCandies([2,3,5,1,3],3))
print("\n")
print("\n")



//###########Shuffle the Array####################

class Solution4 {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var result = [Int]()
        for i in (0...(n-1)) {
            result.append(nums[i])
            result.append(nums[i+n])
        }
        
        return result
    }
}
let sol4 = Solution4()
print("Shuffle the Array")
print(sol4.shuffle([2,5,1,3,4,7], 3))
print("\n")
print("\n")


//##################Richest Customer Wealth#################
class Solution5 {
    var maxWealth = 0
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        for account in accounts {
            let wealth = account.reduce(0, +)
            if wealth > maxWealth {
                maxWealth = wealth
            }
        }
        return maxWealth
    }
}
let sol5 = Solution5()
print("Richest Customer Wealth")
print(sol5.maximumWealth([[2,8,7],[7,1,3],[1,9,5]]))
print("\n")
print("\n")
