#data analyze

from csv import reader
from statistics import mean

#Perform our analysis
#We will find the average of our tempurature readings
with open("data.txt",'r') as data_file:
    csv_reader = reader(data_file)
    header = next(csv_reader)
    total = []
    for row in csv_reader:
        total.append(int(row[1]))

print("Average tempurature readings :", mean(total))
