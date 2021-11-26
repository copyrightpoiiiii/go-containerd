import re
import csv
file = open("DADI-download.log","r")
image_rec = {}
image_info = {}
image = ""
tag = ""
image_run_info = {}
for line in file:
    if line.startswith("elapsed:"):
        tmp = line.split(" ")
        while "" in tmp:
            tmp.remove("")
        image_info[(image,tag)] = (tmp[1],tmp[-3]+tmp[-2])
        image_rec[(image,tag)] = 1
    else:
        tmp=line.split("\n")[0].split(":")
        image = tmp[0]
        tag = tmp[1]
file.close()
file = open("DADI-test.log","r")
flag = 1
for line in file:
    if flag:
        tmp = line.split("\n")[0].split(":")
        image = tmp[0]
        tag = tmp[1]
    else:
        tmp = line.split(" ")
        image_run_info[(image,tag)] = (tmp[0],tmp[1],tmp[2])
    flag ^= 1

file.close()

image_ori_info = {}

file = open("origin-test.log","r")
flag = 1
for line in file:
    if flag:
        tmp = line.split("\n")[0].split(":")
        image = tmp[0]
        tag = tmp[1]
    else:
        tmp = line.split(" ")
        image_ori_info[(image,tag)] = (tmp[0],tmp[1],tmp[2],tmp[3])
        image_rec[(image,tag)] = 1
    flag ^= 1

f = open("result.csv","w+",newline="")
write = csv.writer(f,dialect=('excel'))

for item in image_rec.keys():
    out = []
    out.append(item[0])
    out.append(item[1])
    if item in image_ori_info.keys():
        out.append(image_ori_info[item][0])
        out.append(image_ori_info[item][1])
        out.append(image_ori_info[item][2])
        out.append(image_ori_info[item][3])
    else :
        out+=["","","",""]
    if item in image_info.keys():
        out+=[image_info[item][0],image_info[item][1]]
        if item in image_run_info.keys():
            out+=[image_run_info[item][0],image_run_info[item][1],image_run_info[item][2]]
        else:
             out+=["","",""]
    else:
        out+=["","","","",""]
    write.writerow(out)

