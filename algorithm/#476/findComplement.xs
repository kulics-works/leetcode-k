Solution {
    Library
}

findComplement (num:i32)->(v:i32) {
    i := 1
    @ i <= num {
        num = num.xor(i)
        i = i.lft(1)
    }
    <- (num)
}