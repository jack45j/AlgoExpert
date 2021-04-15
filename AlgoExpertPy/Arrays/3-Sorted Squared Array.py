
def sortedSquaredArray(array):
    idx = 0
    while idx < len(array):
        array[idx] *= array[idx]
        idx += 1

    array.sort()
    return array

array = [1,2,3,4,5,6,7,8]  
print(array)
print(sortedSquaredArray(array))
print(array)