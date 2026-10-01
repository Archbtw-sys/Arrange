# Arrange

A simple automated file organizer for Linux written completely in Bash.

# Table of Contents

1. [Preface](#Preface)
2. [To-do](#To-do)
3. [Install](#Install)
4. [Uninstall](#Uninstall)
5. [Fixing bugs](#Fixing bugs)


## Preface
Arrange is a fast and lightweight automated organizer for your Downloads folder specifically, but works with various file system locations.  Arrange starts in the ~/Downloads directory as expected after which it will begin scanning the directory for matching file extentions. Below is a layout of how Arrange works.
>We first need our enviorment which is are directory(s) and give it language i.e file extentions. The tree below shows a basic representation of how the program maps files to corisponding locations. 
>
> .
└── Think of this as home base/
    └── dirs/
        ├── ~/Downloads/
        │   ├── foo.txt
        │   ├── foo.md
        │   ├── foo.sh
        │   ├── foo.py
        │   └── foo.c
        ├── ~/Documents/
        │   └── notes /
        │       ├── txt
        │       └── md
        └── ~/Projects/
            └── scripts/
                ├── bash/
                │   └── foo.sh
                ├── python/
                │   └── foo.py
                └── c/
                    └── foo.c
As you can see we first start in the downloads directory. Before this happens the script does a series of validation checks to insure proper fucntionality.

    if [ ! -d "${dirs[7]}" ]; then
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

## To-do
1. 
2. 
3.
## Install

## Uninstall

## Fixing bugs