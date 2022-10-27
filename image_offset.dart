import 'dart:math';

class Solution {
  int largestOverlap(List<List<int>> img1, List<List<int>> img2) {
    int res = 0;
    for (int rowOffset = -img1.length; rowOffset < img1.length; rowOffset++) {
      for (int colOffset = -img1[0].length;
          colOffset < img1[0].length;
          colOffset++) {
        res = max(res, overlap(img1, img2, rowOffset, colOffset));
      }
    }
    return res;
  }

  int overlap(List<List<int>> img1, List<List<int>> img2, int rowOffset,
      int colOffset) {
    int res = 0;
    for (int row = 0; row < img1.length; row++) {
      for (int col = 0; col < img1[0].length; col++) {
        if ((row + rowOffset < 0 || row + rowOffset >= img1.length) ||
            (col + colOffset < 0 || col + colOffset >= img1.length)) {
          continue;
        }
        if (img1[row][col] == 1 &&
            img2[row + rowOffset][col + colOffset] == 1) {
          res++;
        }
      }
    }
    return res;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.largestOverlap([
    [1, 1, 0],
    [0, 1, 0],
    [0, 1, 0]
  ], [
    [0, 0, 0],
    [0, 1, 1],
    [0, 0, 1]
  ]));
}
