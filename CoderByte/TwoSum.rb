# Have the function TwoSum(arr) take the array of integers stored in arr, and determine if any two numbers (excluding the first element) in the array can sum up to the first element in the array. For example: if arr is [7, 3, 5, 2, -4, 8, 11], then there are actually two pairs that sum to the number 7: [5, 2] and [-4, 11]. Your program should return all pairs, with the numbers separated by a comma, in the order the first number appears in the array. Pairs should be separated by a space. So for the example above, your program would return: 5,2 -4,11

# If there are no two numbers that sum to the first element in the array, return -1


def TwoSum(arr)
    check = {}
    new = []
    first = arr.first
    arr.each_with_index do |c,i|
        next if i == 0
        diff = first - c
         new << c << check[diff] if check[diff]
        
        check[c] = c
    end
    new.empty? ? -1 : new.uniq.join(",")
    
end
    
print TwoSum([7, 3, 5, 2, -4, 8, 11])