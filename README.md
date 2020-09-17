# workenv
work environment setup

### ssh passwordless login 
    ssh-keygen -t rsa -b 4096 -C "name"  
    ls ~/.ssh/id_*  
    output: /root/.ssh/id_rsa  /root/.ssh/id_rsa.pub  
    ssh-copy-id username@server_ip_address  

## bash
source ~/.[bashrc](bashrc)

  Command                       | Description
  ---------------------------   | -------------
  echo $SHELL                   | active shell
  cat /etc/shells               | list shells
  ctrl + a                      | start of cmd
  ctrl + e                      | end of cmd
  ctrl + r                      | search cmd history
  
  
## tmux  
tmux source-file [.tmux.conf](tmux.conf)

  Command                       | Description
  ---------------------------   | -------------
  tmux ls                       | list sessions
  tmux n -s <new_session>       | create new session
  tmux a -t <session_to_attch>  | attach to existing
  C-a + t                       | display current time 
  C-a + w                       | show all windows & panes  
  C-a + !                       | break-out current pane  
  C-a + joinpane -t <#>         | merge window as a pane  
  
#### _copy text_  
    C-a + [        # copy mode 
    ctrl + space   # select text  
    ctrl + w       # copy
    C-a + ]        # paste

## vim
[vimrc](vimrc)  

  Command                       | Description
  ---------------------------   | -------------
  .                             | repeat prev cmd  
  :                             | browse prev cmds  
  q:                            | cmd history  
  q/                            | search cmd history  
  shift + %                     | jump to matching brace
  shift + ()                    | jump funcs  
  
  #### vim registers
  Command                       | Description
  ---------------------------   | -------------
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
  
  <!--- https://www.brianstorti.com/vim-registers/ --->
  
  
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
