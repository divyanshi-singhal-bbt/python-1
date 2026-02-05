
def find_missing_number(arr):
    num_set = set(arr)

    minimum = min(arr)
    maximum = max(arr)

    for num in range(minimum, maximum + 1):
        if num not in num_set:
            print("Missing number is:", num)
            return num

    print("No missing number found")
    return None



arr = list(map(int, input("Enter numbers: ").split()))
find_missing_number(arr)
