/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
class Solution {
  TreeNode? balanceBST(TreeNode? root) {
     List<int> values = [];
    inOrderTraversal(root, values);

    return sortedArrayToBST(values, 0, values.length - 1);
  }
  void inOrderTraversal(TreeNode? node, List<int> values) {
    if (node == null) return;
    inOrderTraversal(node.left, values);
    values.add(node.val);
    inOrderTraversal(node.right, values);
  }
 TreeNode? sortedArrayToBST(List<int> values, int start, int end) {
    if (start > end) return null;

    int mid = start + (end - start) ~/ 2;
    TreeNode node = TreeNode(values[mid]);
    node.left = sortedArrayToBST(values, start, mid - 1);
    node.right = sortedArrayToBST(values, mid + 1, end);
    return node;
  }
}