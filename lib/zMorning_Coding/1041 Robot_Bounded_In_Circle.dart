class Solution {
  bool isRobotBounded(String instructions) {
    int x = 0, y = 0;
    int dirX = 0, dirY = 1;

    for (int i = 0; i < instructions.length; i++) {
      if (instructions[i] == 'L') {
        int temp = dirX;
        dirX = -dirY;
        dirY = temp;
      } else if (instructions[i] == 'R') {
        int tem = dirX;
        dirX = dirY;
        dirY = -tem;
      } else {
        x += dirX;
        y += dirY;
      }
    }

    return (x == 0 && y == 0) || !(dirX == 0 && dirY == 1);
  }
}
