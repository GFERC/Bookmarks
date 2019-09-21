### The reading notes for The Linux Command Line


## Chapter 16 Networking
Focus on the following commands - 
1. ping - Send an ICMP ECHO_REQUEST to network hosts
2. traceroute - Print the route packets trace to a network host
3. netstat - Print network connections, routing tables, interface statistics, masquerade connections, and multicast memberships
4. ftp - Internet file transfer program
5. wget - Non-interactive network downloader
6. ssh - OpenSSH SSH client (remote login program)
### Examining And Monitoring A Network
### ping
The ping command sends a special network packet called an IMCP ECHO_REQUEST to a specified host. Most network devices receiving
this packet will reply to it, allowing the network connection to be verified. It is possible to configure most network devices (including Linux hosts) to ignore these packets. This is usually done for security reasons, to partially obscure
a host from a potential attacker. It is also common for firewalls to be configured to block IMCP traffic.

E.g ping google.com

### traceroute
The traceroute program (some systems use the similar tracepath program instead) displays a listing of all the “hops” network traffic takes to get from the local system to a specified host.

E.g traceroute google.com

### netstat
The netstat program is used to examine various network settings and statistics

### ssh
SSH solves the two basic problems of secure communication with a remote host. First, it authenticates that the remote host is who it says it is (thus preventing so-called “man in the middle” attacks), and second, it encrypts all of the communications between the local and remote hosts.

SSH consists of two parts. An SSH server runs on the remote host, listening for incoming connections on port 22, while an SSH client is used on the local system to communicate with the remote server.

Example failure
```
[me@linuxbox ~]$ ssh remote-sys 
@ WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED! 
IT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!
Someone could be eavesdropping on you right now (man-in-the-middle attack)!
It is also possible that the RSA host key has just been changed.
The fingerprint for the RSA key sent by the remote host is 41:ed:7a:df:23:19:bf:3c:a5:17:bc:61:b3:7f:d9:bb.
Please contact your system administrator.
Add correct host key in /home/me/.ssh/known_hosts to get rid of this message.
Offending key in /home/me/.ssh/known_hosts:1
RSA host key for remote-sys has changed and you have requested strict checking.
Host key verification failed.
```
This message is caused by one of two possible situations. First, an attacker may be at- tempting a “man-in-the-middle” attack. This is rare, since everybody knows that ssh alerts the user to this. The more likely culprit is that the remote system has been changed somehow; for example, its operating system or SSH server has been reinstalled. In the in- terests of security and safety however, the first possibility should not be dismissed out of hand. Always check with the administrator of the remote system when this message occurs.

After it has been determined that the message is due to a benign cause, it is safe to correct the problem on the client side. This is done by using a text editor (vim perhaps) to re- move the obsolete key from the ~/.ssh/known_hosts file. In the example message above, we see this:

`Offending key in /home/me/.ssh/known_hosts:1`

This means that line one of the known_hosts file contains the offending key. Delete this line from the file, and the ssh program will be able to accept new authentication cre- dentials from the remote system.

ssh also allows us to execute a sin- gle command on a remote system. For example, to execute the free command on a re- mote host named remote-sys and have the results displayed on the local system :

ssh remote-sys free

ssh remote-sys 'ls *' > dirlist.txt

Notice the use of the single quotes in the command above. This is done because we do not want the pathname expansion performed on the local machine; rather, we want it to be performed on the remote system

### sftp
sftp has an important advantage over conventional ftp in that it does not require an FTP server to be running on the remote host. It only requires the SSH server. This means that any remote machine that can connect with the SSH client can also be used as a FTP-like server.

The SFTP protocol is supported by many of the graphical file managers found in Linux distributions. Using either Nautilus (GNOME) or Konqueror (KDE), we can enter a URI beginning with sftp:// into the location bar and operate on files stored on a remote system running an SSH server.

