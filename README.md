# workenv
work environment setup

## ssh passwordless login 
ssh-keygen -t rsa -b 4096 -C "name"  
ls ~/.ssh/id_*  
output: /root/.ssh/id_rsa  /root/.ssh/id_rsa.pub  
ssh-copy-id username@server_ip_address  

# tmux  
[tmux.conf](tmux.conf)  
tmux source-file .tmux.conf  

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
    CTRL + SPACE   # select text  
    CTRL + w       # copy
    C-a + ]        # paste

# vim
[vimrc](vimrc)  

  Command                       | Description
  ---------------------------   | -------------
  .                             | repeat prev cmd  
  :                             | browse prev cmds  
  q:                            | cmd history  
  q/                            | search cmd history  
  shift + %                     | jump to matching brace
  shift + ()                    | jump funcs  
  
  # vscode
[setup](vscode/setup.txt)  

  Command                       | Description
  ---------------------------   | -------------
  CMD + SHIFT + B               | build
  CMD + SHIFT + J               | terminal focus
  CMD + SHIFT + K               | editor focus
  CTRL + ~                      | close/open terminal  
  
<!--- this is a comment ---> 
<!--- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # adds 6 space --->
