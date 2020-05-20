def find_all(array, n):
    # your code here
    pos = list()
    for i in range(0, len(array)):
        if array[i] == n:
            pos.append(i)
    return pos




print(find_all([6, 9, 3, 4, 3, 82, 11], 3))
