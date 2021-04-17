def longestPeak(array):
    longestPeak = 0
    idx = 1
    if len(array) <= 1: return len(array)
    while idx < len(array) - 1:
        isPeak = array[idx - 1] < array[idx] and array[idx] > array[idx + 1]
        if not isPeak: 
            idx += 1
            continue

        leftIdx = idx - 2
        while leftIdx >= 0 and array[leftIdx + 1] > array[leftIdx]:
            leftIdx -= 1
        
        rightIdx = idx + 2
        while rightIdx < len(array) and array[rightIdx - 1] > array[rightIdx]:
            rightIdx += 1
        
        if rightIdx - leftIdx - 1 > longestPeak: 
            longestPeak = rightIdx - leftIdx - 1
            print("left:", leftIdx, "right:", rightIdx)
            print(array[leftIdx + 1: rightIdx])

        idx = rightIdx

    return longestPeak


normal = [1, 2, 3, 3, 4, 0, 10, 6, 5, -1, -3, 2, 3]
three = [1, 3, 2]
print(longestPeak(normal))