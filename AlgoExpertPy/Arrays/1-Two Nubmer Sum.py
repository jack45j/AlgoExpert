def twoNumberSum(array, targetSum):
    hash = {}
    for num in array:
        if num in hash:
            return [num, targetSum - num]
        else:
            hash[targetSum - num] = True

    return []

print(twoNumberSum([-1,11,2,3,4,5,6], 10))