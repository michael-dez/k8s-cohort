# Problem 1: Python File Handling Exercise
- For the given text file, write the first 20 lines to a new output file named: <YourName>ExerciseOutput.txt.

- Add in some standard exception handling logic.

- For the given text file (the input file), print the number of lines in the original file.
```python
#! /usr/bin/python3
import os

""" Write number of lines equal to count from inFile to outFile """


def writeLines(count, inFile, outFile):
    try:
        file = open(os.path.join(os.getcwd(), inFile), "r")
        file2 = open(os.path.join(os.getcwd(), outFile), "w")
        allLines = file.readlines()
        outLines = allLines[0:count]
        # print number of lines
        print("Total number of lines is {0}".format(len(allLines)))
        # print("outLines length: {0}" .format(len(outLines))) # I dont understand how list[x:y] works ???
        file2.writelines(outLines)
        print("Output written to {0}".format(file2.name))

    except OSError as err:
        print("There was a small problem. Hope this helps.")
        print("error string: {0}".format(err.strerror))
    except Exception as err:
        print("I have no idea what you did.")
        print(err)
    finally:
        file.close()


writeLines(20, "SampleLogFile.txt", "mikeExerciseOutput.txt")
```
