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
$ ytsearch
usage: ytsearch [STRING]... 	
```

---------

### Usage
To search for something add it to the end of the program when running it.
```
$ ytsearch posix shell scripting
BASH password strength checking script | Sean Paul Bryans | HbQIXI51AuE
Posix shell script - Save multi line command output to variable | Roel Van de
Paar | LDuPYJ35LtU
What is POSIX in Unix? Linux Terminal 201 - HakTip 161 | Hak5 | U0GbJtnfqSM
...
```

To select an item use something similar to fzf or dmenu.
```
$ ytsearch rust in the linux kernel | dmenu -l 5
...
#AFTER SELECTING ITEM IN DMENU
...
What would a Rust-based Linux distro look like? | Systems with JT | aqExaoH2SFU
```

You can use Environment Variables to change certain things.
#### Change the Invidious instance
```
$ INVIDIOUS_INSTANCE="https://invidious.example.com" ytsearch OpenBSD 7.2
```



### How to play videos with this program?
To play a video you could either:-
1. Take the ID from next to the video and play it using mpv
2. Use this command
      1. fzf
```
$ printf "Search: " && read -r input && ytsearch "$input" | fzf | tail -c 12 | xargs -I % mpv "https://invidious.sevengames.xyz/watch?v=%"
```
      2. dmenu
```
$ input=$(printf "" | dmenu -p "Search: "); ytsearch "$input" | dmenu -l 30 | tail -c 12 | xargs -I % mpv "https://invidious.sevengames.xyz/watch?v=%"
```

You could also use another script I made called [yt](https://github.com/7Games/yt).


Made by [7Games](https://sevengames.xyz).<br>
[LICENSE](https://github.com/7Games/ytsearch/blob/main/LICENSE)


