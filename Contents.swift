import UIKit
import Darwin
import Foundation

//1) Fibonacci Series.
func fibonacci(num: Int) -> [Int]{
    var arr = [0, 1]
    if num == 1 || num == 2{
        return arr
    }
    else{
        for _ in 0...num-3 {
            let firstNum = arr[arr.count - 2]
            let secondNum = arr.last!
            arr.append(firstNum + secondNum)
        }
        return arr
    }
}
print(fibonacci(num: 1))

//2) Prime number.
func primeNumber(num : Int){
    var count = 0
    for i in 1...num {
        if num%i == 0 {
            count+=1
        }
    }
    if count > 2{
       print("\(num) is not Prime Number")}
    else{
       print("\(num) is Prime Number")}
    
}
primeNumber(num: 17)

//3) Palindrome number.
func isPalindrome(_ num: Int){
    var num1 = num
    var res = 0
    while num1 != 0{
        res = (res * 10) + num1%10
        num1 /= 10
    }
    if res == num {
        print("\(num) is Palindrome Number")
    }else{
        print("\(num) is Not palindrome Number")
    }
}
isPalindrome(121)

//4) Factorial.
func factorial(num : Int){
    var sum = 1
    for i in 1...num {
        sum = sum * i
    }
    print("Factorial of \(num ) is \(sum)")
}
factorial(num: 3)

//5) Armstrong number.
func checkAmstrongNumber(num:Int) -> String {
    var sum = 0, temp = num, reminder = 0
    let digits = String(num).count
    while temp != 0  {
        reminder = temp % 10
        sum = sum + Int(pow(Double(reminder), Double(digits)))
        temp /= 10
        if sum > num {
            break}
    }
    if sum == num {
        return "It is Armstrong Number"
    }
    return "It is not Armstrong Number"
}
print(checkAmstrongNumber(num:147))


//6) Sum of Digits.
func digitsSum(num: Int){
    var r = num, sum = 0, rem = 0
    while r > 0{
        rem = r%10
        r = r/10
        sum += rem
    }
    print("Sum of digits in \(num) is \(sum)")
}
digitsSum(num: 123)

//7) Reverse Number.
func reverse(num : Int){
    var r = num, rem = 0
    while r > 0{
        rem = r%10
        r = r/10
        print("",rem, separator: "", terminator:"")
    }
}
reverse(num: 3452)

//8) Swap two numbers without using third variable
var a1 = 10
var b1 = 15
a1 = a1 + b1
b1 = a1 - b1
a1 = a1 - b1
print("a1 = \(a1)")
print("b1 = \(b1)")
