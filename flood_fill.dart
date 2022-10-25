class Solution {
  List<List<int>> floodFill(List<List<int>> image, int sr, int sc, int color) {
    if (image[sr][sc] == color) return image;
    dfs(image, sr, sc, color, image[sr][sc]);
    return image;
  }

  List<List<int>> dfs(
      List<List<int>> image, int sr, int sc, int color, int oldColor) {
    if (sr > image.length - 1 ||
        sc > image[0].length - 1 ||
        sc < 0 ||
        sr < 0 ||
        image[sr][sc] != oldColor) return image;

    image[sr][sc] = color;
    dfs(image, sr - 1, sc, color, oldColor);
    dfs(image, sr, sc + 1, color, oldColor);
    dfs(image, sr + 1, sc, color, oldColor);
    dfs(image, sr, sc - 1, color, oldColor);
    return image;
  }
}

void main() {
  Solution sol = Solution();
  List<List<int>> image = [
    [1, 1, 1],
    [1, 1, 0],
    [1, 0, 1]
  ];
  int sr = 1;
  int sc = 1;
  int color = 2;
  print(sol.floodFill(image, sr, sc, color));
}
