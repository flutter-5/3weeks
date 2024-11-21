class Solution {
  bool lemonadeChange(List<int> bills) {
//for문으로 모든요소 반복
//$5, $10 정의
//$5 → $5 1개 추가
//$10 → $5 1개 감소, if($5<1) return false
//$20 → if($10>1&&$5>1) 1개씩 감소, else if($5>2) $5 3개감소, else return false
// false 없으면 return true
    int five = 0;
    int ten = 0;

    for (int bill in bills) {
      if (bill == 5) {
        five++;
      } else if (bill == 10) {
        if (five < 1) {
          return false;
        } else {
          five--;
          ten++;
        }
      } else {
        if (ten > 0 && five > 0) {
          ten--;
          five--;
        } else if (five > 2) {
          five -= 3;
        } else
          return false;
      }
    }
    return true;
  }
}
