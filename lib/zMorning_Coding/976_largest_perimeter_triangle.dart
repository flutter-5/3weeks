class Solution {
  int largestPerimeter(List<int> nums) {
    nums.sort();

    for (int i = (nums.length - 1); i >= 2; i--) {
      if (nums[i - 2] + nums[i - 1] > nums[i]) {
        return nums[i - 2] + nums[i - 1] + nums[i];
      }
    }
    return 0;
  }
}
