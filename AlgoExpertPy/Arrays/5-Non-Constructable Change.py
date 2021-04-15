def nonConstructibleChange(coins):
    coins.sort()

    maxConstructable = 0
    for coin in coins:
        if coin > maxConstructable + 1:
            return maxConstructable + 1
        maxConstructable += coin
        
    return maxConstructable + 1

coins = [1, 1, 1, 1, 1]
print(nonConstructibleChange(coins))