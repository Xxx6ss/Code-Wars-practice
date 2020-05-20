class Student:
    def __init__(self, name, fives, tens, twenties):
        self.name = name
        self.fives = fives
        self.tens = tens
        self.twenties = twenties



def most_money(students):
    # NOTE: the Student class is preloaded
    if len(students) == 0:
        return 'all'
    if len(students) == 1:
        return students[0].name
    wallet = dict()
    for stud in students:
        money = stud.fives * 5 + stud.tens * 10 \
                            +  stud.twenties * 20
        wallet[money] = stud.name
    if len(wallet) == 1 and len(students) != 1:
        return "all"
    v = list(wallet.values())
    k = list(wallet.keys())
    return wallet[k[v.index(max(v))]]






phil = Student("Phil", 2, 2, 1)
cam = Student("Cameron", 2, 2, 1)
geoff = Student("Geoff", 0, 3, 0)



print(most_money([cam]))