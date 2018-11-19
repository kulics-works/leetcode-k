Solution {
    Library
}

flipAndInvertImage (A:[][]i32)->(v:[][]i32) {
    reverse (numbers:[]i32)->(v:[]i32) {
        v := _{:i32}
        @ [numbers.count-1 >= 0] i {
            v += 1 - numbers[i]
        }
        <- (v)
    }

    @ [A] i -> v {
        A[i] = reverse(v)
    }
    <- (A)
}