function twoNumberSum(array, targetSum) {
    var dict = {}
    for (let i = 0; i < array.length; i++) {
        if (dict[targetSum - array[i]]) {
            console.log(targetSum - array[i])
            return [targetSum - array[i], array[i]]
        } else {
            dict[array[i]] = true
            console.log(dict)
        }
    }
    return []
}

const result = twoNumberSum([-1,11,2,3,5,6], 16)
console.log(result)