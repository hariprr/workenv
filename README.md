# workenv
work environment setup

## ssh
* ssh passwordless login 
    ```
    ssh-keygen -t rsa -b 4096 -C "name"  
    ls ~/.ssh/id_*  
    output: /root/.ssh/id_rsa  /root/.ssh/id_rsa.pub  
    ssh-copy-id username@server_ip_address  
    ``` 
* run commands after logging into ssh session
    * place commands in ~/.ssh/rc
* run commands after logging into ssh session - alternate
    ```
    if [[ -n $SSH_CONNECTION ]] ; then
        echo "I'm logged in remotely"
    fi
    ```
* runs command and then prompts ssh login - slow
    * $ ssh -t server 'cmd; exec bash -l'
 
## git
  New Repo                      | Description
  ---------------------------   | -------------
  git config --global user.email|
  git init                      | init a new repo (creates .git)
  git status                    | lists staging etc,.
  git add "file.name"           | stage file for commit
  git commit -m "commit msg"    | add a commit msg
  git log                       | show git log
  git add .                     | stage all files
  git add *.html                | stage all html files
  .gitignore                    | add files to ignore for git
  git commit -a -m "new file"   | commit staged changes
  git push                      | push changes 

  Branching                     | Description
  ---------------------------   | -------------
  git branch newBranch          | create a new branch
  git checkout newBranch        | switch to new branch
  git checkout master           | checkout master
  git merge newBranch           | merge new branch to master command shd be run from master branch
                                
  Stashing                      | Description
  ---------------------------   | -------------
  git stash                     | shelve un-commited changes
  git stash apply               | stage stashed changes to current branch
  
  Remote Repo                   | Description
  ---------------------------   | -------------
  git remote                    | show remote repos
  git clone <url>               | pulls a repo
  git remote -v                 | show remote repo url
  git fetch origin              | fetch changes from remote; doesn't merge
  git pull origin               | fetch and merge remote changes
  git push origin master        | push/commit local changes to remote master
  git remote add newM <url>     | add a new origin

## bash
source ~/.[bashrc](bashrc)

  Command                       | Description
  ---------------------------   | -------------
  echo $SHELL                   | active shell
  cat /etc/shells               | list shells
  ctrl + a                      | start of cmd
  ctrl + e                      | end of cmd
  ctrl + r                      | search cmd history
  watch \<cmd\>                 | run a cmd in regular interval
  !!                            | repeat prev cmd
  !:0 (tab)                     | just the cmd
  !^                            | first arg
  !$                            | last arg
  !*                            | all args
  !:2                           | second arg
  find . -name "foo.*"          | recursive find file with name
  sed -n '60,65p' <fname>       | print lines 60-65 of a file
  
  
  Run a command in a loop with diffn arguments
  * for param in arg1 arg2; do \<cmd\> $param; done
  * echo "arg1 arg2" | xargs \<cmd\>
  * echo "arg1 arg2" | xargs -t \<cmd\>     # print cmds
  
  Run output of grep as a command
  * grep pattern file.name | sh -
  
  Redirect terminal output to a file - on mac
  * /usr/bin/script ~/Desktop/Terminal.log

