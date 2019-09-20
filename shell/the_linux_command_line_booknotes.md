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
