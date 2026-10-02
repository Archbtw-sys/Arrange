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

Arrange is a fast, lightweight, and simple automated organizer for your downloads directory. However, it can accommodate various configurations if you're a tinkerer with some basic bash knowledge; that route may interest you. For the rest who just want their files organized, these are the basics. Arrange starts in the ~/Downloads directory, of course. We don't want our program going rogue on our fs.
>We first need our environment our script will work in, which will be our specified directory(s) and after this we can look at our file extensions as  
>  
> 
    
    └── Think of this as home base/  
    └── dirs/  
        ├── ~/Downloads/  
        │   ├── foo.txt  
        │   ├── foo.md  
        │   ├── foo.sh  
        │   ├── foo.py  
        │   └── foo.c  
        ├── ~/Documents/  
        │   └── notes/  
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
>>As you can see, our files arrive in the Downloads directory. Then our files are distributed to their appropriate folders based on configured rules. Before we start moving anything, the script will perform a series of validation tests to ensure proper functionality. If it fails any of these conditions, we will be prompted with a message explaining the error and why it can't move our files.

### Part 2 (Validation) 

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
 * Check logs directory existence
 * Check downloads directory existence
 * Check read permissions
 * Check working directory
>Once all of our preconditions have been met. We have our directory locations and file extensions, so now we need to actually do something with them.


### Part 3 (Arranged)
Once the script has prepared its environment, we can now move our files. This involves iterations over the "${filext[@]}" array. If completed successfully, each file should have been moved from your downloads to folders specified in the script.
 * Initialization 
 * Validation
 * Organization
>Here is a general idea of the file sorting process.
1. First, we need to give our program data to work with, which will be in our arrays. 
2. Next, our script will check certain conditions before proceeding with file movement. 
3. Arrange will now search through your downloads folder for all matching extensions and sort them down to their subdirs. Arrange may be paired with cron jobs for automated cleanup. I have tested it, and it works fine, but if you do your own research. If you encounter a problem, you can submit an issue.  

## To-do
 - Revision of organizer function 
 - Array & loop compression 
 - Logging logic improvements required
 - Add file checking logic for script exit when no files are present

## Install
>     git clone https://github.com/Archbtw-sys/Arrange
>     cd Arrange && chmod +x arrange && mv arrange /usr/local/bin/arrange

## Uninstall
>     rm -r Arrange && rm /usr/local/bin/arrange 

## Fixing-bugs
>  Considering this is a personal project that I’ve worked on during free time. There may be a few bugs that need fixing. If you encounter anything, submit an issue, and it will be reviewed. If you would like to contribute or use this project for your own learning or needs. You may use the tool as you see fit. Arrange is free as in gratis and also free as in libre.
 - Deduplication and collision needs work
 - Unkown file type handling
 - Any other bugs found while testing
   