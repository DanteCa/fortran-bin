# fortran-bin

This Repository contains scripts in Fortran language to process grid or station data oriented to use it with GrADS.

First of all I want to apologize for my bad english and let you know that the scripts are in spanish because it was developed for people of my country (Peru).

The script bin.f90 allows you to convert a matrix of data (gridded data) to a binary file. This matrix can be a .txt file or any other type of file that can be read it with Fortran (although I only tried with .txt files).
The first step is compile the script in order to create the executable file. Once you run de executable, it will ask for some information about the input and output data. First you will have to write the input file name, then the name of the output file and then the number of rows and columns. If there's any problem with the input file, the program will stop working. You must write the right number of rows and columns, if you don't do it correctly there might be a malfunction with the program.

Any questions or suggestions please let me know.
