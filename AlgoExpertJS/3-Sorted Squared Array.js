function sortedSquaredArray(array) {
    for (let i = 0; i< array.length; i++) {
        array[i] = array[i] * array[i]
    }
    return array.sort(function(a,b) {
        return a - b
    })
}

const result = sortedSquaredArray([-3, 8, 5, 56, 7, -13, -32, 4, -2, 0])
console.log(result)