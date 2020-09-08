# workenv
work environment setup

## ssh passwordless login 
ssh-keygen -t rsa -b 4096 -C "name" 
ls ~/.ssh/id_*  
output: /root/.ssh/id_rsa  /root/.ssh/id_rsa.pub  
ssh-copy-id username@server_ip_address  

# tmux  
[tmux.conf](tmux.conf)  
## commands
tmux source-file .tmux.conf  
tmux ls  
tmux n -s <new_session>  
tmux a -t <session_to_attch>  
<!--- display current time --->  
C-a t  
