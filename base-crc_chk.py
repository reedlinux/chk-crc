#Return CRC and ChkSum from file
from tkinter import Tk
import fileinput

from tkinter.filedialog import askopenfilename
filename = askopenfilename()

#starting string for all .mll files that hold the CRC
crc_locate, chk_locate = ['CRC = ', 'CRC: '], ['Checksum = ', 'Checksum: ']

setting = []

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
    for line in fileinput.input([filename]):
        if crc in line:
            print(line.find(crc))

#tests
get_type(filename)
print(setting)
print(filename)
find_line(filename, setting)



