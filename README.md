**USAGE:**

It is necessary to have two servers, one in Iran and one in a foreign country

Run Ansible on your OS and make sure your SSH key is added to both servers.

Run the script after cloning the repository.

<sup>./runplaybook.sh</sup>

Enter your Iran IP server first

<sup>Enter Iran server's IP
63.23.56.96</sup>

The second step is to enter your foreign IP address

<sup>Enter outside server's IP
78.25.93.14</sup>

The Ansible playbooks try to install all dependencies on your servers and after they are finished, use Iran IP server on your Cisco OpenConnect or OpenVPN application and disable "Block Untrusted certificate".

Run the following command and enter a password to create a user on Ocserv

<sup>ocpasswd -c /etc/ocserv/passwd USERNAME</sup>
