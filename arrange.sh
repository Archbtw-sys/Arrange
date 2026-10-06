#!/bin/bash

set -u
set -o pipefail
DATE="$(date)"
USR="$USER"
CWD="$PWD"

main_dirs=(
  [0]="$HOME"
  [1]="$HOME/Downloads"
  [2]="$HOME/Documents"
  [3]="$HOME/Music"
  [4]="$HOME/Pictures"
  [5]="$HOME/Videos"
  [6]="/tmp/arrange"
  [7]="/tmp/arrange/arrange.log"
 ) 

declare -A filext=( 
    [Archives]=".7z .zip .tar.gz .gz .deb .gzip"
    [Documents]=".txt .TXT .doc .DOC .docx .DOCX .md .MD"
    [Images]=".jpg .JPG .png .PNG"
    [Videos]=".mp4 .MP4"
    [Audio]=".mp3 .MP3"
    [Scripts]=".sh .SH .py .PY .c .C .cpp .CPP"
     )
    SEARCH="$(find "${main_dirs[1]}" -type f -not -path "*/\.*" | sed -e "s|${main_dirs[1]}/||g")"

if [ ! -d "${main_dirs[1]}" ]; then
printf "%b\n I'm in danger... directory does not exist."
exit 1
elif
[ ! -r "${main_dirs[1]}" ]; then 
printf "%s\n I'm in danger... No read permissions." 
exit 1
else
cd "${main_dirs[1]}"
fi
if [ "$PWD" != "${main_dirs[1]}" ]; then 
printf " %s\n I'm in danger... wrong working directory." 
exit 1
elif [ ! -d "${main_dirs[6]}" ]; then
mkdir -p "${main_dirs[6]}" && touch "${main_dirs[7]}" || exit 1
printf "%b\n" "$DATE \nCurrent user: $USR \nWorking directory: $CWD \nFiles in ~/Downloads directory: \n$SEARCH" >> "${main_dirs[7]}"
else
printf "%b\n" "$DATE \nCurrent user: $USR \nWorking directory: $CWD \nFiles in ~/Downloads directory: \n$SEARCH" >> "${main_dirs[7]}"
fi

orgniz_function(){
  sub_dirs=( 
    [0]="$HOME/Documents/research"
    [1]="$HOME/Documents/research/pdf"
    [2]="$HOME/Documents/notes"
    [3]="$HOME/Documents/papers"
    [4]="$HOME/Projects/scripts"
    [5]="$HOME/Projects/scripts/bash"
    [6]="$HOME/Projects/scripts/c"
    [7]="$HOME/Projects/scripts/c++"
    [8]="$HOME/Projects/scripts/py"
    [9]="$HOME/Projects/archives"
    [10]="$HOME/Projects"
    [11]="$HOME/Downloads/test/prune"
    )

  for i in ${filext[@]}; do 
  case $i in 
  *.sh | *.py | *.c)
  mv -n  *$i "${sub_dirs[4]}" 2> /dev/null ;;
  *.txt | *.doc | *.docx | *.md)
  mv -n *$i "${sub_dirs[2]}"  2> /dev/null ;;
  *.mp3)
  mv -n *$i "${main_dirs[3]}" 2> /dev/null ;;
  *mp4)
  mv -n *$i "${main_dirs[5]}" 2> /dev/null ;;
  *.png | *.jpg)
  mv -n *$i "${main_dirs[4]}" 2> /dev/null ;;
  *.7z | *.zip | *.tar.gz | *.gz | *.deb | *.gzip)
  mv -n *$i "${sub_dirs[9]}"  2> /dev/null
  esac
  done
  echo "The cargo has been transported my lord!"
}
  orgniz_function

 