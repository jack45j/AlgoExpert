def mergeOverlappingIntervals(intervals):
    if not intervals: return []
    
    intervals.sort(key = lambda pairs: pairs[0])
    print("Intervals:", intervals)
    result = [intervals[0]]
    intervalsIdx = 1
    resultIdx = 0
    while intervalsIdx < len(intervals):
        if result[resultIdx][1] >= intervals[intervalsIdx][0]:
            if result[resultIdx][1] > max(intervals[intervalsIdx][0], intervals[intervalsIdx][1]):
                intervalsIdx += 1
                continue
            result[resultIdx][1] = intervals[intervalsIdx][1]
        else:        
            result.append(intervals[intervalsIdx])
            resultIdx += 1

        intervalsIdx += 1
        
    return result

intervals = [[6, 8], [1, 2], [4, 7], [3, 5], [9, 10]]
minus = [[1, 22], [-20, 30]]
print(mergeOverlappingIntervals(minus))