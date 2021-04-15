def isValidSubsequence(array, sequence):
    arrIdx = 0
    seqIdx = 0
    while arrIdx < len(array) and seqIdx < len(sequence):
        print("BEFORE [arrIdx:", arrIdx, "seqIdx", seqIdx, "]")
        print("array[arrIdx]:", array[arrIdx], "sequence[seqIdx]:", sequence[seqIdx])
        if array[arrIdx] == sequence[seqIdx]:
            seqIdx += 1
        arrIdx += 1
        print("AFTER [arrIdx:", arrIdx, "seqIdx", seqIdx, "]")
    return seqIdx == len(sequence)

print(isValidSubsequence([5, 1, 22, 25, 6, -1, 8, 10], [1, 6, -1, 10]))