class Solution {
  List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length - 1; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          return [i, j];
        }
      }
    }
    return [];
  }
}

void main() {
  Solution s = Solution();

  const length = 3;

  const ans = [
    [0, 1],
    [1, 2],
    [0, 1]
  ];

  const nums = [
    [2, 7, 11, 15],
    [3, 2, 4],
    [3, 3]
  ];
  const target = [9, 6, 6];

  print("correct\tans\tresult");
  for (int i = 0; i < length; i++) {
    final result = s.twoSum(nums[i], target[i]);
    print("${ans[i].toString() == result.toString()}\t${ans[i]}\t${result}");
  }
}
