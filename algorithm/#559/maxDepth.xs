Solution {
    Library
}

maxDepth (root:Node)->(v:i32) {
    ? root == nil {
        <- (0)
    }

    depth := 0
    @ root.children {
        temp := maxDepth(ea)
        ? temp > depth {
            depth = temp
        }
    }
    <- (depth+1)
}