## GDB
[cheat sheet](https://gist.github.com/hariprr/816a32f5cd77288f726a1f2f98baaa44)
    
x86 is little-endian - read bytes backwards
  
  Command                           | Description
  ---------------------------       | -------------
  bt                                | backtrace
  bt full                           | full backtrace
  list                              | lists code snippet ( == l)
  b <line number>                   | add a breakpoint
  info b                            | list all breakpoints
  where                             | == bt
  info stack                        | == bt
  info local                        | print all vars in current frame
  info frame                        | describes current stack
  frame #                           | go to frame # ( == f #)
  thread #                          | go to thread # ( == t #)
  print <var>                       | print contents of a var ( == p)
  print &<var>                      | print addr of a var
  info registers <name>             | print contents of a register
  show env COREFILE                 | prints corefile location
  print (char *)$sp                 | to print char var
  thread apply all where            | apply bt to all threads
  list #                            | lists code snippet around line #
    
  
## tmux  
tmux source-file [.tmux.conf](tmux.conf)

  Command                           | Description
  ---------------------------       | -------------
  tmux ls                           | list sessions
  tmux n -s <new_session>           | create new session
  tmux a -t <session_to_attch>      | attach to existing
  tmux kill -t <session_name>       | delete a session
  C-a + t                           | display current time 
  C-a + w                           | show all windows & panes  
  C-a + !                           | break-out current pane  
  C-a + :join-pane -t <#>           | merge window as a pane  
  C-a + :swap-window -s 3 -t 1      | change window index/order
  C-a + :rename-window <new name>   | rename a window
  C-a + :setw synchronize-panes off | sync commands across panes
  
#### _copy text_  
    C-a + [        # copy mode 
    ctrl + space   # select text  
    ctrl + w       # copy
    C-a + ]        # paste

## vim
[vimrc](vimrc)  

  Set symlink vimrc to a git-cloned workspace
  ln -sf ~/Downloads/workenv/vimrc ~/.vimrc
  
  Command                       | Description
  ---------------------------   | -------------
  .                             | repeat prev cmd  
  :                             | browse prev cmds  
  q:                            | cmd history  
  q/                            | search cmd history  
  shift + %                     | jump to matching brace
  shift + ()                    | jump funcs  
  :w new_name.file              | save as
  :%s/\s\\+$//e                 | remvoe trailing whitespaces
  visual_mod + shift + i        | to insert in visual mode (esc insert mode to reflect changes)
  set wrap                      | text wrap
  set showcmd                   | show commands on status line
  vim <directory>               | Navigate through dirs and open files
  :set path?                    | view path variable
  :find test.file               | Find and open test.file
  :find *.file                  | Find all files fuzzy-matching *.file
  :ls                           | Displays recently opened files in buffer
  :b filename                   | Open files from buffer
  
  #### vim navigation
  Command                       | Description
  ---------------------------   | -------------
  w                             | jump to next word
  W                             | jump to next word (space delimited)
  e                             | jump to end of next word
  E                             | jump to end of next word (space delimited)
  
  #### vim scrolling
  Command                       | Description
  ---------------------------   | -------------
  ctrl + e                      | Scroll window [count] lines downwards in the buffer.
  ctrl + y                      | Scroll window [count] lines upwards in the buffer.
  ctrl + d                      | page down
  ctrl + u                      | page up
  zz                            | cursor line to middle of window
  zt                            | cursor line to top of window
  zb                            | cursor line to bottom of window
  
  #### vim edit
  Command                       | Description
  ---------------------------   | -------------
  operator + text_object        | combine operations in normal mode
  cw                            | change word
  ciw                           | change inner word
  ciW                           | change inner word (space delimited)
  ci"                           | change word inside "
  ci<symbol>                    | change word inside <symbol>
  cit                           | change word inside html tags
  dw                            | delete word
  diw                           | delete inner word
  
  #### vim registers
  Command                       | Description
  ---------------------------   | -------------
  "+yy                          | copy curr line to clipboard
  :reg                          | view all reg
  :reg w                        | view reg w
  "ry                           | yank selected text to reg r
  "rp                           | paste reg r contents
  ctrl+r r                      | paste reg r contents in insert mode
  /ctrl+r r                     | search reg r coontents
  ""p                           | paste last deleted text (unnamed reg)
  "0-9                          | last 10 yanked texts
  ".                            | last inserted text
  "%                            | current file path
  ":                            | last executed command
  @:                            | run last executed command
  vim +40 filename              | open file and go to line# 40
  vim +/pattern filename        | open file and go to pattern
  
  <!--- https://www.brianstorti.com/vim-registers/ --->
  
   #### vim markers
  Command                       | Description
  ---------------------------   | -------------
  ma                            | set a marker 'a' (a-z)
  'a                            | jump to marker 'a'
  mA                            | global file marks (A-Z)
  :marks                        | display all marks
  :marks a-c                    | display marks a-c
  :delm a-z                     | delete marks from a-z
    
  <!--- https://dockyard.com/blog/2014/04/10/vim-on-your-mark --->
  
   #### vim search and replace
  Command                       | Description
  ---------------------------   | -------------
  ^                             | start of line
  $                             | end of line 
  \s                            | white-space
  \C                            | case-sensitive
  ^$                            | empty lines
  /\v                           | regex mode in search
  /\vword1\|word2\|word3        | search multiple words
  
## nvim (neovim)
[init.vim](init.vim)

## regex 

  Command                       | Description
  ---------------------------   | -------------
  \s+$                          | trailing white space
  [^\x00-\x7F]                  | check non-ASCII
  \b\s{2,}                      | word boundary + 2 spaces
  
## grep
  
  Command                       | Description
  ---------------------------   | -------------
  grep -v <>                    | exclude <pattern>
  grep <> -A 2                  | print next two lines after match
  grep <> -B 2                  | print prev two lines 
  grep <> -C 2                  | print two lines before and two lines after
  grep <> -m NUM                | stop after NUM matches
 
## c++ compile
    
    clang++ -Wall -std=c++14 program.cpp -o program
    
## vscode
[setup](vscode/setup.txt)  

  Command                       | Description
  ---------------------------   | -------------
  cmd + shift + B               | build
  cmd + shift + J               | terminal focus
  cmd + shift + K               | editor focus
  ctrl + ~                      | close/open terminal  
  
<!--- this is a comment ---> 
<!--- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # adds 6 space --->
