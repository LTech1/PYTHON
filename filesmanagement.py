file_path = 'devops.txt'
open_file = open(file_path, 'r')
text = open_file.read()
len(text)
text[100]
text[1000]

open_file.close()
text[100]
open_file