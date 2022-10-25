# ytsearch

ytsearch is a POSIX shell script that uses the Invidious API to search YouTube through the terminal.

---------

### Dependencies
- POSIX complient shell
- curl
- jq
- sed
- head
- core utils

---------

### How to install

#### 1. Clone the repo
```
$ git clone https://github.com/7Games/ytsearch.git && cd ytsearch
```
#### 2. Run the install command
```
# make install
```
That command requires root access. If you don't have root access you can use this command.
```
$ make install_user
```
The man page is not installed if you use the user install.
#### 3. Run the program
```
$ ytsearch -h
ytsearch by 7Games (Benjamin) 	
usage: ytsearch [-h, -i] [search] 	

 -i, --interact	prints full video URL based on user input 	
 -h, --help	displays this help and exit
```

---------

### Usage
To search for something add it to the end of the program when running it.
```
$ ytsearch posix shell scripting
Searching "posix shell scripting" using "https://invidious.sevengames.xyz"...
 [30] Shell Scripting for Humans (077): The single dash (minus) syntax (POSIX) (Jacob Salmela) [iGrDOpARc3U]
 [29] Shell Scripting Tutorial | Shell Scripting Crash Course | Linux Certification Training | Edureka (edureka!) [GtovwKDemnI]
 [28] Posix shell script - Save multi line command output to variable (Roel Van de Paar) [LDuPYJ35LtU]
 [27] [PLOS 2021] Files-as-Filesystems for POSIX Shell Data Processing (Michael Greenberg) [VIphHPBj9ms]
...
```

For user interaction put the ```-i```/```--interact``` argument directly after the program name. It will ask the user for the index of a video listed then print the full video URL to the terminal.
```
$ ytsearch --interact rust in the linux kernel
...
 [3] The Linux Kernel Gets Rusty - Jonathan Corbet, RUST and the Linux Kernal Development (FLOSS Weekly) [gVC1gp2PS8U]
 [2] Next Phase For Rust In The Linux Kernel (Brodie Robertson) [Ni3jcdDzvNQ]
 [1] Rust Is Going To Destroy The Linux Kernel!!! (Brodie Robertson) [FwXmv6b9614]

Enter video index: 2

https://invidious.sevengames.xyz/watch?v=Ni3jcdDzvNQ
```

### How to play videos with this program?
To play a video you could either:-
1. Take the ID from next to the video and play it using mpv
2. Use this command
```
$ printf "Search: " && read -r input && ytsearch -i "$input" | tee /tmp/search && mpv $(tail -1 /tmp/search) && rm /tmp/search
```
This command takes input from the user and uses it to search with then make the user enter the video index. Use the ```tee``` command to get the stdout of the program, then gets the last line of the stdout and make mpv play it.

You could also use another script I made called [yt](https://github.com/7Games/yt).

Made by [7Games](https://sevengames.xyz).<br>
[LICENSE](https://github.com/7Games/ytsearch/blob/main/LICENSE)
