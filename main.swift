import Foundation
var unsortedString = [""]
var unsortedIntegers: [Int] = []
while let input = readLine() {
    unsortedString.append(input)
}
var a = 0
var b = 0
var x:Float = 0
for _ in unsortedString {
    for w in unsortedString[a].utf8 {
        x += Float(w)/pow((1000.0), Float(b))
        b += 1
    }
    unsortedIntegers.append(Int(x))
    b = 0
    a += 1
    x = 0
}
var unInt = unsortedIntegers
var unString = unsortedString
var z = 0
var swap = 0
var total = 0 
for value in 0..<unInt.count {
    var n = value
    while n > 0 && unInt[n] < unInt[n-1] {
        z = unInt[n]
        unInt[n] = unInt[n-1]
        unInt[n-1] = z
        let largerString = unString[n-1]        
        unString[n-1] = unString[n]
        unString[n] = largerString
        
        swap += 1
        total += 1
        n -= 1        
    }
    swap = 0
}
print(unInt, unString)
