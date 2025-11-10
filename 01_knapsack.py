def knapsack_01(value, weight, capacity):
    n = len(value)
    dp = [[0 for _ in range(capacity + 1)] for _ in range(n + 1)]

    # Build table dp[][] in bottom-up manner
    for i in range(1, n + 1):
        for w in range(1, capacity + 1):
            if weight[i - 1] <= w:
                dp[i][w] = max(value[i - 1] + dp[i - 1][w - weight[i - 1]],
                               dp[i - 1][w])
            else:
                dp[i][w] = dp[i - 1][w]

    return dp[n][capacity]


# Example input
value = [60, 100, 120]
weight = [10, 20, 30]
capacity = 50

max_value = knapsack_01(value, weight, capacity)
print("Maximum value in Knapsack =", max_value)
