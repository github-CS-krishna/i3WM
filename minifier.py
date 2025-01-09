import sys;

'''
this program argv accept 3 arguments only
argv[0] -> self fileName
argv[1] -> target fileName
argv[2] -> output fileName
argv[3] -> comment argument(example with qouts "#")
'''

if(len(sys.argv) > 1):
    sourcefile = open(sys.argv[1], 'r');
    outfile = open(sys.argv[2],'w');

    line = sourcefile.readline();
    while(line):
        if(line != '\n' and (line.lstrip()[0]) != sys.argv[3]):
            outfile.write(line);
        line = sourcefile.readline();

    sourcefile.close();
    outfile.close();
    print(sys.argv[2],"file are successfully wroted...")
else:
    print("no arguments");
