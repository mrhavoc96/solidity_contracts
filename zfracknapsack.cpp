def fractional_knapsack(value, weight, capacity):
    n = len(value)
    
    # Calculate value/weight ratio
    ratio = []
    for i in range(n):
        ratio.append(value[i] / weight[i])
    
    # Combine value, weight, and ratio into a single list of tuples
    items = list(zip(value, weight, ratio))
    
    # Sort items by ratio in descending order
    items.sort(key=lambda x: x[2], reverse=True)
    
    total_value = 0.0  # total value in knapsack
    for val, wt, r in items:
        if capacity >= wt:
            capacity -= wt
            total_value += val
        else:
            # Take fractional part
            total_value += r * capacity
            break

    return total_value


# Example input
value = [60, 100, 120]
weight = [10, 20, 30]
capacity = 50

max_value = fractional_knapsack(value, weight, capacity)
print("Maximum value in Knapsack =", max_value)
