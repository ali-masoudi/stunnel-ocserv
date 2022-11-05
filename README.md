**USAGE:**

It is necessary to have two servers, one in Iran and one in a foreign country

Run Ansible on your OS and make sure your SSH key is added to both servers.

Run the script after cloning the repository.

```bash
./runplaybook.sh
```

Enter your Iran IP server first

```bash
Enter Iran server's IP
63.23.56.96
```
The second step is to enter your foreign IP address

```bash
Enter outside server's IP
78.25.93.14
```
The Ansible playbooks try to install all dependencies on your servers and after they are finished, use **Iran IP server** on your Cisco OpenConnect or OpenVPN application and disable "Block Untrusted certificate".

Run the following command and enter a password to create a user on Ocserv

```bash
ocpasswd -c /etc/ocserv/passwd USERNAME
```
