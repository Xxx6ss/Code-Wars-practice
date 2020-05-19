def split_and_add(numbers, n):
    for _ in range(0, n):
        first_p = numbers[0:len(numbers)//2]
        second_p = numbers[len(numbers)//2:]
        if len(first_p) < len(second_p):
            num_1 = 0
            num_2 = 0;
            s1 = str(first_p)
            for i in s1:
                num_1 += 1
            s2 = str(second_p)
            for i in s2:
                num_2 += 1
            a = num_2 - num_1
            print(' ' * a + s1)
        else:
            print(first_p)
        print(second_p)
        numbers.clear()
        if len(first_p) == len(second_p):
            for i in range(0, len(first_p)):
                numbers.append(first_p[i] + second_p[i])
        else:
            for i in range (0, len(second_p)):
                if i == 0:
                    numbers.append(second_p[i])
                else:
                    numbers.append(first_p[i - 1] + second_p[i])
    return numbers



print(split_and_add([1,2,3,4,5], 2))
print("{:>11}".format("*"))