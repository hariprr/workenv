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
  
#### _copy text_  
    C-a + [        # copy mode 
    CTRL + SPACE   # begin copy  
    CTRL + w       # copy into tmux buffer 
    C-a + ]        # paste in dest pane/window 

# vim
[vimrc](vimrc)  

  Command                       | Description
  ---------------------------   | -------------
  .                             | repeat prev command  
  
<!--- this is a comment ---> 
<!--- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # adds 6 space --->
