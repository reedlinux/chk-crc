#Return CRC and ChkSum from file
from tkinter import Tk
import fileinput

from tkinter.filedialog import askopenfilename
filename = askopenfilename()

#starting string for all .mll files that hold the CRC
crc_locate, chk_locate = ['CRC = ', 'CRC: '], ['Checksum = ', 'Checksum: ']

setting = []
crc_chk = []

def get_type(filename):
    if filename[-3:] == 'mll':
        setting1 = 0
        setting.append(setting1)
    elif filename[-3:] == 'gnl':
        setting2 = 1
        setting.append(setting2)
    else:
        print('Not supported file type')
    

def find_line(filename,setting):
    crc = crc_locate[setting[0]]
    chk = chk_locate[setting[0]]
    if setting[0] == 0:
        for line in fileinput.input([filename]):
            if crc in line:
                crc_chk.append((line[line.find(crc) + 6 : line.find(crc) + 10]))
            if chk in line:
                crc_chk.append((line[line.find(chk) + 11 : line.find(chk) + 15]))
                break
    elif setting[0] == 1:
        for line in fileinput.input([filename]):
            if crc in line:
                crc_chk.append((line[line.find(crc) + 5 : line.find(crc) + 9]))
            if chk in line:
                crc_chk.append((line[line.find(chk) + 10 : line.find(chk) + 14]))
                break
        

#tests
get_type(filename)
print(setting)
print(filename)
find_line(filename, setting)
print(crc_chk)
