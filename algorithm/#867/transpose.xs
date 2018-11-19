Solution {
    Library
}

transpose (A:[][]i32)->(v:[][]i32) {
    l1 := A.count
    l2 := A[0].count
    result := [][]i32{}
    @ [0<l2] i {
        temp := []i32{}
        @ [0<l1] j {
            temp += A[j][i]
        }
        result += temp 
    }
    <- (result)
}