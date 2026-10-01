# Arrange

A simple automated file organizer for Linux written completely in Bash.

# Table of Contents

1. [Preface](#Preface)
2. [To-do](#To-do)
3. [Install](#Install)
4. [Uninstall](#Uninstall)
5. [Fixing-bugs](#Fixing-bugs)


## Preface

### Part 1 (How it works)

Arrange is a fast, lightweight, and simple automated organizer for your downloads directory. However, it can accomodate various configurations if you're a tinkerer with some basic bash knowledge; that route may intrest you. For the rest who just want their files organized; these are the basics. Arrange starts in the ***~/Downloads directory of course. We don't want our program going rouge on our fs.
>We first need our enviorment our script will work in which will be our specefied directory(s) and after this we can look at our file extentions as 
    
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
        │       ├── foo.txt
        │       └── foo.md
        └── ~/Projects/
            └── scripts/
                ├── bash/
                │   └── foo.sh
                ├── python/
                │   └── foo.py
                └── c/
                    └── foo.c
>>As you can see our files arrive in the ***Downloads directory. Then our files are distrubted to their appropriate folders based on configured rules. Before we start moving anything; the script will perform a series of validation test to insure proper fucntionality. If it fails any of these conditions, we will be prompted with a message explaing the error and why it can't move our files.

### Part 2 (Validation) 

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
 *Check logs directory existence
 *Check downloads directory existence
 *Check read permissions
 *Check working directory
>Once all of our pre conditions have been met. We have our directory locations and file extentions, so now we need to a actually do something with them.

### Part 3 (Arranged)
Once the script has prepared its enviorment, we can now move our files. This involves iterations over the ***"${filext[@]}" array. If completed successfully, each file should have been moved from your downloads to folders specefied in the script.
 * Initialzation
 * Verifcation
 * Operation
>Here is a clear idea of the file sorting process.


## To-do
 - Revision of orginzer function 
 - Array & loop compression 
 - Loging logic improvments required
 - Add file checking logic for script exit when no files are present

## Install
>     git clone https://github.com/Archbtw-sys/Arrange
>     cd Arrange && chmod +x arrange && mv arrange /usr/local/bin/arrange

## Uninstall
>     rm -r Arrange && rm /usr/local/bin/arrange 
## Fixing-bugs
 - Need
 - 
 - 
   