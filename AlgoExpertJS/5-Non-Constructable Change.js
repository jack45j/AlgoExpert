function nonConstructibleChange(coins) {
    coins = coins.sort(function(a,b) { a - b })
    console.log(coins)
    var minConstructable = 0
    for (let i = 0; i < coins.length; i++) {
        console.log([coins[i], minConstructable])
        if (coins[i] <= minConstructable + 1) {
            minConstructable += coins[i]
        } else { 
            return minConstructable + 1
        }
    }
    return minConstructable + 1
}

const result = nonConstructibleChange([1, 1, 2, 2, 2, 3, 5, 5, 5, 10])
console.log(result)