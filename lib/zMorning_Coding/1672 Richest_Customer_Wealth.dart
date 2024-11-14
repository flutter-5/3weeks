class Solution {
  ///금액 총계합 최대금액 구하기
  int maximumWealth(List<List<int>> accounts) {
    List<int> sumList = []; // 한 고객당 계좌금액 총합리스트

    for (final account in accounts) {
      var sum = account.fold(
          0,
          (accountedMoneySum, accountedMoney) =>
              accountedMoneySum + accountedMoney);
      sumList.add(sum);
    } // 한 고객당 계좌금액 총합구하기
    // 고객 총합 계좌금액중 최대액 구하기
    int maxNumber =
        sumList.fold(0, (curMaxSum, sum) => curMaxSum > sum ? curMaxSum : sum);
    return maxNumber;
  }
}

// 1. m == accounts.length (고객 수)
// 2. n == accounts[i].length (각 고객이 가진 계좌 수)
// 3. 1≤m,n≤50
// 4. 0≤accounts[i][j]≤100


