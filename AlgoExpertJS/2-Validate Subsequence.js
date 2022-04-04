function isValidSubsequence(array, sequence) {
    var arrIdx = 0
    var seqIdx = 0
    while (arrIdx < array.length && seqIdx < sequence.length) {
        if (array[arrIdx] == sequence[seqIdx]) {
            arrIdx++
            if (seqIdx == sequence.length - 1) {
                return true
            } else {
                seqIdx++
            }
        } else {
            arrIdx++
        }
    }
    return false
}

const result = isValidSubsequence([5, 1, 22, 25, 6, -1, 8, 10], [1, 6, -1, 10])
console.log(result)