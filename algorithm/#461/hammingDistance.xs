Solution {
    Library
}

hammingDistance (x,y:i32)->(distance:i32) {
    big := x
    ? big < y {
        big = y 
    }
    z := x.xor(y)
    count := 0
    
    i := 1
    @ i <= big {
        ? i.and(z) ~= 0 {
            count += 1
        }
        i = i.lft(1)
    }    

    <- (count)
}