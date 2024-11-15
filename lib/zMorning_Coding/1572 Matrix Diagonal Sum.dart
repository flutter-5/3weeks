class Solution {
  int diagonalSum(List<List<int>> mat) {
// n == mat.length == mat[i].length
// 1 <= n <= 100
// 1 <= mat[i][j] <= 100
// 주 대각선 원소는 mat[i][i]에 위치한 원소들입니다.
// 부 대각선 원소는 mat[i][n - 1 - i]에 위치한 원소들입니다.
// 주 대각선과 부 대각선에 위치한 원소들을 각각 합산합니다.
// n x n이 홀수일 때, 중앙에 위치한 원소는 두 대각선에 모두 포함되므로 중복으로 한 번 더해진 상태입니다. 이 경우, 한 번만 더하도록 해당 원소를 한 번 빼줍니다.

// n == mat.length == mat[i].length 정의
// for문으로 주 대각선 합
// for문으로 부 대각선 합
// if문으로 n%2=1 mat[(n-1)/2][(n-1)/2] 빼기
    int total = 0;
    int n = mat.length; // n == mat.length == mat[i].length 정의
    for (int i = 0; i < mat.length; i++) {
      total += mat[i][i]; // for문으로 주 대각선 합
      total += mat[i][mat.length - 1 - i]; // for문으로 부 대각선 합
    }
    if (n.isOdd) {
      total -= mat[n ~/ 2][n ~/ 2]; // if문으로 n%2=1 mat[(n-1)/2][(n-1)/2] 빼기
    }
    return total;
  }
}
