Solution {
    Library
}

sortArrayByParityII (A:[]i32)->(v:[]i32) {
    arr := []i32{A.count}
    a := 0
    b := 1
    @ [A] {
        ? ea & 1 ~= 1 {
            arr[a] = ea
            a += 2
        } _ {
            arr[b] = ea
            b += 2
        }
    }
    <- (arr)
}