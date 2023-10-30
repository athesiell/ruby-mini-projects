def bubble_sort(array)
    return array if array.length <= 1
    for i in 0..array.length-1 do
        for v in 0..array.length-2 do #after first iteration [78] will be in the right place, so there is no need to iterate through the whole array
            if array[v] > array[v+1]
                array[v], array[v+1] = array[v+1], array[v]
            end
        end
    end
    array
end


p bubble_sort([4,3,78,2,0,2])