def sort_reindeer(reindeer_names):
    for i in range(0, len(reindeer_names)):
        if i + 1 == len(reindeer_names):
            break;
        for j in range(i + 1, len(reindeer_names) - i):
            if j + 1 == len(reindeer_names) - ia:
                break;
            first_letter = reindeer_names[j + 1].find(' ') + 1
            first_letter_j = reindeer_names[j].find(' ') + 1
            print(reindeer_names[j + 1][first_letter] )
            print(reindeer_names[j][first_letter_j])
            print(reindeer_names[j])
            print(reindeer_names[j + 1])
            if reindeer_names[j + 1][first_letter:] == reindeer_names[j][first_letter_j:]:
                break
            elif reindeer_names[j + 1][first_letter] < reindeer_names[j][first_letter_j]:
                ws = reindeer_names[j + 1]
                reindeer_names[j + 1] = reindeer_names[j]
                reindeer_names[j] = ws

            elif  reindeer_names[j + 1][first_letter] == reindeer_names[j][first_letter_j]:
                if reindeer_names[j + 1][first_letter + 1] < reindeer_names[j][first_letter_j + 1]:
                    ws = reindeer_names[j + 1]
                    reindeer_names[j + 1] = reindeer_names[j]
                    reindeer_names[j] = ws

                elif reindeer_names[j + 1][first_letter + 1] == reindeer_names[j][first_letter_j + 1]:
                    if reindeer_names[j + 1][first_letter + 2] < reindeer_names[j][first_letter_j + 2]:
                        ws = reindeer_names[j + 1]
                        reindeer_names[j + 1] = reindeer_names[j]
                        reindeer_names[j] = ws

                    elif reindeer_names[j + 1][first_letter + 2] == reindeer_names[j][first_letter_j + 2]:
                        if reindeer_names[j + 1][first_letter + 3] < reindeer_names[j][first_letter_j + 3]:
                            ws = reindeer_names[j + 1]
                            reindeer_names[j + 1] = reindeer_names[j]
                            reindeer_names[j] = ws

                        elif reindeer_names[j + 1][first_letter + 3] == reindeer_names[j][first_letter_j + 3]:
                            if reindeer_names[j + 1][first_letter + 4] < reindeer_names[j][first_letter_j + 4]:
                                ws = reindeer_names[j + 1]
                                reindeer_names[j + 1] = reindeer_names[j]
                                reindeer_names[j] = ws

                            elif reindeer_names[j + 1][first_letter + 4] == reindeer_names[j][first_letter_j + 4]:
                                if reindeer_names[j + 1][first_letter + 5] < reindeer_names[j][first_letter_j + 5]:
                                    ws = reindeer_names[j + 1]
                                    reindeer_names[j + 1] = reindeer_names[j]
                                    reindeer_names[j] = ws
    return reindeer_names





print(sort_reindeer(['Sukeharu Sado', 'Shiro Tokugawa', 'Akira Tokugawa', 'Akira Sado']))


# #
# ['Sukeharu Sado', 'Shiro Tokugawa', 'Akira Tokugawa', 'Akira Sado']
# should equal ['Sukeharu Sado', 'Akira Sado', 'Shiro Tokugawa', 'Akira Tokugawa']