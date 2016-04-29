def magic(n)
    square = Array.new(n + 1) {
        Array.new(n + 1, 0)
    }
    i = 0
    j = (n + 1) / 2
    1.upto(n ** 2) { |key|
        if key % n == 1
            i += 1
        else
            i -= 1
            j += 1
        end
        if i == 0
            i = n
        end
        if j > n
            j = 1
        end
        square[i][j] = key
    }
    matrix = Array.new(n) {
        Array.new(n, 0)
    }
    matrix.length.times { |k|
        matrix[0].length.times { |l|
            matrix[k][l] = square[k + 1][l + 1]
        }
    }
    matrix
end
matrix = magic(5)
p matrix
