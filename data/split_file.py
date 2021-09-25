def split_file(file_name, lines_per_file=100000):
    # Open large file to be read in UTF-8
    with open(file_name, 'r') as rf:
        # Read all lines in file
        lines = rf.readlines()
        print ( str(len(lines)) + ' LINES READ.')
        # Set variables to count file number and count of lines written
        file_no = 0
        wlines_count = 0
        # For x from 0 to length of lines read stepping by number of lines that will be written in each file
        for x in range(0, len(lines), lines_per_file):
            # Open new "split" file for writing in UTF-8
            with open( 'sample' + '-' + str(file_no) + '.txt', 'w') as wf:
                # Write lines
                wf.writelines(lines[x:x+lines_per_file])
                # Update the written lines count
                wlines_count += (len(lines[x:x + lines_per_file]))
                # Update new "split" file count mainly for naming
                file_no+=1
        print(str(wlines_count) + " LINES WRITTEN IN " + str(file_no) + " FILES.")

# Split I80_davis.txt into files containing 100000 lines
split_file(r'C:\Users\user.DESKTOP-OMQ89VA\Desktop\datawarehoue\datawarehouse_techstack\data\I80.txt',100000)