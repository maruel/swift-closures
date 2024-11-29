// List of all types of closures that Swift supports.
//
// Taken directly from:
// https://docs.swift.org/swift-book/documentation/the-swift-programming-language/closures/

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

// Each of the 9 following blocks arefunctionally the same.

print("Named function:")
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)
print(reversedNames)


print("Closure with explicit types:")
reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})
print(reversedNames)


print("Closure with explicit types as a one liner:")
reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 } )
print(reversedNames)


print("Closure with inferred types as a one liner:")
reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )
print(reversedNames)


print("Closure with implicit return:")
reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )
print(reversedNames)


print("Closure with shorthand argument names:")
reversedNames = names.sorted(by: { $0 > $1 } )
print(reversedNames)


print("Operator method:")
reversedNames = names.sorted(by: >)
print(reversedNames)


print("Trailing closure with shorthand argument names:")
reversedNames = names.sorted() { $0 > $1 }
print(reversedNames)


print("Trailing closure with parentheses omitted:")
reversedNames = names.sorted { $0 > $1 }
print(reversedNames)
