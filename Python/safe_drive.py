class date:
    def __init__(self, str_date):
        self.hour = int(str_date[0: str_date.find(':')])
        self.minutes = int(str_date[str_date.find(':') + 1: ])



def drive(drinks, finished, drive_time):
    alcohol = 0
    for item in drinks:
        alcohol += item[0] * item[1]
    alcohol /= 1000
    alcohol = round(alcohol, 2)
    drank = alcohol
    finished_d = date(finished)
    drive_t = date(drive_time)
    if finished_d.hour > drive_t.hour:
        hours = 24 - finished_d.hour + drive_t.hour
        if drive_t.minutes < finished_d.minutes:
            hours -= 1
        if (drive_t.minutes + finished_d.minutes) != 0:
            if drive_t.minutes + finished_d.minutes >= 60:
                if hours != 0:
                    alcohol /= hours + 1
            else:
                to_del = ((drive_t.minutes + finished_d.minutes) / 60)
                if hours != 0:
                    alcohol /= to_del
        if hours != 0:
            alcohol /= hours
    else:
        hours = drive_t.hour - finished_d.hour
        if drive_t.minutes < finished_d.minutes:
            hours -= 1
        if (drive_t.minutes + finished_d.minutes) != 0:
            if drive_t.minutes + finished_d.minutes >= 60:
                if hours + 1 != 0:
                    alcohol /= hours + 1
            else:
                to_del = ((drive_t.minutes + finished_d.minutes) * 0.01666667)
                alcohol -= to_del
        if hours != 0:
            alcohol /= hours
    if alcohol < 1:
        return [drank, True]
    else:
        return [drank, False]



alcohol = [[10.0,100]]
print(drive(alcohol, "20:00", "21:00"))

