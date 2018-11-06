class Solution {

    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        var dict:[String:Int] = [:]
        var res = 0
        var left = 0
        
        //转数组比 substring 速度快

        let strArray = s.map{String($0)}
        
        for i in 0..<strArray.count {
            /**
             * dict[strArray[i]]! < left 条件
             * 当输入字符串为"abbca"的时候，当i=4时，也就是即将要开始遍历最后一个字母a时，此时哈希表表中a对应1
             * b对应3，c对应4，left为2，即当前最长的子字符串的左边界为第二个b的位置
             * 而第一个a已经不在当前最长的字符串的范围内了，那么对于i=4这个新进来的a
             * 应该要加入结果中，而此时未被更新的哈希表中a为1，不是0，如果不判断它和left的关系的话
             * 就无法更新结果，那么答案就会少一位，所以需要加dict[strArray[i]]! < left
             */
            if dict[strArray[i]] == nil || dict[strArray[i]]! < left {
                res = max(res, i - left + 1)
            } else {
                left = dict[strArray[i]] ?? 0
            }
            dict[strArray[i]] = i + 1
        }
        return res
    }
}
