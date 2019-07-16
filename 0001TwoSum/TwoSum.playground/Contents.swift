import UIKit

/// Given an array of integers, return indices of the two numbers such that they add up to a specific target.
/// You may assume that each input would have  exactly  one solution, and you may not use the  same  element twice.
/// Example:
/// Given nums = [2, 7, 11, 15], target = 9,
/// Because nums[0] + nums[1] = 2 + 7 = 9,
/// return [0, 1].
///
/// - Parameters:
///   - numbers: 输入数组
///   - target: 目标数
/// - Returns: numbers数组中，两个数字能够相加之和等于目标数的下标构成的数组

public func twoSum(numbers: [Int], target: Int) -> [Int] {
    var numberCache = [Int: Int]()
    var res = [Int]()
    res.reserveCapacity(2)
    for index in 0...numbers.count - 1 {
        // Xcode 10.2.1 上编译正常通过，但是在LeetCode中国的网站上会编译报错
        if let num = numberCache[target - numbers[index]] {
            res.append(num)
            res.append(index)
            break
        }
        numberCache[numbers[index]] = index
    }
    return res
}


// Test
let numbers = [1, 2, 3, 4, 5, 6, 7, 8]
let target = 6
let solution = twoSum(numbers: numbers, target: target)
print(solution)

