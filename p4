class Solution:
    def threeSumClosest(self, A, B):
        A.sort()
        closest_sum = float('inf')
        for i in range(len(A) - 2):
            if i > 0 and A[i] == A[i - 1]:
                continue
            l, r = i + 1, len(A) - 1
            while l < r:
                sum = A[i] + A[l] + A[r]
                diff = abs(B - sum)
                if diff < abs(B - closest_sum):
                    closest_sum = sum
                if sum < B:
                    l += 1
                else:
                    r -= 1
        return closest_sum
