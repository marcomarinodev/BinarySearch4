import UIKit

// Ritorna il numero che vogliamo cercare nell'array
// Ma qualora ci siano più occorrenze dello stesso numero esso torna
// la posizione massima, esempio:
// [1,2,3,4,5,6,7,7,7,8], elemento che vogliamo cercare = 7.
// ritorna -> 8 {posizione massima dell'elemento 7}

func binarySearch4(a : [Int], k : Int, sx : Int, dx : Int) -> Int {
    if (sx > dx) {
        return -1
    }
    let cx = (sx + dx)/2
    
    if (k == a[cx]) {
        if ((cx+1) < dx) {
            if (a[cx] == a[cx+1]) {
                return binarySearch4(a: a, k: k, sx: cx+1, dx: dx)
            } else {
                return cx
            }
        } else {
            return cx
        }
    }  else if (k < a[cx]) {
        return binarySearch4(a: a, k: k, sx: sx, dx: cx)
    } else {
        return binarySearch4(a: a, k: k, sx: cx+1, dx: dx)
    }
    
}

var arr = [1,1,1,1,1,4,4,4,5,7,9,9,10,14,14,14,18,18,18]

print(binarySearch4(a: arr, k: 9, sx: 1, dx: arr.count))
