array = [1, 2, 3, 4, 5, 6]

    selection = array.select do |element|
        element > 3
    end

        puts selection