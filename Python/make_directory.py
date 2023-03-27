#Cum creati un director daca acesta nu exista in Linux
import os

directory = "/home/user/documents/important"

if not os.path.exists(directory):
    os.makedirs(directory)
    print(f"Directory '{directory}' created.")
else:
    print(f"Directory '{directory}' already exists.")