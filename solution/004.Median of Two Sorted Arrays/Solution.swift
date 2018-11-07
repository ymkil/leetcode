class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {

        var i = 0, j = 0

        var firstValue = 0, secondValue = 0

        for index in 0..<nums1.count + nums2.count {

            var numsIndexValue1 = 0, numsIndexValue2 = 0

            (nums1.count > 0 && i < nums1.count) ? (numsIndexValue1 = nums1[i]) : (numsIndexValue1 = Int.max)
            (nums2.count > 0 && j < nums2.count) ? (numsIndexValue2 = nums2[j]) : (numsIndexValue2 = Int.max)

            numsIndexValue1 > numsIndexValue2 ? (j = j + 1) : (i = i + 1)

            if index == ((nums1.count + nums2.count + 1)/2 - 1) {
                firstValue = min(numsIndexValue1, numsIndexValue2)
            }
            if index == ((nums1.count + nums2.count + 2)/2 - 1) {
                secondValue = min(numsIndexValue1, numsIndexValue2)
            }
        }
        
        return Double(firstValue + secondValue) / 2
    }
}
