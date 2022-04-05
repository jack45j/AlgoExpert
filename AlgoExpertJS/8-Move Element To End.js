function moveElementToEnd(array, toMove) {
    var leftIdx = 0
    var rightIdx = array.length - 1
    while (leftIdx <= rightIdx) {
        if (array[leftIdx] == toMove) {
            if (array[rightIdx] == toMove) {
                rightIdx--
            } else {
                [array[leftIdx], array[rightIdx]] = [array[rightIdx], array[leftIdx]]
            }
        } else {
            leftIdx++
        }
    }
    return array
}
var arr = [3, 3, 2, 2, 2, 5, 4, 3, -5, -2, 1, 2, 2, 2, 2, 2, 2, 2, 3, 4, 5, 6, 7, 8, 9, 10]
moveElementToEnd(arr, 3)
console.log(arr)