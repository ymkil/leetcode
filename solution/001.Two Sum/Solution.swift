class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict:[Int:Int] = [:]
        for i in 0..<nums.count {
            let surplus = target - nums[i]
            if let aim = dict[surplus] {
                return [aim, i]
            }
            dict[nums[i]] = i
        }
        return []
    }
}


