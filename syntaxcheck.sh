#!/bin/bash

# Check if the script has been given an input file
if [ $# -eq 0 ]; then
  echo "Error: No input file specified"
  exit 1
fi

# Check if the input file exists
if [ ! -f $1 ]; then
  echo "Error: Input file does not exist"
  exit 1
fi

# Check the syntax of the input file using the "bash -n" command
if ! bash -n $1; then
  echo "Error: Syntax error in input file"
  exit 1
fi

echo "Input file has valid syntax"
