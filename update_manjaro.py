import tkinter as tk
from tkinter import *
import os

root = Tk()

def actualizare():
    os.system("xterm -e sudo pacman -Syyu")

menubar = Menu(root)
menubar.add_command(label="Actualizare Manjaro", command=actualizare)
menubar.add_command(label="Iesire", command=root.quit)

root.config(menu=menubar)

root.mainloop()
