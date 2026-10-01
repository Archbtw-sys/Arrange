#!#/usr/bin/env bash

 dirs=(
    [0]="$HOME"
    [1]="$HOME/Downloads"
    [2]="$HOME/Documents"
    [3]="$HOME/Documents/notes"
    [4]="$HOME/Documents/data"
    [5]="$HOME/Documents/research/pdf"
    [6]="$HOME/Documents/papers"
    [7]="$HOME/Projects/"
    [8]="$HOME/Projects/scripts"
    [9]="$HOME/Projects/scripts/bash"
    [10]="$HOME/Projects/scripts/C"
    [11]="$HOME/Projects/scripts/C++"
    [12]="$HOME/Projects/scripts/python"
    [13]="$HOME/Projects/archives"
    [14]="$HOME/Projects/archives/zip"
    [15]="$HOME/Projects/archives/tar"
    [16]="$HOME/Pictures/wallpapers"
    [17]="/tmp/arrange/arrange.log"
    [18]="/tmp/arrange"
  )

  filext=(
    [0]=.zip
    [1]=.7z
    [2]=.tar
    [3]=tar.xz
    [4]=.tar.gz
    [5]=.tgz
    [6]=.txt
    [7]=.docx
    [8]=.MD
    [9]=.sh
    [10]=.py
    [11]=.cpp
    [12]=.c
    [13]=.pdf
    [14]=.png
    [15]=.jpg
    [16]=.md
  )

if [ ! -d "${dirs[17]}" ]; then
echo "I'm in danger... Logs directory or file does not exist."
exit 1
elif 
[ ! -d "${dirs[1]}" ]; then 
echo "I'm in danger... Downloads directory does not exist."
exit 1
elif
[ ! -r "${dirs[1]}" ]; then 
echo "I'm in danger... No read permissions."
exit 1
fi
cd "${dirs[1]}"
if [ "$PWD" != "${dirs[1]}" ]; then
echo "I'm in danger... wrong working directory." 
exit 1
fi
   FILES=$(find "${dirs[1]}" -type f -not -path '*/\.*')   
   log_function(){ 
    echo "######################################################" >> "${dirs[17]}"
    echo "Current directory: $PWD" >> "${dirs[17]}"
    echo "Date: $(date)" >> "${dirs[17]}"
    echo "Run by: $USER" >> "${dirs[17]}" 
    echo "Directories & Files identefied:"  >> "${dirs[17]}"
    echo "$FILES" >> "${dirs[17]}"
    echo "######################################################" >> "${dirs[17]}" 
    }
    log_function
    fi

orgniz_function(){
  for F in "${filext[@]}"; do
  if [ "$F" == ${filext[0]} ]; then
  mv *$F "${dirs[14]}" 2> /dev/null
  elif [ "$F" == ${filext[1]} ]; then
  mv *$F "${dirs[14]}" 2> /dev/null
  elif [ "$F" == ${filext[2]} ]; then
  mv *$F "${dirs[15]}" 2> /dev/null
  elif [ "$F" == ${filext[3]} ]; then
  mv *$F "${dirs[15]}" 2> /dev/null
  elif [ "$F" == ${filext[4]} ]; then
   mv *$F "${dirs[15]}" 2> /dev/null
   elif [ "$F" == ${filext[5]} ]; then
   mv *$F "${dirs[15]}" 2> /dev/null
   elif [ "$F" == ${filext[6]} ]; then
   mv *$F "${dirs[3]}" 2> /dev/null
   elif [ "$F" == ${filext[7]} ]; then
   mv *$F "${dirs[6]}" 2> /dev/null
   elif [ "$F" == ${filext[8]} ]; then
   mv *$F "${dirs[3]}" 2> /dev/null
   elif [ "$F" == ${filext[9]} ]; then
   mv *$F "${dirs[9]}" 2> /dev/null
   elif [ "$F" == ${filext[10]} ]; then
   mv *$F "${dirs[12]}" 2> /dev/null
   elif [ "$F" == ${filext[11]} ]; then
   mv *$F "${dirs[11]}" 2> /dev/null
   elif [ "$F" == ${filext[12]} ]; then
   mv *$F "${dirs[10]}" 2> /dev/null
   elif [ "$F" == ${filext[13]} ]; then
   mv *$F "${dirs[5]}" 2> /dev/null
   elif [ "$F" == ${filext[14]} ]; then
   mv *$F "${dirs[16]}" 2> /dev/null
   elif [ "$F" == ${filext[15]} ]; then
   mv *$F "${dirs[16]}" 2> /dev/null
   elif [ "$F" == ${filext[16]} ]; then
   mv *$F "${dirs[3]}" 2> /dev/null
  fi
  done 
  echo "The cargo has been transported my lord!"
  }
   orgniz_function